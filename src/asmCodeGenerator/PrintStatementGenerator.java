package asmCodeGenerator;

import asmCodeGenerator.ASMCodeGenerator.CodeVisitor;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.runtime.RunTime;
import parseTree.ParseNode;
import parseTree.nodeTypes.PrintStatementNode;
import semanticAnalyzer.types.ArrayType;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;

import static asmCodeGenerator.Record.RECORD_HEADER_SIZE;
import static asmCodeGenerator.Record.RECORD_PRINT_FUNCTION;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.runtime.RunTime.*;

public class PrintStatementGenerator {
	ASMCodeFragment code;
	ASMCodeGenerator.CodeVisitor visitor;
	
	
	public PrintStatementGenerator(ASMCodeFragment code, CodeVisitor visitor) {
		super();
		this.code = code;
		this.visitor = visitor;
	}

	public void generate(PrintStatementNode node) {
		for(ParseNode child : node.getChildren()) {
				appendPrintCode(child);
		}
	}

	private void appendPrintCode(ParseNode node) {
		if(node.getType() instanceof ArrayType) {
			printArray(node);
			return;
		}

		String format = printFormat(node.getType());

		code.append(visitor.removeValueCode(node));
		convertToStringIfBoolean(node);
		stringPrintOffset(node);
		code.add(PushD, format);
		code.add(Printf);
	}
	private void printArray(ParseNode node) {
		Type type = ((ArrayType)node.getType()).getSubtype();
		while(type instanceof ArrayType) {
			type = ((ArrayType)type).getSubtype();
		}

		String format = printFormat(type);
		code.add(PushD, format);
		Macros.storeITo(code, RECORD_PRINT_FORMAT);

			if(format.equals(RunTime.BOOLEAN_PRINT_FORMAT)) {
				code.add(PushI, 1);
			} else {
				code.add(PushI, 0);
			}
			Macros.storeITo(code, RECORD_PRINT_BOOL_FLAG);

		code.append(visitor.removeValueCode(node)); //[base]
		code.add(Call, RECORD_PRINT_FUNCTION);
	}
	private void convertToStringIfBoolean(ParseNode node) {
		if(node.getType() != PrimitiveType.BOOLEAN) {
			return;
		}
		
		Labeller labeller = new Labeller("print-boolean");
		String trueLabel = labeller.newLabel("true");
		String endLabel = labeller.newLabel("join");

		code.add(JumpTrue, trueLabel);
		code.add(PushD, RunTime.BOOLEAN_FALSE_STRING);
		code.add(Jump, endLabel);
		code.add(Label, trueLabel);
		code.add(PushD, RunTime.BOOLEAN_TRUE_STRING);
		code.add(Label, endLabel);
	}
	private void stringPrintOffset(ParseNode node) {
		if(node.getType() != PrimitiveType.STRING) {
			return;
		}

		code.add(PushI, RECORD_HEADER_SIZE);
		code.add(Add);
	}


	private static String printFormat(Type type) {
		if(type instanceof ArrayType) {
			type = ((ArrayType) type).getSubtype();
		}
		
		switch((PrimitiveType)type) {
		case INTEGER:	return RunTime.INTEGER_PRINT_FORMAT;
		case FLOATING: 	return RunTime.FLOATING_PRINT_FORMAT;
		case BOOLEAN:	return RunTime.BOOLEAN_PRINT_FORMAT;
		case CHARACTER: return RunTime.CHARACTER_PRINT_FORMAT;
		case STRING: return RunTime.STRING_PRINT_FORMAT;
		default:		
			assert false : "Type " + type + " unimplemented in PrintStatementGenerator.printFormat()";
			return "";
		}
	}
}
