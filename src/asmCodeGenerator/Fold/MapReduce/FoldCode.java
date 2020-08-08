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

public class FoldCode implements SimpleCodeGenerator {
    private static Labeller labeller = new Labeller("map");
    private static String input = labeller.newLabel("input-array");
    private static String length = labeller.newLabel("input-length");
    private static String lambda = labeller.newLabel("lambda");
    private static String index = labeller.newLabel("index");
    private static String result = labeller.newLabel("result");

    public static void declareLabels(ASMCodeFragment frag) {
        frag.add(DLabel, input);
        frag.add(DataZ, 4);
        frag.add(DLabel, length);
        frag.add(DataZ, 4);
        frag.add(DLabel, lambda);
        frag.add(DataZ, 4);
        frag.add(DLabel, index);
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

        ParseNode arrayNode = node.child(0);
        ParseNode lambdaNode = node.child(1);

        LambdaType lambdaType = (LambdaType) lambdaNode.getType();
        Type inputSubType = lambdaType.getParamTypes().get(0);
        Type resultSubType = lambdaType.getReturnType();

        Macros.loadIFrom(frag, length);
        frag.add(PushI, resultSubType.getSize());
        frag.add(PushI, Record.generateStatus(false, resultSubType.isReference(), false, false));
        frag.add(PushI, Record.ARRAY_TYPE_IDENTIFIER);     					//[... length subtypeSize status typeid]
        frag.add(Call, Record.RECORD_ALLOCATE_FUNCTION);   					//[... record]
        Macros.storeITo(frag, result);

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
        loopCode.add(opcodeForLoad(resultSubType));
        Macros.incStackPtr(loopCode, resultSubType.getSize());

        //set the result at index
        Macros.loadIFrom(loopCode, result);
        Macros.loadIFrom(loopCode, index);
        loopCode.add(Call, Record.RECORD_INIT_ELEMENT);
        Macros.runtimeLoop(frag, index, length, loopCode);

        Macros.loadIFrom(frag, result);

        return frag;
    }
}
