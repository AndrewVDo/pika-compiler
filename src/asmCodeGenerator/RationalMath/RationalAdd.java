package asmCodeGenerator.RationalMath;

import asmCodeGenerator.Macros;
import asmCodeGenerator.SimpleCodeGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class RationalAdd extends RationalUtility {

    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
            frag.add(Call, RAT_ADD);
        return frag;
    }

    public static final String RAT_ADD = "$rad-add-fn";
    public static final void runtimeRatAdd(ASMCodeFragment frag) {
        initUtil(frag, RAT_ADD);
            Macros.loadIFrom(frag, RAT_ADD + "-a");
                Macros.loadIFrom(frag, RAT_ADD + "-d");
                frag.add(Multiply);
            Macros.loadIFrom(frag, RAT_ADD + "-c");
                Macros.loadIFrom(frag, RAT_ADD + "-b");
                frag.add(Multiply);
            frag.add(Add);
                frag.add(PushD, RAT_ADD + "-res");
                Macros.writeIOffset(frag, 0);
            Macros.loadIFrom(frag, RAT_ADD + "-d");
                Macros.loadIFrom(frag, RAT_ADD + "-b");
                frag.add(Multiply);
            frag.add(PushD, RAT_ADD + "-res");
                Macros.writeIOffset(frag, 4);
        returnUtil(frag, RAT_ADD);
    }


}
