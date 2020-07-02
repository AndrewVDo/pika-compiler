package asmCodeGenerator.RationalMath;

import asmCodeGenerator.Macros;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.runtime.RunTime;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class RatToFloat extends RationalUnaryUtility {

    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        frag.add(Call, RAT_TO_FLOAT);
        return frag;
    }

    public static final String RAT_TO_FLOAT = "$rat-to-float-fn";
    public static final void runtimeRatToFloat(ASMCodeFragment frag) {
        initUtil(frag, RAT_TO_FLOAT);
            Macros.loadIFrom(frag, RAT_TO_FLOAT + "-num");
            frag.add(ConvertF);
            Macros.loadIFrom(frag, RAT_TO_FLOAT + "-den");
            frag.add(ConvertF);
                frag.add(Duplicate);
                frag.add(JumpFZero, RunTime.FLOATING_DIVIDE_BY_ZERO_RUNTIME_ERROR);
            frag.add(FDivide);
        returnUtil(frag, RAT_TO_FLOAT);
    }

}
