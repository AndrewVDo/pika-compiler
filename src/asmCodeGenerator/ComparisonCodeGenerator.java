package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import asmCodeGenerator.codeStorage.ASMOpcode;
import lexicalAnalyzer.Lextant;
import lexicalAnalyzer.Punctuator;
import parseTree.ParseNode;
import semanticAnalyzer.types.ArrayType;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class ComparisonCodeGenerator {
	static public ASMCodeFragment generate(ParseNode node, Lextant operator, String trueLabel, String falseLabel) {
		ASMCodeFragment fragment = new ASMCodeFragment(CodeType.GENERATES_VALUE);
		
		//assert(node.child(0).getType() == node.child(1).getType());
		Type type = node.child(0).getType();
		
		if(type == PrimitiveType.BOOLEAN) {
			assert(operator == Punctuator.EQUAL || operator == Punctuator.NOTEQUAL);
			
			fragment.add(BEqual);
			
			if(operator == Punctuator.EQUAL) {
				fragment.add(JumpTrue, trueLabel);
				fragment.add(Jump, falseLabel);
			}
			else if(operator == Punctuator.NOTEQUAL) {
				fragment.add(JumpFalse, trueLabel);
				fragment.add(Jump, falseLabel);

			}
			
			return fragment;
		}
		if(type == PrimitiveType.STRING) {
			assert(operator == Punctuator.EQUAL || operator == Punctuator.NOTEQUAL);
		}
		
		ASMOpcode subtract = Nop;
		ASMOpcode jumppos = Nop;
		ASMOpcode jumpneg = Nop;
		ASMOpcode jumpzero = Nop;
		
		if(type == PrimitiveType.INTEGER || type instanceof ArrayType) {
			subtract = Subtract;
			jumppos = JumpPos;
			jumpneg = JumpNeg;
			jumpzero = JumpFalse;
		}
		else if(type == PrimitiveType.FLOATING) {
			subtract = FSubtract;
			jumppos = JumpFPos;
			jumpneg = JumpFNeg;
			jumpzero = JumpFZero;
		}
		else if(type == PrimitiveType.CHARACTER) {
			subtract = Subtract;
			jumppos = JumpPos;
			jumpneg = JumpNeg;
			jumpzero = JumpFalse;
		}
		else if(type == PrimitiveType.STRING) {
			subtract = Subtract;
			jumppos = JumpPos;
			jumpneg = JumpNeg;
			jumpzero = JumpFalse;
		}
		
		fragment.add(subtract);
		
		if(operator == Punctuator.GREATER) {
			fragment.add(jumppos, trueLabel);
			fragment.add(Jump, falseLabel);
		}
		else if(operator == Punctuator.LESSER) {
			fragment.add(jumpneg, trueLabel);
			fragment.add(Jump, falseLabel);
		}
		else if(operator == Punctuator.GREATEREQUAL) {
			fragment.add(jumpneg, falseLabel);
			fragment.add(Jump, trueLabel);
		}
		else if(operator == Punctuator.LESSEREQUAL) {
			fragment.add(jumppos, falseLabel);
			fragment.add(Jump, trueLabel);
		}
		else if(operator == Punctuator.EQUAL) {
			fragment.add(jumpzero, trueLabel);
			fragment.add(Jump, falseLabel);
		}
		else if(operator == Punctuator.NOTEQUAL) {
			fragment.add(jumpzero, falseLabel);
			fragment.add(Jump, trueLabel);
		}
		
		return fragment;
	}
}
