package asmCodeGenerator.stringConcat;

import asmCodeGenerator.SimpleCodeGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class ConcatStringString implements SimpleCodeGenerator {
    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

            frag.add(PStack);

        return frag;
    }
}
