package asmCodeGenerator.stringConcat;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.Macros;
import asmCodeGenerator.Record;
import asmCodeGenerator.SimpleCodeGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

import static asmCodeGenerator.Record.*;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class ReverseCode implements SimpleCodeGenerator {
    private static Labeller labeller = new Labeller("reverse");
    private static String stringArg = labeller.newLabel("stringArg");
    private static String stringLength = labeller.newLabel("stringLength");
    private static String loopIndex = labeller.newLabel("loopIndex");
    private static String result = labeller.newLabel("result");

    public static void declareLabels(ASMCodeFragment frag) {
        frag.add(DLabel, stringArg);
        frag.add(DataZ, 4);
        frag.add(DLabel, stringLength);
        frag.add(DataZ, 4);
        frag.add(DLabel, loopIndex);
        frag.add(DataZ, 4);
        frag.add(DLabel, result);
        frag.add(DataZ, 4);
    }

    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        Macros.storeITo(frag, stringArg);

        Macros.loadIFrom(frag, stringArg);
        frag.add(Call, RECORD_GET_LENGTH);
        frag.add(PushI, -1);
        frag.add(Add);
        Macros.storeITo(frag, stringLength);//excludes \0

        //create result record
        Macros.loadIFrom(frag, stringLength);
        frag.add(PushI, 1);
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
            Macros.loadIFrom(loopFrag, stringLength);
            Macros.loadIFrom(loopFrag, loopIndex);
            loopFrag.add(Subtract);
            loopFrag.add(PushI, 1);
            loopFrag.add(Subtract);
            loopFrag.add(Call, RECORD_GET_ELEMENT);
            loopFrag.add(LoadC);
            //s[i]

            Macros.loadIFrom(loopFrag, result);
            Macros.loadIFrom(loopFrag, loopIndex);
            loopFrag.add(Call, RECORD_INIT_ELEMENT);
        Macros.runtimeLoop(frag, loopIndex, stringLength, loopFrag);

        //trailing \0
        frag.add(PushI, 0);
        Macros.loadIFrom(frag, result);
        Macros.loadIFrom(frag, stringLength);
        frag.add(Call, RECORD_INIT_ELEMENT);

        Macros.loadIFrom(frag, result);

        return frag;
    }
}
