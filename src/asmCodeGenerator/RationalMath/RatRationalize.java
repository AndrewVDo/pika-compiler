package asmCodeGenerator.RationalMath;

import asmCodeGenerator.Macros;
import asmCodeGenerator.RationalGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.runtime.RunTime;
import parseTree.ParseNode;

import static asmCodeGenerator.RationalGenerator.RATIONAL_GCD;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class RatRationalize extends RationalExpressOverIntUtility {

    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        frag.add(Call, RAT_RATIONALIZE);
        return frag;
    }

    public static final String RAT_RATIONALIZE = "$rat-rationalize-fn";
    public static final void runtimeRatRationalize(ASMCodeFragment frag) {
        initUtil(frag, RAT_RATIONALIZE);
            Macros.loadIFrom(frag, RAT_RATIONALIZE + "-num");
                Macros.loadIFrom(frag, RAT_RATIONALIZE + "-int-arg");
                frag.add(Multiply);
            Macros.loadIFrom(frag, RAT_RATIONALIZE + "-den");
                    frag.add(Duplicate);
                    frag.add(JumpFalse, RunTime.INTEGER_DIVIDE_BY_ZERO_RUNTIME_ERROR);
                frag.add(Divide);

            Macros.loadIFrom(frag, RAT_RATIONALIZE + "-int-arg");
                RationalGenerator rg = new RationalGenerator();
                frag.append(rg.generate(null));
                Macros.storeFTo(frag, RAT_RATIONALIZE + "-res");

            frag.add(PushD, RAT_RATIONALIZE + "-res");
            Macros.readIOffset(frag, 0);
            frag.add(PushD, RAT_RATIONALIZE + "-res");
            Macros.readIOffset(frag, 4);
            frag.add(Call, RATIONAL_GCD);
                //[... gcd]
                frag.add(Duplicate);
                    frag.add(PushD, RAT_RATIONALIZE + "-res"); //divide den with gcd & save
                    Macros.readIOffset(frag, 4);
                    frag.add(Exchange);
                    frag.add(Divide);
                    frag.add(PushD, RAT_RATIONALIZE + "-res");
                    Macros.writeIOffset(frag, 4);
                frag.add(PushD, RAT_RATIONALIZE + "-res"); //divide num with gcd & save
                    Macros.readIOffset(frag, 0);
                    frag.add(Exchange);
                    frag.add(Divide);
                    frag.add(PushD, RAT_RATIONALIZE + "-res");
                    Macros.writeIOffset(frag, 0);

            Macros.loadFFrom(frag, RAT_RATIONALIZE + "-res");

        returnUtil(frag, RAT_RATIONALIZE);
    }

}
