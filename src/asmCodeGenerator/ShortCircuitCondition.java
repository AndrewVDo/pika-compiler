package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

public interface ShortCircuitCondition {
    public ASMCodeFragment generate(ParseNode Node, ASMCodeFragment left, ASMCodeFragment right);
}
