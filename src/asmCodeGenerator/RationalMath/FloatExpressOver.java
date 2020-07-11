package asmCodeGenerator.RationalMath;

import asmCodeGenerator.Macros;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.runtime.RunTime;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class FloatExpressOver extends FloatExpressOverIntUtility {

    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        frag.add(Call, FLOAT_EXPRESS_OVER);
        return frag;
    }

    public static final String FLOAT_EXPRESS_OVER = "$float-express-over-fn";
    public static final void runtimeFloatExpressOver(ASMCodeFragment frag) {
        initUtil(frag, FLOAT_EXPRESS_OVER);
            Macros.loadIFrom(frag, FLOAT_EXPRESS_OVER + "-int-arg");
                frag.add(JumpFalse, RunTime.INTEGER_DIVIDE_BY_ZERO_RUNTIME_ERROR);

            Macros.loadIFrom(frag, FLOAT_EXPRESS_OVER + "-int-arg");
                frag.add(ConvertF);
                Macros.loadFFrom(frag, FLOAT_EXPRESS_OVER + "-float-arg");
                frag.add(FMultiply);
            frag.add(ConvertI);

        returnUtil(frag, FLOAT_EXPRESS_OVER);
    }

}
