package semanticAnalyzer;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.codeStorage.ASMOpcode;
import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Lextant;
import logging.PikaLogger;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import parseTree.nodeTypes.*;
import semanticAnalyzer.signatures.FunctionSignature;
import semanticAnalyzer.signatures.FunctionSignatures;
import semanticAnalyzer.types.ArrayType;
import semanticAnalyzer.types.LambdaType;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;
import symbolTable.Binding;
import symbolTable.NegativeMemoryAllocator;
import symbolTable.Scope;
import symbolTable.SymbolTable;
import tokens.LextantToken;
import tokens.Token;

import javax.naming.ldap.Control;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class SemanticAnalysisVisitor extends ParseNodeVisitor.Default {
	private static Labeller whileLabeller;


	public SemanticAnalysisVisitor () {
		super();
		whileLabeller = new Labeller("while");
	}

	@Override
	public void visitLeave(ParseNode node) {
		throw new RuntimeException("Node class unimplemented in SemanticAnalysisVisitor: " + node.getClass());
	}
	
	///////////////////////////////////////////////////////////////////////////
	// constructs larger than statements
	@Override
	public void visitEnter(ProgramNode node) {
		enterProgramScope(node);
	}
	public void visitLeave(ProgramNode node) {
		leaveScope(node);
	}
	public void visitEnter(BlockStatementNode node) {
		if(node.getParent() instanceof LambdaNode) {
			createProcedureScope(node);
		}
		else {
			enterSubscope(node);

			ParseNode parent = node.getParent();
			Token token = parent.getToken();
			if(parent instanceof ControlFlowNode && token.isLextant(Keyword.FOR) && node.getParent().child(2) == node) {
				addIterationBinding((ControlFlowNode) parent);
			}
		}
	}
	public void visitLeave(BlockStatementNode node) {
		leaveScope(node);
	}
	
	
	///////////////////////////////////////////////////////////////////////////
	// helper methods for scoping.
	private void enterProgramScope(ParseNode node) {
		node.getScope().enter();
	}	
	private void enterSubscope(ParseNode node) {
		Scope baseScope = node.getLocalScope();
		Scope scope = baseScope.createSubscope();
		node.setScope(scope);
		node.getScope().enter();
	}
	private void createProcedureScope(ParseNode node) {
		Scope baseScope = node.getLocalScope();
		Scope scope = baseScope.createProcedureScope();
		node.setScope(scope);
		node.getScope().enter();
	}
	private void leaveScope(ParseNode node) {
		node.getScope().leave();
	}
	
	///////////////////////////////////////////////////////////////////////////
	// statements and declarations
	@Override
	public void visitLeave(PrintStatementNode node) {
	}
	@Override
	public void visitEnter(FunctionNode node) {
		if(!(node.getParent() instanceof ProgramNode)) {
			logError("Function must be a child of ProgramNode");
		}
	}
	@Override
	public void visitEnter(LambdaNode node) {
		assert(node.nChildren() == 2);

		if(!(node.child(0) instanceof LambdaParamTypeNode)) {
			//todo error
		}
		else if(!(node.child(1) instanceof BlockStatementNode)) {
			//todo error
		}
		Scope parameterScope = node.getScope();
		parameterScope.enter();
	}
	@Override
	public void visitLeave(LambdaNode node) {
		Scope parameterScope = node.getScope();
		parameterScope.leave();
	}
	@Override
	public void visitLeave(LambdaParamTypeNode node) {
		assert(node.nChildren() > 0);
	}
	@Override
	public void visitLeave(ParameterNode node) {
		assert(node.nChildren() == 2);

		TypeNode typeNode = (TypeNode) node.child(0);
		Type paramType = typeNode.getType();

		IdentifierNode identifierNode = (IdentifierNode) node.child(1);
		identifierNode.setType(paramType);
		addBinding(identifierNode, paramType, false);
	}
	@Override
	public void visitLeave(ReturnNode node) {
		assert(node.nChildren() < 2);

		Scope localScope = node.getLocalScope();
		if(!(localScope.getAllocationStrategy() instanceof NegativeMemoryAllocator)) {
			returnScopeError(node);
			node.setType(PrimitiveType.ERROR);
			return;
		}

		Type expressionType = PrimitiveType.NULL;
		if(node.nChildren() == 1) {
			ParseNode expressionNode = node.child(0);
			expressionType = expressionNode.getType();
		}

		ParseNode lambdaNode = node;
		do {
			if(lambdaNode instanceof ProgramNode) {
				returnScopeError(node);
				node.setType(PrimitiveType.ERROR);
				return;
			}
			lambdaNode = lambdaNode.getParent();
		} while(!(lambdaNode instanceof LambdaNode));
		LambdaType lambdaType = (LambdaType) lambdaNode.getType();
		Type returnType = lambdaType.getReturnType();
		if(!expressionType.equivalent(returnType)) {
				returnTypeError(node);
				node.setType(PrimitiveType.ERROR);
				return;
		}
		node.setType(returnType);
		return;
	}
	@Override
	public void visitLeave(FunctionInvocationNode node) {
		assert(node.nChildren() > 0);

		if(!(node.child(0).getType() instanceof LambdaType)) {
			functionCallError(node);
			node.setType(PrimitiveType.ERROR);
			return;
		}
		LambdaType functionType = (LambdaType) node.child(0).getType();

		ParseNode parent = node.getParent();
		if ((!(parent instanceof CallNode)) && functionType.getReturnType() == PrimitiveType.NULL) {
			functionCallError(node);
			node.setType(PrimitiveType.ERROR);
			return;
		}

		List<Type> argumentTypes = new ArrayList<>();
		for(int i=1; i< node.nChildren(); i++) {
			argumentTypes.add(node.child(i).getType());
		}

		if(!matchLambdaDefinition(node, functionType, argumentTypes)) {
			functionCallError(node);
			node.setType(PrimitiveType.ERROR);
			return;
		}
		node.setType(functionType.getReturnType());
	}
	private boolean matchLambdaDefinition(ParseNode node, LambdaType lambdaDefinition, List<Type> argumentTypes) {
		List<Type> paramTypes = lambdaDefinition.getParamTypes();
		if(paramTypes.size() != argumentTypes.size()) return false;
		for(int i=0; i<argumentTypes.size(); i++) {
			Type argumentType = argumentTypes.get(i);
			Type paramType = paramTypes.get(i);
			if(!argumentType.equivalent(paramType)) {
				return false;
			}
		}
		return true;
	}

	@Override
	public void visitLeave(DeclarationNode node) {
		assert(node.nChildren() == 2);

		if(node.getParent() instanceof ProgramNode) {
			return;
		}

		IdentifierNode identifier = (IdentifierNode) node.child(0);
		ParseNode initializer = node.child(1);
		
		Type declarationType = initializer.getType();
		node.setType(declarationType);
		
		identifier.setType(declarationType);
		boolean isVar = node.getToken().isLextant(Keyword.VAR);

		if(node.isStatic()) {
			addStaticBinding(node, declarationType, isVar);
		} else {
			addBinding(identifier, declarationType, isVar);
		}
	}

	@Override
	public void visitLeave(AssignmentStatementNode node) {
		assert(node.nChildren() == 2);
		List types = List.of(node.child(0).getType(), node.child(1).getType());

		if(!(node.child(0) instanceof IdentifierNode) && !(node.child(0) instanceof IndexNode)) {
			typeCheckError(node, types);
			node.setType(PrimitiveType.ERROR);
			return;
		}

		if(node.child(0) instanceof  IdentifierNode) {
			checkConst((IdentifierNode) node.child(0));
		}

		ParseNode identifier = node.child(0);
		ParseNode expression = node.child(1);

		Type identifierType = identifier.getType();
		Type expressionType = expression.getType();

		if(identifierType.equivalent(expressionType)) {
			node.setType(identifierType);
			return;
		}

		if(expressionType.promotable(identifierType)) {
			promoteChild(node, identifierType, 1);
			node.setType(identifierType);
			return;
		}

		typeCheckError(node, Arrays.asList(identifierType, expressionType));
		node.setType(PrimitiveType.ERROR);
	}
	private void checkConst(IdentifierNode node) {
		if(!node.getBinding().getIsVar()) {
			assignToConstError(node);
		}
	}

	@Override
	public void visitLeave(DeallocNode node) {
		assert(node.nChildren() == 1);
		Type childType = node.child(0).getType();
		if(!(childType instanceof ArrayType) && childType != PrimitiveType.STRING) {
			typeCheckError(node, List.of(childType));
			node.setType(PrimitiveType.ERROR);
		}
		node.setType(PrimitiveType.NO_TYPE);
	}

	@Override
	public void visitLeave(ArrayNode node) {
		assert(node.nChildren() > 0);

		if(node.nChildren() == 2 && node.child(0) instanceof TypeNode) {
			ParseNode typeNode = node.child(0);
			if(typeNode.getType() == PrimitiveType.NULL) {
				nullArrayBaseError(node);
				node.setType(PrimitiveType.ERROR);
				return;
			}
			if(!checkChildIntPromotion(node, 1)) {
				allocNonIntError(node);
				node.setType(PrimitiveType.ERROR);
				return;
			}
			node.setType(new ArrayType(typeNode.getType()));
			return;
		}

		Type subType = nestedArrayFun(node);
		node.setType(new ArrayType(subType));

	}
	private boolean checkChildIntPromotion(ParseNode node, int index) {
		ParseNode sizeArg = node.child(index);

		if(sizeArg.getType() != PrimitiveType.INTEGER) {
			if(!sizeArg.getType().promotable(PrimitiveType.INTEGER)) {
				return false;
			}
			promoteChild(node, PrimitiveType.INTEGER, index);
		}
		return true;
	}
	private Type nestedArrayFun(ParseNode node) {
		List<Type> foundTypes = findArrayTypes(node);

		int lt = 0;
		int nlt = 0;

		//lambda type check
		for(Type t : foundTypes) {
			if(t instanceof LambdaType) lt++;
			else nlt++;
		}
		if(lt > 0 && nlt > 0) {
			typeCheckError(node, foundTypes);
			return PrimitiveType.ERROR;
		}
		else if(lt > 0 && nlt == 0) {
			for(Type t : foundTypes) {
				if(!t.equivalent(foundTypes.get(0))) {
					return PrimitiveType.ERROR;
				}
			}
			return foundTypes.get(0);
		}

		int at = 0;
		int pt = 0;

		//array type check
		for(Type t : foundTypes) {
			if(t instanceof ArrayType) at++;
			else pt++;
		}
		if(pt > 0 && at > 0) {
			typeCheckError(node, foundTypes);
			return PrimitiveType.ERROR;
		}

		else if(pt == 0 && at > 0) {
			for(int i=0; i<foundTypes.size(); i++) {
				for(int j=i; j<foundTypes.size(); j++) {
					if(!foundTypes.get(i).equivalent(foundTypes.get(j))) {
						typeCheckError(node, foundTypes);
						return PrimitiveType.ERROR;
					}
				}
			}
			return foundTypes.get(0);
		}
		return arrayInitFindType(node);
	}
	private Type arrayInitFindType(ParseNode node) {
		List<Type> foundTypes = findArrayTypes(node);
		if(foundTypes.size() == 0) {
			typeCheckError(node, foundTypes);
			return PrimitiveType.ERROR;
		}
		else if(foundTypes.size() == 1) {
			arrayPromote(node, foundTypes.get(0));
			return foundTypes.get(0);
		}

		Type subType = Type.lowestCommonPromotion(foundTypes);
		arrayPromote(node, subType);
		return subType;
	}
	private List<Type> findArrayTypes(ParseNode node) {
		List<Type> foundTypes = new ArrayList<>();
		for(ParseNode c : node.getChildren()){
			if(!foundTypes.contains(c.getType())) {
				foundTypes.add(c.getType());
			}
		}
		return foundTypes;
	}


	///////////////////////////////////////////////////////////////////////////
	// expressions
	@Override
	public void visitLeave(UnaryOperatorNode node) {
		assert(node.nChildren() == 1);
		ParseNode innerExpression = node.child(0);
		List<Type> innerType = Arrays.asList(innerExpression.getType());

		Lextant operator = operatorFor(node);
		FunctionSignatures signatures = FunctionSignatures.signaturesOf(operator);

		FunctionSignature match = findMatch(node, signatures, innerType);
		if(match == null) {
			typeCheckError(node, innerType);
			node.setType(PrimitiveType.ERROR);
			return;
		}
		node.setSignature(match);
	}
	private Lextant operatorFor(UnaryOperatorNode node) {
		LextantToken token = (LextantToken) node.getToken();
		return token.getLextant();
	}

	@Override
	public void visitLeave(BinaryOperatorNode node) {
		assert node.nChildren() == 2;
		ParseNode left  = node.child(0);
		ParseNode right = node.child(1);
		List<Type> childTypes = Arrays.asList(left.getType(), right.getType());
		
		Lextant operator = operatorFor(node);
		FunctionSignatures signatures = FunctionSignatures.signaturesOf(operator);

		FunctionSignature match = findMatch(node, signatures, childTypes);
		if(match == null) {
			typeCheckError(node, childTypes);
			node.setType(PrimitiveType.ERROR);
			return;
		}
		node.setSignature(match);
	}
	private Lextant operatorFor(BinaryOperatorNode node) {
		LextantToken token = (LextantToken) node.getToken();
		return token.getLextant();
	}

	private FunctionSignature findMatch(ParseNode node, FunctionSignatures signatures, List<Type> paramSignature) {
		FunctionSignature pureMatch = findPureMatch(signatures, paramSignature);
		if(pureMatch != null) {
			node.setType(pureMatch.resultType());
			return pureMatch;
		}

		FunctionSignature promotableMatch = findPromotableMatch(node, signatures, paramSignature);
		if(promotableMatch != null) {
			signaturePromote(node, promotableMatch.getParamTypes(), paramSignature);
			node.setType(promotableMatch.resultType());
			return promotableMatch;
		}

		return null;
	}
	private FunctionSignature findPureMatch(FunctionSignatures signatures, List<Type> paramSignature) {
		FunctionSignature pureMatch = signatures.acceptingSignature(paramSignature);
		if (pureMatch.accepts(paramSignature)) {//level 1
			return pureMatch;
		}
		return null;
	}
	private FunctionSignature findPromotableMatch(ParseNode node, FunctionSignatures signatures, List<Type> paramSignature) {
		for(int i=0; i<node.nChildren(); i++) {//level 2+3
			if(paramSignature.get(i) instanceof ArrayType) {
				return null;
			}

			List<FunctionSignature> promotableMatches = signatures.promotableSignatures(paramSignature, i);

			if(promotableMatches.size() == 1) {
				return promotableMatches.get(0);
			}

			if(promotableMatches.size() > 1) {
				List<Type> possibleParamTypes = new ArrayList<>();
				for(FunctionSignature f : promotableMatches) {
					possibleParamTypes.add(f.getParamTypes()[i]);
				}
				Type lowestCommonType = Type.lowestCommonPromotion(possibleParamTypes);

				for(FunctionSignature f : promotableMatches) {
					if(f.getParamTypes()[i] == lowestCommonType) {
						return f;
					}
				}
				return null;
			}
			//next operand
		}
		return null;
	}
	private void signaturePromote(ParseNode node, Type[] targetParams, List<Type> sourceParams) { //find mismatch and promote
		assert(node.nChildren() == targetParams.length);
		for(int i=0; i<targetParams.length; i++) {
			if(targetParams[i] != sourceParams.get(i)) {
				promoteChild(node, targetParams[i], i);
				break;
			}
		}
	}
	private void arrayPromote(ParseNode node, Type homogenizedType) { //make all children same type
		for(int i=0; i<node.nChildren(); i++) {
			Type type = node.child(i).getType();
			if(!type.equivalent(homogenizedType) && !(type instanceof ArrayType)) {
				promoteChild(node, homogenizedType, i);
			}
		}
	}
	private void promoteChild(ParseNode node, Type identifierType, int child) { //promote by specific index
		ParseNode innerExpression = node.child(child);
		node.replaceChild(node.child(child), CastExpressionNode.withChildren(identifierType, innerExpression));
		visitLeave((CastExpressionNode) node.child(child));
	}

	@Override
	public void visitLeave(ControlFlowNode node) {
		if(node.getToken().isLextant(Keyword.FOR)) {
			visitForStatement(node);
			return;
		}
		ParseNode condition = node.child(0);
		if(condition.getType() != PrimitiveType.BOOLEAN) {
			conditionError(node);
			node.setType(PrimitiveType.ERROR);
		}
	}

	private void visitForStatement(ControlFlowNode node) {
		//work was done before block statement child, this just checks for errors
		assert node.nChildren() == 3;
		if(
			!(node.child(0) instanceof IdentifierNode) ||
			(!(node.child(1).getType() instanceof ArrayType) && !(node.child(1).getType() == PrimitiveType.STRING))  ||
			!(node.child(2) instanceof BlockStatementNode) ||
			!node.getIteration().isLextant(Keyword.INDEX, Keyword.ELEM)
		) {
			forLoopError(node);
			node.setType(PrimitiveType.ERROR);
			return;
		}
	}

	@Override
	public void visit(BreakFlowNode node) {
		Token x;
		ParseNode controlFlowNode = node;
		do {
			if(controlFlowNode instanceof ProgramNode) {
				returnScopeError(node);
				node.setType(PrimitiveType.ERROR);
				return;
			}
			controlFlowNode = controlFlowNode.getParent();

			if(controlFlowNode instanceof ControlFlowNode && ( controlFlowNode.getToken().isLextant(Keyword.WHILE, Keyword.FOR))) {
				break;
			}
		} while(true);

		node.controlNode = (ControlFlowNode) controlFlowNode;
		node.breakLabel = node.controlNode.getBreakStatement();
		node.continueLabel = node.controlNode.getContinueStatement();
		node.indexLabel = node.controlNode.labeller.newLabel("index");
	}

	@Override
	public void visitLeave(IndexNode node) {
		assert node.nChildren() == 2 || node.nChildren() == 3;

		ParseNode base = node.child(0);

		if(!checkChildIntPromotion(node, 1)) {
			IndexError(node);
			node.setType(PrimitiveType.ERROR);
			return;
		}

		if(base.getType() instanceof ArrayType && node.nChildren() == 2) {
			Type arraySubtype = ((ArrayType) base.getType()).getSubtype();
			node.setType(arraySubtype);
		}
		else if (base.getType() == PrimitiveType.STRING) {
			if(node.nChildren() == 2) {
				node.setType(PrimitiveType.CHARACTER);
			}
			else {
				if(!checkChildIntPromotion(node, 2)) {
					IndexError(node);
					node.setType(PrimitiveType.ERROR);
					return;
				}
				node.setType(PrimitiveType.STRING);
			}
		}
		else {
			IndexError(node);
			node.setType(PrimitiveType.ERROR);
		}
	}
	
	@Override
	public void visitLeave(CastExpressionNode node) {
		assert node.nChildren() == 2;
		ParseNode typeExpression = node.child(0);
		ParseNode innerExpression = node.child(1);

		List<Type> innerType = Arrays.asList(innerExpression.getType());
		
		FunctionSignatures signatures = FunctionSignatures.signaturesOf(typeExpression.getType());
		FunctionSignature signature = signatures.acceptingSignature(innerType);
		
		if(signature.accepts(innerType)) {
			node.setType(signature.resultType());
			node.setSignature(signature);
		}
		else if((typeExpression.getType() instanceof ArrayType && innerExpression.getType() instanceof ArrayType) &&
				(innerExpression.getType().equivalent(typeExpression.getType()))) {
			//array cast to itself
			node.setType(innerExpression.getType());
			node.setSignature(new FunctionSignature(ASMOpcode.Nop, innerExpression.getType(), innerExpression.getType()));
		}
		else {
			castTypeError(node.getType(), innerType.get(0));
			node.setType(PrimitiveType.ERROR);
		}
		assert(true);
	}


	///////////////////////////////////////////////////////////////////////////
	// simple leaf nodes
	@Override
	public void visit(BooleanConstantNode node) {
		node.setType(PrimitiveType.BOOLEAN);
	}
	@Override
	public void visit(CharacterConstantNode node) {
		node.setType(PrimitiveType.CHARACTER);
	}
	@Override
	public void visit(ErrorNode node) {
		node.setType(PrimitiveType.ERROR);
	}
	@Override
	public void visit(IntegerConstantNode node) {
		node.setType(PrimitiveType.INTEGER);
	}
	@Override
	public void visit(StringConstantNode node) {
		node.setType(PrimitiveType.STRING);
	}
	@Override
	public void visit(FloatingConstantNode node) {
		node.setType(PrimitiveType.FLOATING);
	}

	///////////////////////////////////////////////////////////////////////////
	// IdentifierNodes, with helper methods
	@Override
	public void visit(IdentifierNode node) {
		if(!isBeingDeclared(node) && !isIteration(node)) {
			Binding binding = node.findVariableBinding();
			
			node.setType(binding.getType());
			node.setBinding(binding);
		}
		// else parent DeclarationNode does the processing.
	}
	private boolean isBeingDeclared(IdentifierNode node) {
		ParseNode parent = node.getParent();
		return ((parent instanceof DeclarationNode) && (node == parent.child(0)) || parent instanceof ParameterNode );
	}
	private boolean isIteration(IdentifierNode node) {
		ParseNode parent = node.getParent();
		return (parent instanceof ControlFlowNode && parent.getToken().isLextant(Keyword.FOR) && node == parent.child(0));
	}

	private void addIterationBinding(ControlFlowNode node) {
		IdentifierNode identifier = (IdentifierNode)node.child(0);
		Type type = identifier.getType();
		Scope scope = node.child(2).getScope();
		Binding binding = scope.createBinding(identifier, type, false);
		identifier.setBinding(binding);
	}

	private void addStaticBinding(DeclarationNode node, Type type, boolean isVar) {
		assert node.child(0) instanceof IdentifierNode;
		IdentifierNode identifierNode = (IdentifierNode) node.child(0);

		Scope localScope = identifierNode.getLocalScope();
		Scope globalScope = localScope.getGlobalScope();

		Binding binding = globalScope.createStaticBinding(identifierNode, type, isVar, node.getAnonymousGlobalSymbol(), localScope);
		identifierNode.setBinding(binding);
	}

	private void addBinding(IdentifierNode identifierNode, Type type, boolean isVar) {
		Scope scope = identifierNode.getLocalScope();
		Binding binding = scope.createBinding(identifierNode, type, isVar);
		identifierNode.setBinding(binding);
	}
	
	///////////////////////////////////////////////////////////////////////////
	// error logging/printing

	private void IndexError(ParseNode node) {
		Token token = node.getToken();

		logError("Indexing incorrect types" + token.getLocation());
	}
	private void assignToConstError(ParseNode node) {
		Token token = node.getToken();
		
		logError("attempt to assign to const-declared variable at " + token.getLocation());	
	}
	private void allocNonIntError(ParseNode node) {
		Token token = node.getToken();

		logError("attempt to allocate array with non int size at " + token.getLocation());
	}
	private void conditionError(ParseNode node) {
		Token token = node.getToken();

		logError("condition must have type boolean at " + token.getLocation());
	}

	private void typeCheckError(ParseNode node, List<Type> operandTypes) {
		Token token = node.getToken();
		
		logError("operator " + token.getLexeme() + " not defined for types " 
				 + operandTypes  + " at " + token.getLocation());	
	}
	private void castTypeError(Type newType, Type oldType) {
		logError("invalid cast from " + oldType + " to " + newType );
	}
	private void logError(String message) {
		PikaLogger log = PikaLogger.getLogger("compiler.semanticAnalyzer");
		log.severe(message);
	}

	private void returnTypeError(ParseNode node) {
		Token token = node.getToken();
		//Type expectedType = node.getLocalScope();
		Type expectedType = PrimitiveType.ERROR;
		Type actualType = PrimitiveType.NULL;
		try {
			node.child(0).getType();
		}
		catch(Exception e) {
			//do nothing
		}
		logError("Expected return type: " + expectedType + " Actual return type: " + actualType + " at " + token.getLocation());
	}

	private void returnScopeError(ParseNode node) {
		Token token = node.getToken();
		logError("Return may only be called from procedure scope at " + token.getLocation());
	}

	private void functionCallError(ParseNode node) {
		Token token = node.getToken();
		logError("Function call error at " + token.getLocation());
	}

	private void nullArrayBaseError(ParseNode node) {
		Token token = node.getToken();
		logError("Arrays can't be initialized with NULL type at " + token.getLocation());
	}

	private void forLoopError(ParseNode node) {
		Token token = node.getToken();
		logError("for loop error");
	}
}