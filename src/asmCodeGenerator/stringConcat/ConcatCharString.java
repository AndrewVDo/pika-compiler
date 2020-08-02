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

public class ConcatCharString implements SimpleCodeGenerator {
    static private Labeller labeller = new Labeller("ConcatStringString");
    static private String stringArg = labeller.newLabel("string-arg");
    static private String stringArgLength = labeller.newLabel("string-arg-length");
    static private String stringArgLoop = labeller.newLabel("string-copy-loop");
    static private String charArg = labeller.newLabel("char-arg");
    static private String stringResult = labeller.newLabel("string-result");

    public static final void declareLabels(ASMCodeFragment frag) {
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
    }


    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);


        //[char-value string-address]
        Macros.storeITo(frag, stringArg);
        Macros.storeITo(frag, charArg);


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
        frag.add(PushI, Record.STRING_TYPE_IDENTIFIER);                            //[... length subtypeSize status typeid]
        frag.add(Call, Record.RECORD_ALLOCATE_FUNCTION);                        //[... record]
        Macros.storeITo(frag, stringResult);

        frag.add(PushI, 0);
        Macros.storeITo(frag, stringArgLoop);

        //add new char
        Macros.loadIFrom(frag, charArg);
        Macros.loadIFrom(frag, stringResult);
        frag.add(PushI, 0);
        //[newChar, newString, 0]
        frag.add(Call, RECORD_INIT_ELEMENT);

        //copy old string
        ASMCodeFragment loopCode = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
            Macros.loadIFrom(loopCode, stringArg);
            Macros.loadIFrom(loopCode, stringArgLoop);
            loopCode.add(Call, RECORD_GET_ELEMENT);
            loopCode.add(LoadC);
            //[element]

            Macros.loadIFrom(loopCode, stringResult);
            Macros.loadIFrom(loopCode, stringArgLoop);
            loopCode.add(PushI, 1);
            loopCode.add(Add);
            //[element base index]
            loopCode.add(Call, RECORD_INIT_ELEMENT);
            //[]
        Macros.runtimeLoop(frag, stringArgLoop, stringArgLength, loopCode);

        Macros.loadIFrom(frag, stringResult);

        return frag;
    }
}
