package semanticAnalyzer;

import java.util.*;

import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Lextant;
import logging.PikaLogger;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import parseTree.nodeTypes.*;
import semanticAnalyzer.signatures.FunctionSignature;
import semanticAnalyzer.signatures.FunctionSignatures;
import semanticAnalyzer.types.ArrayType;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;
import symbolTable.Binding;
import symbolTable.Scope;
import tokens.LextantToken;
import tokens.Token;

class SemanticAnalysisVisitor extends ParseNodeVisitor.Default {
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
		enterSubscope(node);
	}
	public void visitLeave(BlockStatementNode node) {
		leaveScope(node);
	}
	
	
	///////////////////////////////////////////////////////////////////////////
	// helper methods for scoping.
	private void enterProgramScope(ParseNode node) {
		Scope scope = Scope.createProgramScope();
		node.setScope(scope);
	}	
	private void enterSubscope(ParseNode node) {
		Scope baseScope = node.getLocalScope();
		Scope scope = baseScope.createSubscope();
		node.setScope(scope);
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
	public void visitLeave(DeclarationNode node) {
		IdentifierNode identifier = (IdentifierNode) node.child(0);
		ParseNode initializer = node.child(1);
		
		Type declarationType = initializer.getType();
		node.setType(declarationType);
		
		identifier.setType(declarationType);
		boolean isVar = node.getToken().isLextant(Keyword.VAR);
		addBinding(identifier, declarationType, isVar);
	}
	@Override
	public void visitLeave(AssignmentStatementNode node) {
		IdentifierNode identifier = (IdentifierNode) node.child(0);
		ParseNode expression = node.child(1);

		// check identifier is not const
		if(!identifier.getBinding().getIsVar()) {
			assignToConstError(node);
		}

		Type declarationType = identifier.getType();
		Type expressionType = expression.getType();

		// check to see if type of identifier is same as type of expression
		if(!declarationType.equivalent(expressionType)) {
			//check to see if promotable
			if(!expressionType.promotable(identifier.getType())) {
				typeCheckError(node, Arrays.asList(declarationType, expressionType));
			}
			try {
				promote(node, declarationType, 1);
			} catch (Exception e) {
				typeCheckError(node, Arrays.asList(declarationType, expressionType));
			}
		}

		node.setType(declarationType);
	}

	@Override
	public void visitLeave(ArrayNode node) {
		assert node.nChildren() > 0;
		List<Type> foundTypes = findArrayTypes(node);

		if(foundTypes.size() == 0) {
			typeCheckError(node, foundTypes);
			node.setType(PrimitiveType.ERROR);
		}
		else if(foundTypes.size() == 1) {
			ArrayType arrayType = new ArrayType(foundTypes.get(0));
			node.setType(arrayType);
		}
		else {
			Type commonType = Type.lowestCommonPromotion(foundTypes);
			ArrayType arrayType = new ArrayType(commonType);
			try {
				promote(node, commonType);
				node.setType(arrayType);
			}
			catch(Exception e) {
				typeCheckError(node, foundTypes);
				node.setType(PrimitiveType.ERROR);
			}

		}

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
		assert node.nChildren() == 1;
		ParseNode innerExpression = node.child(0);
		List<Type> innerType = Arrays.asList(innerExpression.getType());

		Lextant operator = operatorFor(node);
		FunctionSignatures signatures = FunctionSignatures.signaturesOf(operator);

		FunctionSignature pureMatch = findPureMatch(node, signatures, innerType);
		if(pureMatch != null) {
			node.setType(pureMatch.resultType());
			node.setSignature(pureMatch);
			return;
		}

		FunctionSignature promotableMatch = findPromotableMatch(node, signatures, innerType);
		try {
			promote(node, promotableMatch.getParamTypes(), innerType);
			node.setType(promotableMatch.resultType());
			node.setSignature(promotableMatch);
			return;
		}
		catch (Exception e) {
			e.printStackTrace();
		}

		typeCheckError(node, innerType);
		node.setType(PrimitiveType.ERROR);
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

		FunctionSignature pureMatch = findPureMatch(node, signatures, childTypes);
		if(pureMatch != null) {
			node.setType(pureMatch.resultType());
			node.setSignature(pureMatch);
			return;
		}

		FunctionSignature promotableMatch = findPromotableMatch(node, signatures, childTypes);
		try {
			promote(node, promotableMatch.getParamTypes(), childTypes);
			node.setType(promotableMatch.resultType());
			node.setSignature(promotableMatch);
			return;
		}
		catch (Exception e) {
			e.printStackTrace();
		}

		typeCheckError(node, childTypes);
		node.setType(PrimitiveType.ERROR);
	}
	private Lextant operatorFor(BinaryOperatorNode node) {
		LextantToken token = (LextantToken) node.getToken();
		return token.getLextant();
	}

	private FunctionSignature findPureMatch(ParseNode node, FunctionSignatures signatures, List<Type> paramSignature) {
		FunctionSignature pureMatch = signatures.acceptingSignature(paramSignature);
		if (pureMatch.accepts(paramSignature)) {//level 1
			return pureMatch;
		}
		return null;
	}
	private FunctionSignature findPromotableMatch(ParseNode node, FunctionSignatures signatures, List<Type> paramSignature) {
		for(int i=0; i<node.nChildren(); i++) {//level 2+3
			List<FunctionSignature> promotableMatches = signatures.promotableSignatures(paramSignature, i);

			if(promotableMatches.size() > 1) {
				return promotableMatches.get(0);
				//todo when we implement function sigs with fi -> i, if -> i kinda sigs, we'll implement this
			}
			else if(promotableMatches.size() == 1) {
				return promotableMatches.get(0);
			}
			//move to next operand if there is one
		}
		return null;
	}
	private void promote(ParseNode node, Type[] targetParams, List<Type> sourceParams) throws Exception{ //find mismatch and promote
		assert(node.nChildren() == targetParams.length);
		for(int i=0; i<targetParams.length; i++) {
			if(targetParams[i] != sourceParams.get(i)) {
				promote(node, targetParams[i], i);
				break;
			}
		}
	}
	private void promote(ParseNode node, Type homogenizedType) throws Exception{ //make all children same type
		for(int i=0; i<node.nChildren(); i++) {
			if(node.child(i).getType() != homogenizedType) {
				promote(node, homogenizedType, i);
				break;
			}
		}
	}
	private void promote(ParseNode node, Type identifierType, int child) throws Exception{ //promote by specific index
		ParseNode innerExpression = node.child(child);
		Token artificialCast = LextantToken.artificial(innerExpression.getToken(), getCast(identifierType));
		node.replaceChild(node.child(child), CastExpressionNode.withChildren(artificialCast, innerExpression));
		visitLeave((CastExpressionNode) node.child(child));
	}
	private Lextant getCast(Type type) throws Exception {
		if(type == PrimitiveType.INTEGER) {
			return Keyword.INT;
		}
		if(type == PrimitiveType.FLOATING) {
			return Keyword.FLOAT;
		}
//		if(type == PrimitiveType.RATIONAL) {
//			return Keyword.RATIONAL;
//		}
		throw new Exception("getCast FAILURE");
	}

	@Override
	public void visitLeave(ArrayIndexNode node) {
		assert node.nChildren() == 2;
		ParseNode base = node.child(0);
		ParseNode index = node.child(1);

		if(!(base.getType() instanceof ArrayType)) {
			node.setType(PrimitiveType.ERROR);
		}

		if(index.getType() != PrimitiveType.INTEGER) {
			node.setType(PrimitiveType.ERROR);
		}

		//todo function sig for indexing
	}
	
	@Override
	public void visitLeave(CastExpressionNode node) {
		assert node.nChildren() == 1;
		ParseNode innerExpression = node.child(0);
		List<Type> innerType = Arrays.asList(innerExpression.getType());
		
		Lextant newType = newTypeFor(node);
		FunctionSignatures signatures = FunctionSignatures.signaturesOf(newType);
		FunctionSignature signature = signatures.acceptingSignature(innerType);
		
		if(signature.accepts(innerType)) {
			node.setType(signature.resultType());
			node.setSignature(signature);
		}
		else {
			castTypeError(node.getType(), innerType.get(0));
			node.setType(PrimitiveType.ERROR);
		}
		assert(true);
	}
	private Lextant newTypeFor(CastExpressionNode node) {
		LextantToken token = (LextantToken) node.getToken();
		return token.getLextant();
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
		if(!isBeingDeclared(node)) {		
			Binding binding = node.findVariableBinding();
			
			node.setType(binding.getType());
			node.setBinding(binding);
		}
		// else parent DeclarationNode does the processing.
	}
	private boolean isBeingDeclared(IdentifierNode node) {
		ParseNode parent = node.getParent();
		return (parent instanceof DeclarationNode) && (node == parent.child(0));
	}
	private void addBinding(IdentifierNode identifierNode, Type type, boolean isVar) {
		Scope scope = identifierNode.getLocalScope();
		Binding binding = scope.createBinding(identifierNode, type, isVar);
		identifierNode.setBinding(binding);
	}
	
	///////////////////////////////////////////////////////////////////////////
	// error logging/printing
	
	private void assignToConstError(ParseNode node) {
		Token token = node.getToken();
		
		logError("attempt to assign to const-declared variable at " + token.getLocation());	
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
}