package asmCodeGenerator;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMOpcode;
import asmCodeGenerator.runtime.MemoryManager;
import asmCodeGenerator.runtime.RunTime;
import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Lextant;
import lexicalAnalyzer.Punctuator;
import parseTree.*;
import parseTree.nodeTypes.*;
import semanticAnalyzer.types.ArrayType;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;
import symbolTable.Binding;
import symbolTable.Scope;
import static asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType.*;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.runtime.MemoryManager.MEM_MANAGER_ALLOCATE;
import static asmCodeGenerator.runtime.MemoryManager.codeForInitialization;

// do not call the code generator if any errors have occurred during analysis.
public class ASMCodeGenerator {
	ParseNode root;

	public static ASMCodeFragment generate(ParseNode syntaxTree) {
		ASMCodeGenerator codeGenerator = new ASMCodeGenerator(syntaxTree);
		return codeGenerator.makeASM();
	}
	public ASMCodeGenerator(ParseNode root) {
		super();
		this.root = root;
	}
	
	public ASMCodeFragment makeASM() {
		ASMCodeFragment code = new ASMCodeFragment(GENERATES_VOID);

		code.append( RunTime.getEnvironment() );
		code.append( globalVariableBlockASM() );
		code.append( programASM() );
		code.append( MemoryManager.codeForAfterApplication() );
		
		return code;
	}
	private ASMCodeFragment globalVariableBlockASM() {
		assert root.hasScope();
		Scope scope = root.getScope();
		int globalBlockSize = scope.getAllocatedSize();
		
		ASMCodeFragment code = new ASMCodeFragment(GENERATES_VOID);
		code.add(DLabel, RunTime.GLOBAL_MEMORY_BLOCK);
		code.add(DataZ, globalBlockSize);
		return code;
	}
	private ASMCodeFragment programASM() {
		ASMCodeFragment code = new ASMCodeFragment(GENERATES_VOID);
		
		code.add(    Label, RunTime.MAIN_PROGRAM_LABEL);
		code.append(MemoryManager.codeForInitialization());
		code.append( programCode());
		code.add(    Halt );
		
		return code;
	}
	private ASMCodeFragment programCode() {
		CodeVisitor visitor = new CodeVisitor();
		root.accept(visitor);
		return visitor.removeRootCode(root);
	}


	protected class CodeVisitor extends ParseNodeVisitor.Default {
		private Map<ParseNode, ASMCodeFragment> codeMap;
		ASMCodeFragment code;
		
		public CodeVisitor() {
			codeMap = new HashMap<ParseNode, ASMCodeFragment>();
		}


		////////////////////////////////////////////////////////////////////
        // Make the field "code" refer to a new fragment of different sorts.
		private void newAddressCode(ParseNode node) {
			code = new ASMCodeFragment(GENERATES_ADDRESS);
			codeMap.put(node, code);
		}
		private void newValueCode(ParseNode node) {
			code = new ASMCodeFragment(GENERATES_VALUE);
			codeMap.put(node, code);
		}
		private void newVoidCode(ParseNode node) {
			code = new ASMCodeFragment(GENERATES_VOID);
			codeMap.put(node, code);
		}

	    ////////////////////////////////////////////////////////////////////
        // Get code from the map.
		private ASMCodeFragment getAndRemoveCode(ParseNode node) {
			ASMCodeFragment result = codeMap.get(node);
			codeMap.remove(result);
			return result;
		}
	    public  ASMCodeFragment removeRootCode(ParseNode tree) {
			return getAndRemoveCode(tree);
		}		
		ASMCodeFragment removeValueCode(ParseNode node) {
			ASMCodeFragment frag = getAndRemoveCode(node);
			makeFragmentValueCode(frag, node);
			return frag;
		}		
		private ASMCodeFragment removeAddressCode(ParseNode node) {
			ASMCodeFragment frag = getAndRemoveCode(node);
			assert frag.isAddress();
			return frag;
		}		
		ASMCodeFragment removeVoidCode(ParseNode node) {
			ASMCodeFragment frag = getAndRemoveCode(node);
			assert frag.isVoid();
			return frag;
		}
		
	    ////////////////////////////////////////////////////////////////////
        // convert code to value-generating code.
		private void makeFragmentValueCode(ASMCodeFragment code, ParseNode node) {
			assert !code.isVoid();
			
			if(code.isAddress()) {
				turnAddressIntoValue(code, node);
			}	
		}
		private void turnAddressIntoValue(ASMCodeFragment code, ParseNode node) {
			if(node.getType() == PrimitiveType.INTEGER) {
				code.add(LoadI);
			}
			else if(node.getType() == PrimitiveType.FLOATING) {
				code.add(LoadF);
			}
			else if(node.getType() == PrimitiveType.BOOLEAN) {
				code.add(LoadC);
			}	
			else if(node.getType() == PrimitiveType.CHARACTER) {
				code.add(LoadC);
			}
			else if(node.getType() == PrimitiveType.STRING || node.getType() instanceof ArrayType) {
				code.add(LoadI);
			}
			else {
				assert false : "node " + node;
			}
			code.markAsValue();
		}
		
	    ////////////////////////////////////////////////////////////////////
        // ensures all types of ParseNode in given AST have at least a visitLeave	
		public void visitLeave(ParseNode node) {
			assert false : "node " + node + " not handled in ASMCodeGenerator";
		}
		
		
		
		///////////////////////////////////////////////////////////////////////////
		// constructs larger than statements
		public void visitLeave(ProgramNode node) {
			newVoidCode(node);
			for(ParseNode child : node.getChildren()) {
				ASMCodeFragment childCode = removeVoidCode(child);
				code.append(childCode);
			}
		}
		public void visitLeave(BlockStatementNode node) {
			newVoidCode(node);
			for(ParseNode child : node.getChildren()) {
				ASMCodeFragment childCode = removeVoidCode(child);
				code.append(childCode);
			}
		}

		///////////////////////////////////////////////////////////////////////////
		// statements and declarations

		public void visitLeave(PrintStatementNode node) {
			newVoidCode(node);
			new PrintStatementGenerator(code, this).generate(node);	
		}
		

		public void visitLeave(DeclarationNode node) {
			newVoidCode(node);
			ASMCodeFragment lvalue = removeAddressCode(node.child(0));	
			ASMCodeFragment rvalue = removeValueCode(node.child(1));
			
			code.append(lvalue);
			code.append(rvalue);
			
			Type type = node.getType();
			code.add(opcodeForStore(type));
		}
		private ASMOpcode opcodeForStore(Type type) {
			if(type == PrimitiveType.INTEGER) {
				return StoreI;
			}
			if(type == PrimitiveType.FLOATING) {
				return StoreF;
			}
			if(type == PrimitiveType.BOOLEAN) {
				return StoreC;
			}
			if(type == PrimitiveType.CHARACTER) {
				return StoreC;
			}
			if(type == PrimitiveType.STRING || type instanceof ArrayType) {
				return StoreI;
			}
			assert false: "Type " + type + " unimplemented in opcodeForStore()";
			return null;
		}
		
		public void visitLeave(AssignmentStatementNode node) {
			newVoidCode(node);
			ASMCodeFragment lvalue = removeAddressCode(node.child(0));
			ASMCodeFragment rvalue = removeValueCode(node.child(1));
			
			code.append(lvalue);
			code.append(rvalue);
			
			Type type = node.getType();
			code.add(opcodeForStore(type));
		}

		public void visitLeave(ControlFlowNode node) {
			Lextant controlFlowStatement = node.getControlFlowStatement();
			if(controlFlowStatement == Keyword.IF) {
				visitIfStatement(node);
			}
			else if(controlFlowStatement == Keyword.WHILE) {
				visitWhileStatement(node);
			}
			else {
				throw new Error("Compiler error: control flow statement");
			}
		}
		private void visitWhileStatement(ControlFlowNode node) {
			assert(node.nChildren() == 2);
			newVoidCode(node);

			ASMCodeFragment condition = removeValueCode(node.child(0));
			ASMCodeFragment innerExpression = removeVoidCode(node.child(1));

			Labeller labeller = new Labeller("while-statement");
			String conditionLabel = labeller.newLabel("check-condition");
			String endLabel = labeller.newLabel("end");

			code.add(Label, conditionLabel);
			code.append(condition);
			code.add(JumpFalse, endLabel);
			code.append(innerExpression);
			code.add(Jump, conditionLabel);
			code.add(Label, endLabel);
		}
		private void visitIfStatement(ControlFlowNode node) {
			newVoidCode(node);

			ASMCodeFragment condition = removeValueCode(node.child(0));
			ASMCodeFragment innerExpression = removeVoidCode(node.child(1));

			Labeller labeller = new Labeller("while-statement");
			String conditionLabel = labeller.newLabel("check-condition");
			String elseLabel = labeller.newLabel("else-condition");
			String endLabel = labeller.newLabel("end");

			code.add(Label, conditionLabel);
			code.append(condition);
			code.add(JumpFalse, elseLabel);
			code.append(innerExpression);
			code.add(Jump, endLabel);
			code.add(Label, elseLabel);
			if(node.nChildren() == 3) {
				ASMCodeFragment elseExpression = removeVoidCode(node.child(2));
				code.append(elseExpression);
			}
			code.add(Label, endLabel);
		}


		///////////////////////////////////////////////////////////////////////////
		// expressions
		public void visitLeave(UnaryOperatorNode node) {
			Lextant operator = node.getOperator();

			if(operator == Punctuator.BOOLEAN_NOT) {
				visitBooleanNotOperator(node);
			}
			else if(operator == Keyword.LENGTH) {
				visitLengthOperator(node);
			}
		}

		private void visitBooleanNotOperator(UnaryOperatorNode node) {
			newValueCode(node);
			ASMCodeFragment innerCode = removeValueCode(node.child(0));

			code.append(innerCode);

			Object variant = node.getSignature().getVariant();
			if(variant instanceof ASMOpcode) {
				ASMOpcode opcode = (ASMOpcode)variant;
				code.add(opcode);
			}
			else {
				throw new Error("Compiler error: unary operation failed");
			}
		}
		private void visitLengthOperator(UnaryOperatorNode node) {
			newValueCode(node);
			ASMCodeFragment innerCode = removeAddressCode(node.child(0));

			code.append(innerCode); //[base]
			code.append(Record.getHeader(Record.ARRAY_LENGTH_OFFSET));

		}

		public void visitLeave(BinaryOperatorNode node) {
			Lextant operator = node.getOperator();

			if(operator == Punctuator.BOOLEAN_OR) {
				//handle this in normal binary op, change opcode to fragment manufacturer
				visitBooleanOrOperatorNode(node, operator);
			}
			else if(isComparisonOperator(operator)) {
				visitComparisonOperatorNode(node, operator);
			}
			else {
				visitNormalBinaryOperatorNode(node);
			}
		}

		private void visitBooleanOrOperatorNode(BinaryOperatorNode node, Lextant operator) {
			ASMCodeFragment arg1 = removeValueCode(node.child(0));
			ASMCodeFragment arg2 = removeValueCode(node.child(1));

			Labeller labeller = new Labeller("bool-or");
			String arg1Label = labeller.newLabel("arg1");
			String arg2Label = labeller.newLabel("arg2");
			String trueLabel = labeller.newLabel("true-condition");
			String falseLabel = labeller.newLabel("false-condition");
			String endLabel = labeller.newLabel("end");

			newValueCode(node);
			code.add(Label, arg1Label);
			code.append(arg1);
			code.add(JumpTrue, trueLabel);
			code.add(PushI, 0);
			code.add(Label, arg2Label);
			code.append(arg2);
			code.add(Or);
			code.add(JumpTrue, trueLabel);
			code.add(Jump, falseLabel);
			code.add(Label, trueLabel);
			code.add(PushI, 1);
			code.add(Jump, endLabel);
			code.add(Label, falseLabel);
			code.add(PushI, 0);
			code.add(Label, endLabel);
		}
			
		private boolean isComparisonOperator(Lextant operator) {
			return operator == Punctuator.GREATER || operator == Punctuator.LESSER
					|| operator == Punctuator.GREATEREQUAL || operator == Punctuator.LESSEREQUAL
					|| operator == Punctuator.EQUAL || operator == Punctuator.NOTEQUAL;
		}
		
		private void visitComparisonOperatorNode(BinaryOperatorNode node,
				Lextant operator) {

			ASMCodeFragment arg1 = removeValueCode(node.child(0));
			ASMCodeFragment arg2 = removeValueCode(node.child(1));

			
			Labeller labeller = new Labeller("compare");
			
			String startLabel = labeller.newLabel("arg1");
			
			String arg2Label  = labeller.newLabel("arg2");
			String subLabel   = labeller.newLabel("sub");
			String trueLabel  = labeller.newLabel("true");
			String falseLabel = labeller.newLabel("false");
			String joinLabel  = labeller.newLabel("join");
			
			ASMCodeFragment comparisonLogic = ComparisonCodeGenerator.generate(node, operator, trueLabel, falseLabel);
			
	
			newValueCode(node);
			code.add(Label, startLabel);
			code.append(arg1);
			code.add(Label, arg2Label);
			code.append(arg2);
			code.add(Label, subLabel);
			
			code.append(comparisonLogic);

			code.add(Label, trueLabel);
			code.add(PushI, 1);
			code.add(Jump, joinLabel);
			code.add(Label, falseLabel);
			code.add(PushI, 0);
			code.add(Jump, joinLabel);
			code.add(Label, joinLabel);

		}
		
		private void visitNormalBinaryOperatorNode(BinaryOperatorNode node) {
			newValueCode(node);
			ASMCodeFragment arg1 = removeValueCode(node.child(0));
			ASMCodeFragment arg2 = removeValueCode(node.child(1));
			
			code.append(arg1);
			code.append(arg2);
			
			Object variant = node.getSignature().getVariant();
			if(variant instanceof ASMOpcode) {
				ASMOpcode opcode = (ASMOpcode)variant;
				code.add(opcode);
			}
			else if(variant instanceof SimpleCodeGenerator) {
				SimpleCodeGenerator generator = (SimpleCodeGenerator) variant;
				ASMCodeFragment fragment = generator.generate(node);
				code.append(fragment);
				
				if(fragment.isAddress()) {
					code.markAsAddress();
				}
			}
			else {
				throw new Error("Compiler error: binary operation failed");
			}
		}
		private ASMOpcode opcodeForOperator(Lextant lextant) {
			assert(lextant instanceof Punctuator);
			Punctuator punctuator = (Punctuator)lextant;
			switch(punctuator) {
			case ADD: 	   		return Add;				// type-dependent!
			case MULTIPLY: 		return Multiply;		// type-dependent!
			default:
				assert false : "unimplemented operator in opcodeForOperator";
			}
			return null;
		}

		public void visitLeave(ArrayNode node) {
			newValueCode(node);

			Type type = ((ArrayType)node.getType()).getSubtype();
			int length = node.nChildren();

			List<ASMCodeFragment> childValueCodes = new ArrayList<>();
			for(ParseNode c : node.getChildren()) {
				childValueCodes.add(removeValueCode(c));
			}

//			code.append(Record.createArrayRecord(type.getSize(), length, type.isReference()));
			//todo make sure we store reference in type
			code.append(Record.createArrayRecord(type.getSize(), length, false));
			code.append(Record.initializeArray(childValueCodes));

		}

		public void visitLeave(ArrayIndexNode node) {
			assert(node.nChildren() == 2);
			newValueCode(node);

			ASMCodeFragment arrayCode = removeValueCode(node.child(0));
			ASMCodeFragment indexCode = removeValueCode(node.child(1));

			code.append(arrayCode);
			code.append(Record.getElement(indexCode));
		}

		
		
		public void visitLeave(CastExpressionNode node) {
			newValueCode(node);
			ASMCodeFragment innerExpression = removeValueCode(node.child(0));
			Type oldType = node.child(0).getType();
			Type newType = node.getType();
			
			code.append(innerExpression);
			
			Object variant = node.getSignature().getVariant();
			if(variant instanceof ASMOpcode) {
				ASMOpcode opcode = (ASMOpcode)variant;
				code.add(opcode);
			}
			else if(variant instanceof SimpleCodeGenerator) {
				SimpleCodeGenerator generator = (SimpleCodeGenerator) variant;
				ASMCodeFragment fragment = generator.generate(node);
				code.append(fragment);
				
				if(fragment.isAddress()) {
					code.markAsAddress();
				}
			}
			else {
				throw new Error("Compile error: could not cast from " + oldType + " to " + newType);
			}
		}

		///////////////////////////////////////////////////////////////////////////
		// leaf nodes (ErrorNode not necessary)
		public void visit(BooleanConstantNode node) {
			newValueCode(node);
			code.add(PushI, node.getValue() ? 1 : 0);
		}
		public void visit(CharacterConstantNode node) {
			newValueCode(node);
			code.add(PushI, node.getValue());
		}
		public void visit(IdentifierNode node) {
			newAddressCode(node);
			Binding binding = node.getBinding();
			
			binding.generateAddress(code);
		}		
		public void visit(IntegerConstantNode node) {
			newValueCode(node);
			
			code.add(PushI, node.getValue());
		}
		public void visit(StringConstantNode node) {
			newValueCode(node);

			Labeller labeller = new Labeller("string");
			String stringLabel = labeller.newLabel("store");

			//loader allocates string
			code.add(DLabel, stringLabel);
			code.add(DataS, node.getValue());
			code.add(PushD, stringLabel);

		}
		
		public void visit(FloatingConstantNode node) {
			newValueCode(node);
			
			code.add(PushF, node.getValue());
		}
	}

}
