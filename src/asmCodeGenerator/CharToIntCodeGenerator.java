package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.BTAnd;
import static asmCodeGenerator.codeStorage.ASMOpcode.PushI;



public class CharToIntCodeGenerator implements SimpleCodeGenerator{
	public ASMCodeFragment generate(ParseNode node) {
		ASMCodeFragment fragment = new ASMCodeFragment(CodeType.GENERATES_VALUE);
		
		fragment.add(PushI, 127);
		fragment.add(BTAnd);
		
		return fragment;
	}
}
