package asmCodeGenerator.RationalMath;

import asmCodeGenerator.Macros;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.runtime.RunTime;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class RatToInt extends RationalUnaryUtility {

    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        frag.add(Call, RAT_TO_INT);
        return frag;
    }

    public static final String RAT_TO_INT = "$rat-to-int-fn";
    public static final void runtimeRatToInt(ASMCodeFragment frag) {
        initUtil(frag, RAT_TO_INT);
            Macros.loadIFrom(frag, RAT_TO_INT + "-num");
            Macros.loadIFrom(frag, RAT_TO_INT + "-den");
                frag.add(Duplicate);
                frag.add(JumpFalse, RunTime.INTEGER_DIVIDE_BY_ZERO_RUNTIME_ERROR);
            frag.add(Divide);
        returnUtil(frag, RAT_TO_INT);
    }

}
