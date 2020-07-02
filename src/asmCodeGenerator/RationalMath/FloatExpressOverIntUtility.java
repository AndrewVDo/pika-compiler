package asmCodeGenerator.RationalMath;

import asmCodeGenerator.Macros;
import asmCodeGenerator.SimpleCodeGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class FloatExpressOverIntUtility implements SimpleCodeGenerator {
    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        return null;
    }

    public static final void initUtil(ASMCodeFragment frag, String functionName) {
        Macros.declareI(frag, functionName + "-caller");
        Macros.declareF(frag, functionName + "-float-arg");
        Macros.declareI(frag, functionName + "-int-arg");
        Macros.declareF(frag, functionName + "-res"); //return util loads this result at the end
        frag.add(Label, functionName);
            Macros.storeITo(frag, functionName + "-caller");
            Macros.storeITo(frag, functionName + "-int-arg");
            Macros.storeFTo(frag, functionName + "-float-arg");
    }
    public static final void returnUtil(ASMCodeFragment frag, String functionName) {
        frag.add(Label, functionName + "-return");
        Macros.loadIFrom(frag, functionName + "-caller");
        frag.add(Return);
    }
}
