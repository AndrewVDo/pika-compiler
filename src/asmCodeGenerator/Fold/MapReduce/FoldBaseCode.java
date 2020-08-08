package asmCodeGenerator.Fold.MapReduce;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.Macros;
import asmCodeGenerator.Record;
import asmCodeGenerator.SimpleCodeGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMOpcode;
import asmCodeGenerator.runtime.RunTime;
import parseTree.ParseNode;
import semanticAnalyzer.types.ArrayType;
import semanticAnalyzer.types.LambdaType;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;

import static asmCodeGenerator.Record.RECORD_GET_LENGTH;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class FoldBaseCode implements SimpleCodeGenerator {

    private static Labeller labeller = new Labeller("reduce");
    private static String input = labeller.newLabel("input-array");
    private static String length = labeller.newLabel("input-length");
    private static String lambda = labeller.newLabel("lambda");
    private static String index = labeller.newLabel("index");
    private static String temp_array = labeller.newLabel("temp-array");

    private static String result_length = labeller.newLabel("result-length");
    private static String result = labeller.newLabel("result");

    private static String false_pred = labeller.newLabel("false-pred");

    public static void declareLabels(ASMCodeFragment frag) {
        frag.add(DLabel, input);
        frag.add(DataZ, 4);
        frag.add(DLabel, length);
        frag.add(DataZ, 4);
        frag.add(DLabel, lambda);
        frag.add(DataZ, 4);
        frag.add(DLabel, index);
        frag.add(DataZ, 4);
        frag.add(DLabel, temp_array);
        frag.add(DataZ, 4);
        frag.add(DLabel, result_length);
        frag.add(DataZ, 4);
        frag.add(DLabel, result);
        frag.add(DataZ, 4);
    }

    private ASMOpcode opcodeForStore(Type type) {
        if (type == PrimitiveType.INTEGER || type == PrimitiveType.STRING || type instanceof ArrayType || type instanceof LambdaType) {
            return StoreI;
        }
        if (type == PrimitiveType.FLOATING || type == PrimitiveType.RATIONAL) {
            return StoreF;
        }
        if (type == PrimitiveType.BOOLEAN || type == PrimitiveType.CHARACTER) {
            return StoreC;
        }
        assert false : "Type " + type + " unimplemented in opcodeForStore()";
        return null;
    }
    private ASMOpcode opcodeForLoad(Type type) {
        if (type == PrimitiveType.INTEGER || type == PrimitiveType.STRING || type instanceof ArrayType || type instanceof LambdaType) {
            return LoadI;
        }
        if (type == PrimitiveType.FLOATING || type == PrimitiveType.RATIONAL) {
            return LoadF;
        }
        if (type == PrimitiveType.BOOLEAN || type == PrimitiveType.CHARACTER) {
            return LoadC;
        }
        if (type == PrimitiveType.NULL) {
            return Nop;
        }
        assert false : "Type " + type + " unimplemented in opcodeForStore()";
        return null;
    }

    @Override
    public ASMCodeFragment generate(ParseNode node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

        //[input-array, lambda-address]
        Macros.storeITo(frag, lambda);
        Macros.storeITo(frag, input);

        Macros.loadIFrom(frag, input);
        frag.add(Call, RECORD_GET_LENGTH);
        Macros.storeITo(frag, length);

        frag.add(PushI, 0);
        Macros.storeITo(frag, index);

        frag.add(PushI, 0);
        Macros.storeITo(frag, result_length);

        ParseNode arrayNode = node.child(0);
        ParseNode lambdaNode = node.child(1);

        LambdaType lambdaType = (LambdaType) lambdaNode.getType();
        Type inputSubType = lambdaType.getParamTypes().get(0);

        Macros.loadIFrom(frag, length);
        frag.add(PushI, inputSubType.getSize());
        frag.add(PushI, Record.generateStatus(false, inputSubType.isReference(), false, false));
        frag.add(PushI, Record.ARRAY_TYPE_IDENTIFIER);     					//[... length subtypeSize status typeid]
        frag.add(Call, Record.RECORD_ALLOCATE_FUNCTION);   					//[... record]
        Macros.storeITo(frag, temp_array);

        ASMCodeFragment loopCode = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
        //update stackptr
        Macros.decStackPtr(loopCode, inputSubType.getSize());

        //place argument
        Macros.loadIFrom(loopCode, RunTime.STACK_POINTER);
        Macros.loadIFrom(loopCode, input);
        Macros.loadIFrom(loopCode, index);
        loopCode.add(Call, Record.RECORD_GET_ELEMENT);
        loopCode.add(opcodeForLoad(inputSubType));
        loopCode.add(opcodeForStore(inputSubType));

        //store old dynamic link without moving stack ptr
        Macros.loadIFrom(loopCode, RunTime.STACK_POINTER);
        loopCode.add(PushI, 4);
        loopCode.add(Subtract);
        Macros.loadIFrom(loopCode, RunTime.FRAME_POINTER);
        loopCode.add(StoreI);
        //post update for stack ptr
        Macros.decStackPtr(loopCode, 4);
        //make room for return address
        Macros.decStackPtr(loopCode, 4);

        //place lambda
        Macros.loadIFrom(loopCode, lambda);
        //call
        loopCode.add(CallV);

        //get returned & restore stack ptr
        Macros.loadIFrom(loopCode, RunTime.STACK_POINTER);
        loopCode.add(opcodeForLoad(PrimitiveType.BOOLEAN));
        Macros.incStackPtr(loopCode, PrimitiveType.BOOLEAN.getSize());

        //if lambda true
        loopCode.add(JumpFalse, false_pred);
        Macros.loadIFrom(loopCode, input);
        Macros.loadIFrom(loopCode, index);
        loopCode.add(Call, Record.RECORD_GET_ELEMENT);
        loopCode.add(opcodeForLoad(inputSubType));
        Macros.loadIFrom(loopCode, temp_array);
        Macros.loadIFrom(loopCode, result_length);
        loopCode.add(Call, Record.RECORD_INIT_ELEMENT);
        Macros.incrementInteger(loopCode, result_length);
        //else false
        loopCode.add(Label, false_pred);
        Macros.runtimeLoop(frag, index, length, loopCode);

        Macros.loadIFrom(frag, result_length);
        frag.add(PushI, inputSubType.getSize());
        frag.add(PushI, Record.generateStatus(false, inputSubType.isReference(), false, false));
        frag.add(PushI, Record.ARRAY_TYPE_IDENTIFIER);     					//[... length subtypeSize status typeid]
        frag.add(Call, Record.RECORD_ALLOCATE_FUNCTION);   					//[... record]
        Macros.storeITo(frag, result);

        frag.add(PushI, 0);
        Macros.storeITo(frag, index);

        ASMCodeFragment loopCode2 = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
        Macros.loadIFrom(loopCode2, temp_array);
        Macros.loadIFrom(loopCode2, index);
        loopCode2.add(Call, Record.RECORD_GET_ELEMENT);
        loopCode2.add(opcodeForLoad(inputSubType));

        Macros.loadIFrom(loopCode2, result);
        Macros.loadIFrom(loopCode2, index);
        loopCode2.add(Call, Record.RECORD_INIT_ELEMENT);
        Macros.runtimeLoop(frag, index, result_length, loopCode2);

        Macros.loadIFrom(frag, temp_array);
        frag.add(Call, Record.RECORD_DEALLOCATE);
        Macros.loadIFrom(frag, result);

        return frag;
    }
}
