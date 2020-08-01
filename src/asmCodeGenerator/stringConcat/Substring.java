package asmCodeGenerator.stringConcat;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.Macros;
import asmCodeGenerator.Record;
import asmCodeGenerator.codeStorage.ASMCodeFragment;

import static asmCodeGenerator.Record.*;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.runtime.RunTime.INDEX_RUNTIME_ERROR;

public class Substring {
    private static Labeller labeller = new Labeller("substring");
    private static String stringArg = labeller.newLabel("stringArg");
        private static String stringLength = labeller.newLabel("stringLength");
    private static String indexArg = labeller.newLabel("indexArg");
    private static String endIndexArg = labeller.newLabel("endIndexArg");
    private static String loopIndex = labeller.newLabel("loopIndex");
    private static String resultLength = labeller.newLabel("resultLength");
    private static String result = labeller.newLabel("result");

    public static void declareLabels(ASMCodeFragment frag) {
        frag.add(DLabel, stringArg);
        frag.add(DataZ, 4);
        frag.add(DLabel, indexArg);
        frag.add(DataZ, 4);
        frag.add(DLabel, endIndexArg);
        frag.add(DataZ, 4);
        frag.add(DLabel, loopIndex);
        frag.add(DataZ, 4);
        frag.add(DLabel, resultLength);
        frag.add(DataZ, 4);
        frag.add(DLabel, result);
        frag.add(DataZ, 4);
    }

    public static void generate(ASMCodeFragment frag) {
        Macros.storeITo(frag, endIndexArg);
        Macros.storeITo(frag, indexArg);
        Macros.storeITo(frag, stringArg);

        Macros.loadIFrom(frag, stringArg);
        frag.add(Call, RECORD_GET_LENGTH);
        Macros.storeITo(frag, stringLength);

        //check argument for rte
        //0 <= index <= endIndex <= length s
        Macros.loadIFrom(frag, indexArg);
        frag.add(JumpNeg, INDEX_RUNTIME_ERROR);

        Macros.loadIFrom(frag, endIndexArg);
        Macros.loadIFrom(frag, indexArg);
        frag.add(Subtract);
        frag.add(JumpNeg, INDEX_RUNTIME_ERROR);

        Macros.loadIFrom(frag, stringLength);
        Macros.loadIFrom(frag, endIndexArg);
        frag.add(Subtract);
        frag.add(JumpNeg, INDEX_RUNTIME_ERROR);

        //create the result
        Macros.loadIFrom(frag, endIndexArg);
        Macros.loadIFrom(frag, indexArg);
        frag.add(Subtract);
        Macros.storeITo(frag, resultLength); //does not account for ending \0

        Macros.loadIFrom(frag, resultLength);
        frag.add(PushI, 1); //ending \0
        frag.add(Add);
        frag.add(PushI, 1);
        frag.add(PushI, Record.generateStatus(true, false, false, true));
        frag.add(PushI, Record.STRING_TYPE_IDENTIFIER);                            //[... length subtypeSize status typeid]
        frag.add(Call, Record.RECORD_ALLOCATE_FUNCTION);                        //[... record]
        Macros.storeITo(frag, result);

        frag.add(PushI, 0);
        Macros.storeITo(frag, loopIndex);

        //loop actions
        ASMCodeFragment loopFrag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
            Macros.loadIFrom(loopFrag, stringArg);
            Macros.loadIFrom(loopFrag, loopIndex);
            Macros.loadIFrom(loopFrag, indexArg);
            loopFrag.add(Add);
            loopFrag.add(Call, RECORD_GET_ELEMENT);
            loopFrag.add(LoadC);
            //s[i]

            Macros.loadIFrom(loopFrag, result);
            Macros.loadIFrom(loopFrag, loopIndex);
            loopFrag.add(Call, RECORD_INIT_ELEMENT);
        Macros.runtimeLoop(frag, loopIndex, resultLength, loopFrag);

        //trailing \0
        frag.add(PushI, 0);
        Macros.loadIFrom(frag, result);
        Macros.loadIFrom(frag, resultLength);
        frag.add(Call, RECORD_INIT_ELEMENT);

        Macros.loadIFrom(frag, result);
    }
}
