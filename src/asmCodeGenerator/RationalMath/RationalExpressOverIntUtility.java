package asmCodeGenerator.RationalMath;

import asmCodeGenerator.Macros;
import asmCodeGenerator.SimpleCodeGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class RationalExpressOverIntUtility implements SimpleCodeGenerator {
    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        return null;
    }

    public static final void initUtil(ASMCodeFragment frag, String functionName) {
        Macros.declareI(frag, functionName + "-caller");
        Macros.declareF(frag, functionName + "-raw-rat");
        Macros.declareI(frag, functionName + "-int-arg");
        Macros.declareI(frag, functionName + "-num"); //left num
        Macros.declareI(frag, functionName + "-den"); //left den
        Macros.declareF(frag, functionName + "-res"); //return util loads this result at the end
        frag.add(Label, functionName);
            Macros.storeITo(frag, functionName + "-caller");
            Macros.storeITo(frag, functionName + "-int-arg");
            Macros.storeFTo(frag, functionName + "-raw-rat");
            frag.add(PushD, functionName + "-raw-rat");
                Macros.readIOffset(frag, 0);
                Macros.storeITo(frag, functionName + "-num");
            frag.add(PushD, functionName + "-raw-rat");
                Macros.readIOffset(frag, 4);
                Macros.storeITo(frag, functionName + "-den");
    }
    public static final void returnUtil(ASMCodeFragment frag, String functionName) {
        frag.add(Label, functionName + "-return");
        Macros.loadIFrom(frag, functionName + "-caller");
        frag.add(Return);
    }
}
