package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;


public interface SimpleCodeGenerator {
	public ASMCodeFragment generate(ParseNode Node);
}
