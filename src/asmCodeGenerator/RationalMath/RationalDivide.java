package asmCodeGenerator.RationalMath;

import asmCodeGenerator.Macros;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.runtime.RunTime;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.codeStorage.ASMOpcode.PushD;

public class RationalDivide extends RationalUtility {

    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        frag.add(Call, RAT_DIV);
        return frag;
    }

    public static final String RAT_DIV = "$rad-div-fn";
    public static final void runtimeRatDiv(ASMCodeFragment frag) {
        initUtil(frag, RAT_DIV);
        Macros.loadIFrom(frag, RAT_DIV + "-a");
        Macros.loadIFrom(frag, RAT_DIV + "-d");
        frag.add(Multiply);
        frag.add(PushD, RAT_DIV + "-res");
        Macros.writeIOffset(frag, 0);
        Macros.loadIFrom(frag, RAT_DIV + "-b");
        Macros.loadIFrom(frag, RAT_DIV + "-c");
            frag.add(Duplicate);
            frag.add(JumpFalse, RunTime.INTEGER_DIVIDE_BY_ZERO_RUNTIME_ERROR);
        frag.add(Multiply);
        frag.add(PushD, RAT_DIV + "-res");
        Macros.writeIOffset(frag, 4);
        returnUtil(frag, RAT_DIV);
    }

}
