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
		code.add(DLabel, RunTime.FRAME_POINTER);
		code.add(DataZ, globalBlockSize);
		code.add(Memtop);
		code.add(DataD, RunTime.FRAME_POINTER);
		code.add(DLabel, RunTime.STACK_POINTER);
		code.add(DataZ, globalBlockSize);
		code.add(Memtop);
		code.add(DataD, RunTime.STACK_POINTER);
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
			if (type == PrimitiveType.INTEGER) {
				return StoreI;
			}
			if (type == PrimitiveType.FLOATING || type == PrimitiveType.RATIONAL) {
				return StoreF;
			}
			if (type == PrimitiveType.BOOLEAN) {
				return StoreC;
			}
			if (type == PrimitiveType.CHARACTER) {
				return StoreC;
			}
			if (type == PrimitiveType.STRING || type instanceof ArrayType) {
				return StoreI;
			}
			assert false : "Type " + type + " unimplemented in opcodeForStore()";
			return null;
		}

		public void visitLeave(FunctionNode node) {
			newVoidCode(node);
		}

		public void visitLeave(LambdaNode node) {
			newVoidCode(node);
		}

		public void visitLeave(LambdaParamTypeNode node) {
			newVoidCode(node);
		}

		public void visitLeave(ParameterNode node) {
			newVoidCode(node);
		}

		public void visitLeave(ReturnNode node) {
			newValueCode(node);
			assert node.nChildren() < 2;
			if(node.nChildren() == 1) {
				ASMCodeFragment addressCode = removeAddressCode(node.child(0));
				code.append(addressCode);
			}
			Macros.loadIFrom(code, RunTime.FRAME_POINTER);
			code.add(PushI, 8);
			code.add(Subtract);
			code.add(LoadI);
			code.add(Return);

			Macros.loadIFrom(code, RunTime.FRAME_POINTER);
			code.add(PushI, 4);
			code.add(Subtract);
			code.add(LoadI);
			Macros.storeITo(code, RunTime.FRAME_POINTER);

			//todo increase stack ptr by arg size + procedure size - size of return

			Macros.loadIFrom(code, RunTime.STACK_POINTER);
			code.add()


		}

		public void visitLeave(CallNode node) {
			newVoidCode(node);
		}

		public void visitLeave(FunctionInvocationNode node) {
			assert node.nChildren() > 0;
			newValueCode(node);

			IdentifierNode functionIdentifier = (IdentifierNode) node.child(0);
			Scope parameterScope = functionIdentifier.getBinding().getScope();
			ParameterMemoryAllocator parameterAllocator = (ParameterMemoryAllocator)parameterScope.getAllocationStrategy();

			for(int i=1; i<node.nChildren(); i++){
				//MemoryLocation paramLocation = parameterAllocator.getParam(i-1);
				//paramLocation.generateAddress(code, paramLocation.toString());
				Macros.loadIFrom(code, RunTime.STACK_POINTER);
				code.add(PushI, node.child(i).getType().getSize());
				code.add(Subtract);

				code.add(Duplicate);
				Macros.storeITo(code, RunTime.STACK_POINTER);

				code.append(removeValueCode(node.child(i)));
				code.add(opcodeForStore(node.child(i).getType()));
			}

			//dynamic link
			Macros.loadIFrom(code, RunTime.STACK_POINTER);
			code.add(PushI, 4);
			code.add(Subtract);
				Macros.loadIFrom(code, RunTime.FRAME_POINTER);
				code.add(StoreI);
			//return address
			Macros.loadIFrom(code, RunTime.STACK_POINTER);
			code.add(PushI, 8);
			code.add(Subtract);
				code.add(Call, functionIdentifier.getBinding().getLabel());
				code.add(StoreI);
			//update frame pointer
			Macros.loadIFrom(code, RunTime.STACK_POINTER);
			Macros.storeITo(code, RunTime.FRAME_POINTER);
			//todo move stack ptr down by 8, add procedure vars
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
