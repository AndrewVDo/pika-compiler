package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import asmCodeGenerator.runtime.RunTime;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;



public class FloatingDivideCodeGenerator implements SimpleCodeGenerator{
	public ASMCodeFragment generate(ParseNode node) {
		ASMCodeFragment fragment = new ASMCodeFragment(CodeType.GENERATES_VALUE);
		
		fragment.add(Duplicate);
		fragment.add(JumpFZero, RunTime.FLOATING_DIVIDE_BY_ZERO_RUNTIME_ERROR);
		fragment.add(FDivide);
		
		return fragment;
	}
}
