package asmCodeGenerator.RationalMath;

import asmCodeGenerator.Macros;
import asmCodeGenerator.RationalGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

import static asmCodeGenerator.RationalGenerator.RATIONAL_GCD;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class FloatRationalize extends FloatExpressOverIntUtility {

    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        frag.add(Call, FLOAT_RATIONALIZE);
        return frag;
    }

    public static final String FLOAT_RATIONALIZE = "$float-rationalize-fn";
    public static final void runtimeFloatRationalize(ASMCodeFragment frag) {
        initUtil(frag, FLOAT_RATIONALIZE);
            Macros.loadIFrom(frag, FLOAT_RATIONALIZE + "-int-arg");
                frag.add(ConvertF);
                Macros.loadFFrom(frag, FLOAT_RATIONALIZE + "-float-arg");
                frag.add(FMultiply);
            frag.add(ConvertI);

            Macros.loadIFrom(frag, FLOAT_RATIONALIZE + "-int-arg");
                RationalGenerator rg = new RationalGenerator();
                frag.append(rg.generate(null));
                Macros.storeFTo(frag, FLOAT_RATIONALIZE + "-res");

            frag.add(PushD, FLOAT_RATIONALIZE + "-res");
            Macros.readIOffset(frag, 0);
            frag.add(PushD, FLOAT_RATIONALIZE + "-res");
            Macros.readIOffset(frag, 4);
            frag.add(Call, RATIONAL_GCD);
                //[... gcd]
                frag.add(Duplicate);
                    frag.add(PushD, FLOAT_RATIONALIZE + "-res"); //divide den with gcd & save
                    Macros.readIOffset(frag, 4);
                    frag.add(Exchange);
                    frag.add(Divide);
                    frag.add(PushD, FLOAT_RATIONALIZE + "-res");
                    Macros.writeIOffset(frag, 4);
                frag.add(PushD, FLOAT_RATIONALIZE + "-res"); //divide num with gcd & save
                    Macros.readIOffset(frag, 0);
                    frag.add(Exchange);
                    frag.add(Divide);
                    frag.add(PushD, FLOAT_RATIONALIZE + "-res");
                    Macros.writeIOffset(frag, 0);

            Macros.loadFFrom(frag, FLOAT_RATIONALIZE + "-res");

        returnUtil(frag, FLOAT_RATIONALIZE);
    }

}
