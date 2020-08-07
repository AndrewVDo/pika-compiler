package asmCodeGenerator.MapReduce;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.Macros;
import asmCodeGenerator.Record;
import asmCodeGenerator.SimpleCodeGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;
import semanticAnalyzer.types.LambdaType;
import semanticAnalyzer.types.Type;

import static asmCodeGenerator.Record.RECORD_GET_LENGTH;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class MapCode implements SimpleCodeGenerator {
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
        Type resultSubType = lambdaType.getReturnType();

        Macros.loadIFrom(frag, length);
        frag.add(PushI, Record.generateStatus(false, resultSubType.isReference(), false, false));
        frag.add(PushI, Record.ARRAY_TYPE_IDENTIFIER);     					//[... length subtypeSize status typeid]
        frag.add(Call, Record.RECORD_ALLOCATE_FUNCTION);   					//[... record]
        Macros.storeITo(frag, result);

        ASMCodeFragment loopCode = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);



        return frag;
    }
}
