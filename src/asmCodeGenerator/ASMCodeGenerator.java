package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMOpcode;
import asmCodeGenerator.runtime.MemoryManager;
import asmCodeGenerator.runtime.RunTime;
import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Lextant;
import lexicalAnalyzer.Punctuator;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import parseTree.nodeTypes.*;
import semanticAnalyzer.types.ArrayType;
import semanticAnalyzer.types.LambdaType;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;
import symbolTable.*;

import java.util.HashMap;
import java.util.Map;

import static asmCodeGenerator.Record.RECORD_DEALLOCATE;
import static asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType.*;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;

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
		code.append(initFrameStack());
		code.append( programCode());
		code.add(    Halt );
		
		return code;
	}
	private ASMCodeFragment initFrameStack() {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VOID);

		frag.add(Memtop);
		Macros.storeITo(frag, RunTime.FRAME_POINTER);
		frag.add(Memtop);
		Macros.storeITo(frag, RunTime.STACK_POINTER);

		return frag;
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

		public ASMCodeFragment removeRootCode(ParseNode tree) {
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

			if (code.isAddress()) {
				turnAddressIntoValue(code, node);
			}
		}

		private void turnAddressIntoValue(ASMCodeFragment code, ParseNode node) {
			if (node.getType() == PrimitiveType.INTEGER) {
				code.add(LoadI);
			} else if (node.getType() == PrimitiveType.FLOATING || node.getType() == PrimitiveType.RATIONAL) {
				code.add(LoadF);
			} else if (node.getType() == PrimitiveType.BOOLEAN) {
				code.add(LoadC);
			} else if (node.getType() == PrimitiveType.CHARACTER) {
				code.add(LoadC);
			} else if (node.getType() == PrimitiveType.STRING || node.getType() instanceof ArrayType) {
				code.add(LoadI);
			} else {
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
			for (ParseNode child : node.getChildren()) {
				ASMCodeFragment childCode = removeVoidCode(child);
				code.append(childCode);
			}
		}

		public void visitLeave(BlockStatementNode node) {
			newVoidCode(node);
			for (ParseNode child : node.getChildren()) {
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
			if (type == PrimitiveType.INTEGER || type == PrimitiveType.STRING || type instanceof ArrayType) {
				return StoreI;
			}
			if (type == PrimitiveType.FLOATING || type == PrimitiveType.RATIONAL) {
				return StoreF;
			}
			if (type == PrimitiveType.BOOLEAN || type == PrimitiveType.CHARACTER) {
				return StoreC;
			}
			assert false : "Type " + type + " unimplemented in opcodeForStore()";
			return null;
		}
		private ASMOpcode opcodeForLoad(Type type) {
			if (type == PrimitiveType.INTEGER || type == PrimitiveType.STRING || type instanceof ArrayType) {
				return LoadI;
			}
			if (type == PrimitiveType.FLOATING || type == PrimitiveType.RATIONAL) {
				return LoadF;
			}
			if (type == PrimitiveType.BOOLEAN || type == PrimitiveType.CHARACTER) {
				return LoadC;
			}
			if (type == PrimitiveType.NULL) {
				return Nop;
			}
			assert false : "Type " + type + " unimplemented in opcodeForStore()";
			return null;
		}

		public void visitLeave(FunctionNode node) {
			assert node.nChildren() == 2;
			newVoidCode(node);

			//add call label for function code
			Binding functionBinding = ((IdentifierNode)node.child(0)).getBinding();
			String functionLabel = functionBinding.getLabel();
			code.add(Jump, functionLabel + "skip");
			code.add(Label, functionLabel);

			//place return address on stack
			Macros.loadIFrom(code, RunTime.STACK_POINTER);
			code.add(Exchange);
			code.add(StoreI);

			//update frame ptr
			Macros.loadIFrom(code, RunTime.STACK_POINTER);
			code.add(PushI, 8);
			code.add(Add);
			Macros.storeITo(code, RunTime.FRAME_POINTER);

			//append code from definition
			ASMCodeFragment functionCode = removeVoidCode(node.child(1));
			code.append(functionCode);

			//run time error if nothing was returned
			code.add(Jump, RunTime.NO_RETURN_RUNTIME_ERROR);
			code.add(Label, functionLabel + "skip");
		}

		public void visitLeave(LambdaNode node) {
			assert node.nChildren() == 2;
			newVoidCode(node);

			//append code from function definition
			ASMCodeFragment functionCode = removeVoidCode(node.child(1));
			code.append(functionCode);
		}

		public void visitLeave(ReturnNode node) {
			newVoidCode(node);
			assert node.nChildren() < 2;
			if(node.nChildren() == 1) {
				ASMCodeFragment valueCode = removeValueCode(node.child(0));
				code.append(valueCode);
			}
			Macros.loadIFrom(code, RunTime.FRAME_POINTER);
			code.add(PushI, 8);
			code.add(Subtract);
			code.add(LoadI);
			//code.add(Return);

			//restore dynamic link
			Macros.loadIFrom(code, RunTime.FRAME_POINTER);
			code.add(PushI, 4);
			code.add(Subtract);
			code.add(LoadI);
			Macros.storeITo(code, RunTime.FRAME_POINTER);

			//calculate return position
			int argumentSize = getArgumentScope(node).getAllocatedSize();
			int procedureSize = node.getLocalScope().getAllocatedSize();
			Type returnType = getFunctionReturnType(node);

			//exchange so that return val at top
			if(node.nChildren() == 1) {
				code.add(Exchange);
			}

			Macros.incStackPtr(code, argumentSize + procedureSize - returnType.getSize());

			//place return value at return location
			if (node.nChildren() == 1) {
				Macros.loadIFrom(code, RunTime.STACK_POINTER);
				code.add(Exchange);
				code.add(opcodeForStore(returnType));
			}

			code.add(Return);
		}

		private Scope getArgumentScope(ParseNode node) {
			ParseNode functionNode = node;
			do {
				functionNode = functionNode.getParent();
			} while(!(functionNode instanceof FunctionNode));
			return functionNode.getScope();
		}
		private Type getFunctionReturnType(ParseNode node) {
			ParseNode lambdaNode = node;
			do {
				lambdaNode = lambdaNode.getParent();
			} while(!(lambdaNode instanceof LambdaNode));
			return ((LambdaType)lambdaNode.getType()).getReturnType();
		}

		public void visitLeave(CallNode node) {
			newVoidCode(node);
			code.append(removeValueCode(node.child(0)));
			code.add(Pop);
		}

		public void visitLeave(FunctionInvocationNode node) {
			assert node.nChildren() > 0;
			newValueCode(node);

			IdentifierNode functionIdentifier = (IdentifierNode) node.child(0);

			for(int i=1; i<node.nChildren(); i++){
				Type argType = node.child(i).getType();

				//update stack ptr
				Macros.decStackPtr(code, argType.getSize());

				//place argument
				Macros.loadIFrom(code, RunTime.STACK_POINTER);
				code.append(removeValueCode(node.child(i)));
				code.add(opcodeForStore(argType));
			}

			//store old dynamic link without moving stack ptr
			Macros.loadIFrom(code, RunTime.STACK_POINTER);
			code.add(PushI, 4);
			code.add(Subtract);
				Macros.loadIFrom(code, RunTime.FRAME_POINTER);
				code.add(StoreI);
			//post update for stack ptr
			Macros.decStackPtr(code, 4);
			//make room for return address
			Macros.decStackPtr(code, 4);
			code.add(Call, functionIdentifier.getBinding().getLabel());
			//control transferred to function -> resumes:
			//get value from stack ptr
			Type returnType = ((LambdaType)functionIdentifier.getType()).getReturnType();
			Macros.loadIFrom(code, RunTime.STACK_POINTER);
			if(returnType == PrimitiveType.NULL) {
				code.add(PushI, 0); //dummy
			}
			else {
				code.add(opcodeForLoad(returnType));
			}
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

		public void visitLeave(DeallocNode node) {
			newVoidCode(node);
			ASMCodeFragment valueCode = removeValueCode(node.child(0));
			code.append(valueCode);
			code.add(Call, RECORD_DEALLOCATE);
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

			code.add(Label, node.conty);
			code.add(Label, conditionLabel);
			code.append(condition);
			code.add(JumpFalse, endLabel);
			code.append(innerExpression);
			code.add(Jump, conditionLabel);
			code.add(Label, endLabel);
			code.add(Label, node.breaky);
		}
		public void visit(BreakFlowNode node) {
			newVoidCode(node);
			if(node.getToken().isLextant(Keyword.CONTINUE)) {
				code.add(Jump, node.conty);
			}
			else {
				code.add(Jump, node.breaky);
			}
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
			else if(operator == Keyword.CLONE) {
				visitCloneOperator(node);
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
			assert(node.nChildren() == 1);
			newValueCode(node);

			code.append(removeValueCode(node.child(0)));
			code.add(Call, Record.RECORD_GET_LENGTH);
		}
		private void visitCloneOperator(UnaryOperatorNode node) {
			assert(node.nChildren() == 1);
			newValueCode(node);

			code.append(removeValueCode(node.child(0)));
			code.add(Call, Record.RECORD_CLONE_FUNCTION);
		}

		public void visitLeave(BinaryOperatorNode node) {
			Lextant operator = node.getOperator();

			if(isComparisonOperator(operator)) {
				visitComparisonOperatorNode(node, operator);
			}
			else {
				visitNormalBinaryOperatorNode(node);
			}
		}

		private boolean isComparisonOperator(Lextant operator) {
			return operator == Punctuator.CLOSE_ANGLE || operator == Punctuator.OPEN_ANGLE
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
			else if(variant instanceof ShortCircuitCondition) {
				ShortCircuitCondition generator = (ShortCircuitCondition) variant;
				ASMCodeFragment fragment = generator.generate(node, arg1, arg2);

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

			if(node.nChildren() == 2 && node.child(0) instanceof TypeNode) {
				ASMCodeFragment lengthCode = removeValueCode(node.child(1));
				code.append(lengthCode);
				code.add(PushI, type.getSize());
				code.add(PushI, Record.generateStatus(false, type.isReference(), false, false));
				code.add(PushI, Record.ARRAY_TYPE_IDENTIFIER);     					//[... length subtypeSize status typeid]
				code.add(Call, Record.RECORD_ALLOCATE_FUNCTION);   					//[... record]
				return;
			}

			code.add(PushI, node.nChildren());
			code.add(PushI, type.getSize());
			code.add(PushI, Record.generateStatus(false, type.isReference(), false, false));
			code.add(PushI, Record.ARRAY_TYPE_IDENTIFIER);     						//[... length subtypeSize status typeid]
			code.add(Call, Record.RECORD_ALLOCATE_FUNCTION);   						//[... record]

			for(int i=0; i<node.nChildren(); i++) {
				code.add(Duplicate);                    		//[... record record]
				code.append(removeValueCode(node.child(i)));    //[... record record element]
				code.add(Exchange);                     		//[... record element record]
				code.add(PushI, i);                        		//[... record element record index]
				code.add(Call, Record.RECORD_INIT_ELEMENT);     	//[... record]
			}
		}

		public void visitLeave(ArrayIndexNode node) {
			assert(node.nChildren() == 2);
			newAddressCode(node);

			ASMCodeFragment arrayCode = removeValueCode(node.child(0));
			ASMCodeFragment indexCode = removeValueCode(node.child(1));

			code.append(arrayCode);
			code.append(indexCode);             		//[... BASE INDEX]
			code.add(Call, Record.RECORD_GET_ELEMENT); 	//[... INDEXED_ADDRESS]
		}

		
		
		public void visitLeave(CastExpressionNode node) {
			newValueCode(node);
			ASMCodeFragment innerExpression = removeValueCode(node.child(1));
			Type newType = node.getSignature().resultType();
			Type oldType = node.child(1).getType();

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

			String stringValue = node.getValue();
			code.add(PushI, stringValue.length() + 1);
			code.add(PushI, 1);
			code.add(PushI, Record.generateStatus(true, false, false, true));
			code.add(PushI, Record.STRING_TYPE_IDENTIFIER);     						//[... length subtypeSize status typeid]
			code.add(Call, Record.RECORD_ALLOCATE_FUNCTION);   						//[... record]

			for(int i=0; i<=stringValue.length(); i++) {
				code.add(Duplicate);                    		//[... record record]
				if(i<stringValue.length())code.add(PushI, (int) stringValue.charAt(i));    		//[... record record element]
				else code.add(PushI, 0);
				code.add(Exchange);                     		//[... record element record]
				code.add(PushI, i);                        		//[... record element record index]
				code.add(Call, Record.RECORD_INIT_ELEMENT);     	//[... record]
			}
		}
		
		public void visit(FloatingConstantNode node) {
			newValueCode(node);
			
			code.add(PushF, node.getValue());
		}
	}

}
