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
    private String input;
    private String length;
    private String lambda;
    private String index;
    private String result;
    private String ret;

    private void declareLabels() {
        Labeller labeller = new Labeller("fold");
        input = labeller.newLabel("input-array");
        length = labeller.newLabel("input-length");
        lambda = labeller.newLabel("lambda");
        index = labeller.newLabel("index");
        result = labeller.newLabel("result");

       ret = labeller.newLabel("ret");
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
        ParseNode arrayNode = node.child(0);
        ParseNode lambdaNode = node.child(2);

        LambdaType lambdaType = (LambdaType) lambdaNode.getType();
        Type inputSubType = lambdaType.getParamTypes().get(1);
        Type baseType = lambdaType.getReturnType();

        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        declareLabels();
        frag.add(DLabel, input);
        frag.add(DataZ, 4);
        frag.add(DLabel, length);
        frag.add(DataZ, 4);
        frag.add(DLabel, lambda);
        frag.add(DataZ, 4);
        frag.add(DLabel, index);
        frag.add(DataZ, 4);
        frag.add(DLabel, result);
        frag.add(DataZ, 8);

        //[input-array, lambda-address]
        Macros.storeITo(frag, lambda);
        frag.add(PushD, result);
        frag.add(Exchange);
        frag.add(opcodeForStore(baseType));
        Macros.storeITo(frag, input);

        Macros.loadIFrom(frag, input);
        frag.add(Call, RECORD_GET_LENGTH);
        Macros.storeITo(frag, length);

        //length == 0 return base
        Macros.loadIFrom(frag, length);
        frag.add(JumpFalse, ret);

        frag.add(PushI, 0);
        Macros.storeITo(frag, index);

        ASMCodeFragment loopCode = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
        //update stackptr for arg 1
        Macros.decStackPtr(loopCode, baseType.getSize());
        Macros.loadIFrom(loopCode, RunTime.STACK_POINTER);
        loopCode.add(PushD, result);
        loopCode.add(opcodeForLoad(baseType));
        loopCode.add(opcodeForStore(baseType));

        //update stack ptr for arg 2
        Macros.decStackPtr(loopCode, inputSubType.getSize());
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

        //get returned & restore stack ptr & store at result
        loopCode.add(PushD, result);
        Macros.loadIFrom(loopCode, RunTime.STACK_POINTER);
        loopCode.add(opcodeForLoad(baseType));
        Macros.incStackPtr(loopCode, baseType.getSize());
        loopCode.add(opcodeForStore(baseType));

        Macros.runtimeLoop(frag, index, length, loopCode);

        frag.add(Label, ret);
        frag.add(PushD, result);
        frag.add(opcodeForLoad(baseType));

        return frag;
    }
}
