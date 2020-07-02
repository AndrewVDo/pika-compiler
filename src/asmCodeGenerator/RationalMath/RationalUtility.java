package asmCodeGenerator.RationalMath;

import asmCodeGenerator.Macros;
import asmCodeGenerator.SimpleCodeGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class RationalUtility implements SimpleCodeGenerator {
    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        return null;
    }

    public static final void initUtil(ASMCodeFragment frag, String functionName) {
        Macros.declareI(frag, functionName + "-caller");
        Macros.declareF(frag, functionName + "-raw-left");
        Macros.declareF(frag, functionName + "-raw-right");
        Macros.declareI(frag, functionName + "-a"); //left num
        Macros.declareI(frag, functionName + "-b"); //left den
        Macros.declareI(frag, functionName + "-c"); //right num
        Macros.declareI(frag, functionName + "-d"); //right den
        Macros.declareF(frag, functionName + "-res"); //return util loads this result at the end
        frag.add(Label, functionName);
            Macros.storeITo(frag, functionName + "-caller");
            frag.add(PStack);
            Macros.storeFTo(frag, functionName + "-raw-right");
            Macros.storeFTo(frag, functionName + "-raw-left");
            frag.add(PushD, functionName + "-raw-left");
                Macros.readIOffset(frag, 0);
                Macros.storeITo(frag, functionName + "-a");
            frag.add(PushD, functionName + "-raw-left");
                Macros.readIOffset(frag, 4);
                Macros.storeITo(frag, functionName + "-b");
            frag.add(PushD, functionName + "-raw-right");
                Macros.readIOffset(frag, 0);
                Macros.storeITo(frag, functionName + "-a");
            frag.add(PushD, functionName + "-raw-right");
                Macros.readIOffset(frag, 4);
                Macros.storeITo(frag, functionName + "-b");
    }
    public static final void returnUtil(ASMCodeFragment frag, String functionName) {
        Macros.loadFFrom(frag, functionName + "-res");
        frag.add(Label, functionName + "-return");
        Macros.loadIFrom(frag, functionName + "-caller");
        frag.add(Return);
    }
}
