package asmCodeGenerator.RationalMath;

import asmCodeGenerator.Macros;
import asmCodeGenerator.SimpleCodeGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.codeStorage.ASMOpcode.PushD;

public class RationalMultiply extends RationalUtility {

    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        frag.add(Call, RAT_MULT);
        return frag;
    }

    public static final String RAT_MULT = "$rad-mult-fn";
    public static final void runtimeRatMult(ASMCodeFragment frag) {
        initUtil(frag, RAT_MULT);
        Macros.loadIFrom(frag, RAT_MULT + "-a");
            Macros.loadIFrom(frag, RAT_MULT + "-c");
            frag.add(Multiply);
            frag.add(PushD, RAT_MULT + "-res");
            Macros.writeIOffset(frag, 0);
        Macros.loadIFrom(frag, RAT_MULT + "-b");
            Macros.loadIFrom(frag, RAT_MULT + "-d");
            frag.add(Multiply);
            frag.add(PushD, RAT_MULT + "-res");
            Macros.writeIOffset(frag, 4);
        returnUtil(frag, RAT_MULT);
    }

}
