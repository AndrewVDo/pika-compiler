package asmCodeGenerator;

import static asmCodeGenerator.codeStorage.ASMOpcode.And;
import static asmCodeGenerator.codeStorage.ASMOpcode.PushI;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import parseTree.ParseNode;



public class IntToBoolCodeGenerator implements SimpleCodeGenerator{
	public ASMCodeFragment generate(ParseNode node) {
		ASMCodeFragment fragment = new ASMCodeFragment(CodeType.GENERATES_VALUE);
		
		fragment.add(PushI, 1);
		fragment.add(And);
		
		return fragment;
	}
}
