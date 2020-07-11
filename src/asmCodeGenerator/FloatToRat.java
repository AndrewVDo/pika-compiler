package asmCodeGenerator;

import asmCodeGenerator.RationalMath.FloatRationalize;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.PushI;


public class FloatToRat implements SimpleCodeGenerator{
	public ASMCodeFragment generate(ParseNode node) {
		ASMCodeFragment fragment = new ASMCodeFragment(CodeType.GENERATES_VALUE);
		
		fragment.add(PushI, 223092870);
		FloatRationalize rg = new FloatRationalize();
		ASMCodeFragment code = rg.generate(node);
		fragment.append(code);
		
		return fragment;
	}
}
