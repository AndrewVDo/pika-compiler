package asmCodeGenerator.RationalMath;

import asmCodeGenerator.Macros;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.runtime.RunTime;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class RatExpressOver extends RationalExpressOverIntUtility {

    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        frag.add(Call, RAT_EXPRESS_OVER);
        return frag;
    }

    public static final String RAT_EXPRESS_OVER = "$rat-express-over-fn";
    public static final void runtimeRatExpressOver(ASMCodeFragment frag) {
        initUtil(frag, RAT_EXPRESS_OVER);
            Macros.loadIFrom(frag, RAT_EXPRESS_OVER + "-num");
                Macros.loadIFrom(frag, RAT_EXPRESS_OVER + "-int-arg");
                frag.add(Multiply);
            Macros.loadIFrom(frag, RAT_EXPRESS_OVER + "-den");
                    frag.add(Duplicate);
                    frag.add(JumpFalse, RunTime.INTEGER_DIVIDE_BY_ZERO_RUNTIME_ERROR);
                frag.add(Divide);

        returnUtil(frag, RAT_EXPRESS_OVER);
    }

}
