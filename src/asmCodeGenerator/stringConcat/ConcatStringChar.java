package asmCodeGenerator.stringConcat;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.Macros;
import asmCodeGenerator.Record;
import asmCodeGenerator.SimpleCodeGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

import static asmCodeGenerator.Record.*;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class ConcatStringChar implements SimpleCodeGenerator {
    static private Labeller labeller = new Labeller("ConcatStringChar");
    static private boolean initialized = false;
    static private boolean injected = false; //used so that init code is injected only once
    static private ASMCodeFragment initInjection;

    static private String stringArg;
    static private String stringArgLength;
    static private String stringArgLoop;
    static private String charArg;
    static private String stringResult;

    public ConcatStringChar() {
        if(initialized == true) {
            return;
        }
        initialized = true;

        stringArg = labeller.newLabel("string-arg");
        stringArgLength = labeller.newLabel("string-arg-length");
        stringArgLoop = labeller.newLabel("string-copy-loop");
        charArg = labeller.newLabel("char-arg");
        stringResult = labeller.newLabel("string-result");

        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
        frag.add(DLabel, stringArg);
        frag.add(DataZ, 4);
        frag.add(DLabel, stringArgLength);
        frag.add(DataZ, 4);
        frag.add(DLabel, stringArgLoop);
        frag.add(DataZ, 4);
        frag.add(DLabel, charArg);
        frag.add(DataZ, 4);
        frag.add(DLabel, stringResult);
        frag.add(DataZ, 4);
        initInjection = frag;
    }


    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

        if(!injected) {
            frag.append(initInjection);
        }
        injected = true;

            //[string-address char-value]
            Macros.storeITo(frag, charArg);
            Macros.storeITo(frag, stringArg);

            //[]
            Macros.loadIFrom(frag, stringArg);
            frag.add(Call, RECORD_GET_LENGTH);
            Macros.storeITo(frag, stringArgLength);

            Macros.loadIFrom(frag, stringArgLength);
            frag.add(PushI, 1);
            frag.add(Add);

            //[length+1]
            frag.add(PushI, 1);
            frag.add(PushI, Record.generateStatus(true, false, false, true));
            frag.add(PushI, Record.STRING_TYPE_IDENTIFIER);    						//[... length subtypeSize status typeid]
            frag.add(Call, Record.RECORD_ALLOCATE_FUNCTION);						//[... record]
            Macros.storeITo(frag, stringResult);

            frag.add(PushI, 0);
            Macros.storeITo(frag, stringArgLoop);

            //copy old string
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

            //add new char
            Macros.loadIFrom(frag, charArg);
            Macros.loadIFrom(frag, stringResult);
            Macros.loadIFrom(frag, stringArgLength);
            frag.add(PushI, -1);
            frag.add(Add);
            //[newChar, newString, (origLength-1)]
            frag.add(Call, RECORD_INIT_ELEMENT);

            //set last byte tp \0
            frag.add(PushI, 0);
            Macros.loadIFrom(frag, stringResult);
            Macros.loadIFrom(frag, stringArgLength);
            frag.add(Call, RECORD_INIT_ELEMENT);

            Macros.loadIFrom(frag, stringResult);

        return frag;
    }
}
