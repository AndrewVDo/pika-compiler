package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import asmCodeGenerator.runtime.RunTime;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;



public class IntegerDivideCodeGenerator implements SimpleCodeGenerator{
	public ASMCodeFragment generate(ParseNode node) {
		ASMCodeFragment fragment = new ASMCodeFragment(CodeType.GENERATES_VALUE);
		
		fragment.add(Duplicate);
		fragment.add(JumpFalse, RunTime.INTEGER_DIVIDE_BY_ZERO_RUNTIME_ERROR);
		fragment.add(Divide);
		
		return fragment;
	}
}
