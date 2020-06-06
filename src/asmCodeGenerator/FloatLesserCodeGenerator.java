package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;

import parseTree.ParseNode;


public class FloatLesserCodeGenerator implements ComparisonCodeGenerator{
	public ASMCodeFragment generate(ParseNode Node, String trueLabel, String falseLabel) {
		ASMCodeFragment fragment = new ASMCodeFragment(CodeType.GENERATES_VALUE);
		
		fragment.add();
		fragment.add();
		fragment.add();
	}
}
