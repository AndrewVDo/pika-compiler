package asmCodeGenerator.stringConcat;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.Macros;
import asmCodeGenerator.Record;
import asmCodeGenerator.SimpleCodeGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

import static asmCodeGenerator.Record.*;
import static asmCodeGenerator.Record.RECORD_INIT_ELEMENT;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class ConcatStringString implements SimpleCodeGenerator {
    static private Labeller labeller = new Labeller("ConcatStringString");
    static private boolean initialized = false;
    static private boolean injected = false; //used so that init code is injected only once
    static private ASMCodeFragment initInjection;

    static private String stringArg;
    static private String stringArgLength;
    static private String stringArgLoop;
    static private String stringArg2;
    static private String stringArgLength2;
    static private String stringResult;

    public ConcatStringString() {
        if (initialized == true) {
            return;
        }
        initialized = true;

        stringArg = labeller.newLabel("string-arg");
        stringArgLength = labeller.newLabel("string-arg-length");
        stringArgLoop = labeller.newLabel("string-copy-loop");
        stringArg2 = labeller.newLabel("string-arg2");
        stringArgLength2 = labeller.newLabel("string-arg-length2");
        stringResult = labeller.newLabel("string-result");

        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
        frag.add(DLabel, stringArg);
        frag.add(DataZ, 4);
        frag.add(DLabel, stringArgLength);
        frag.add(DataZ, 4);
        frag.add(DLabel, stringArgLoop);
        frag.add(DataZ, 4);
        frag.add(DLabel, stringArg2);
        frag.add(DataZ, 4);
        frag.add(DLabel, stringArgLength2);
        frag.add(DataZ, 4);
        frag.add(DLabel, stringResult);
        frag.add(DataZ, 4);
        initInjection = frag;
    }


    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

        if (!injected) {
            frag.append(initInjection);
        }
        injected = true;

        //[string-address string-address]
        Macros.storeITo(frag, stringArg2);
        Macros.storeITo(frag, stringArg);


        //[]
        Macros.loadIFrom(frag, stringArg);
        frag.add(Call, RECORD_GET_LENGTH);
        Macros.storeITo(frag, stringArgLength);
        //[]
        Macros.loadIFrom(frag, stringArg2);
        frag.add(Call, RECORD_GET_LENGTH);
        Macros.storeITo(frag, stringArgLength2);


        Macros.loadIFrom(frag, stringArgLength);
        Macros.loadIFrom(frag, stringArgLength2);
        frag.add(Add);
        frag.add(PushI, -1); //ignore 1 of the ending \0
        frag.add(Add);

        //[length1+length2-1]
        frag.add(PushI, 1);
        frag.add(PushI, Record.generateStatus(true, false, false, true));
        frag.add(PushI, Record.STRING_TYPE_IDENTIFIER);                            //[... length subtypeSize status typeid]
        frag.add(Call, Record.RECORD_ALLOCATE_FUNCTION);                        //[... record]
        Macros.storeITo(frag, stringResult);

        frag.add(PushI, 0);
        Macros.storeITo(frag, stringArgLoop);

        //copy old string1
        ASMCodeFragment loopCode = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
            Macros.loadIFrom(loopCode, stringArg);
            Macros.loadIFrom(loopCode, stringArgLoop);
            loopCode.add(Call, RECORD_GET_ELEMENT);
            loopCode.add(LoadC);
            //[element]

            Macros.loadIFrom(loopCode, stringResult);
            Macros.loadIFrom(loopCode, stringArgLoop);
            //[element base index]
            loopCode.add(Call, RECORD_INIT_ELEMENT);
            //[]
        Macros.runtimeLoop(frag, stringArgLoop, stringArgLength, loopCode);

        frag.add(PushI, 0);
        Macros.storeITo(frag, stringArgLoop);

        //copy old string2
        ASMCodeFragment loopCode2 = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
            Macros.loadIFrom(loopCode2, stringArg2);
            Macros.loadIFrom(loopCode2, stringArgLoop);
            loopCode2.add(Call, RECORD_GET_ELEMENT);
            loopCode2.add(LoadC);
            //[element]

            Macros.loadIFrom(loopCode2, stringResult);
            Macros.loadIFrom(loopCode2, stringArgLength);
            Macros.loadIFrom(loopCode2, stringArgLoop);
                loopCode2.add(Add);
                loopCode2.add(PushI, -1); //offset considering we don't need the ending \0 from the first string
                loopCode2.add(Add);
            //[element base index]
            loopCode2.add(Call, RECORD_INIT_ELEMENT);
            //[]
        Macros.runtimeLoop(frag, stringArgLoop, stringArgLength2, loopCode2);


        Macros.loadIFrom(frag, stringResult);

        return frag;
    }
}
