package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;


public class IntToRat implements SimpleCodeGenerator{
	public ASMCodeFragment generate(ParseNode node) {
		ASMCodeFragment fragment = new ASMCodeFragment(CodeType.GENERATES_VALUE);
		
		fragment.add(PushI, 1);
		RationalGenerator rg = new RationalGenerator();
		ASMCodeFragment code = rg.generate(node);
		fragment.append(code);
		
		return fragment;
	}
}
