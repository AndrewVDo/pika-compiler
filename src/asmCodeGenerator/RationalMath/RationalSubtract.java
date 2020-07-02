package asmCodeGenerator.RationalMath;

import asmCodeGenerator.Macros;
import asmCodeGenerator.SimpleCodeGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.codeStorage.ASMOpcode.PushD;

public class RationalSubtract extends RationalUtility {

    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        frag.add(Call, RAT_SUB);
        return frag;
    }

    public static final String RAT_SUB = "$rad-sub-fn";
    public static final void runtimeRatSub(ASMCodeFragment frag) {
        initUtil(frag, RAT_SUB);
        Macros.loadIFrom(frag, RAT_SUB + "-a");
        Macros.loadIFrom(frag, RAT_SUB + "-d");
        frag.add(Multiply);
        Macros.loadIFrom(frag, RAT_SUB + "-c");
        Macros.loadIFrom(frag, RAT_SUB + "-b");
        frag.add(Multiply);
        frag.add(Subtract);
        frag.add(PushD, RAT_SUB + "-res");
        Macros.writeIOffset(frag, 0);
        Macros.loadIFrom(frag, RAT_SUB + "-d");
        Macros.loadIFrom(frag, RAT_SUB + "-b");
        frag.add(Multiply);
        frag.add(PushD, RAT_SUB + "-res");
        Macros.writeIOffset(frag, 4);
        returnUtil(frag, RAT_SUB);
    }

}
