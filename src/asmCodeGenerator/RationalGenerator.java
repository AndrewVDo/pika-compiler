package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

import java.awt.*;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.runtime.RunTime.*;

public class RationalGenerator implements SimpleCodeGenerator {
    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        //[... numerator denominator]

        frag.add(PushD, RATIONAL_TEMP);
        Macros.writeIOffset(frag, 4);;

        frag.add(PushD, RATIONAL_TEMP);
        Macros.writeIOffset(frag, 0);

        Macros.loadFFrom(frag, RATIONAL_TEMP);
        //[... rationalTemp]
        return frag;
    }

    private static final void funcInitHelper(ASMCodeFragment frag, String functionName) {
        Macros.declareI(frag, functionName + "-caller");
        Macros.declareI(frag, functionName + "-address");
        frag.add(Label, functionName);
            Macros.storeITo(frag, functionName + "-caller");
            Macros.storeITo(frag, functionName + "-address");
    }
    private static final void funcReturnCaller(ASMCodeFragment frag, String functionName) {
        Macros.loadIFrom(frag, functionName + "-caller");
        frag.add(Return);
    }
    private static final void getNumeratorHelper(ASMCodeFragment frag, String functionName) {
        Macros.loadIFrom(frag, functionName + "-address");
        Macros.readIOffset(frag, 0);
    }
    private static final void getDenominatorHelper(ASMCodeFragment frag, String functionName) {
        Macros.loadIFrom(frag, functionName + "-address");
        Macros.readIOffset(frag, 4);
    }
    private static final void getNumeratorAbsoluteHelper(ASMCodeFragment frag, String functionName) {
        Labeller l = new Labeller("absolute");
        String l1 = l.newLabel("bypass");

        getNumeratorHelper(frag, functionName);
        frag.add(Duplicate);
        frag.add(JumpPos, functionName + l1);
        frag.add(Negate);
        frag.add(Label, functionName + l1);
    }
    private static final void getDenominatorAbsoluteHelper(ASMCodeFragment frag, String functionName) {
        Labeller l = new Labeller("absolute");
        String l1 = l.newLabel("bypass");

        getDenominatorHelper(frag, functionName);
        frag.add(Duplicate);
        frag.add(JumpPos, functionName + l1);
        frag.add(Negate);
        frag.add(Label, functionName + l1);
    }
    private static final void isNegativeHelper(ASMCodeFragment frag, String functionName) {
        Labeller l = new Labeller("negative-check");
        String l1 = l.newLabel("pos1");
        String l2 = l.newLabel("pos2");
        //[...]
        frag.add(PushI, 0); //number of negatives
        getNumeratorHelper(frag, functionName);
            frag.add(JumpPos, functionName + l1);
            frag.add(PushI, 1);
            frag.add(Add);
            frag.add(Label, functionName + l1);
        getDenominatorHelper(frag, functionName);
            frag.add(JumpPos, functionName + l2);
            frag.add(PushI, 1);
            frag.add(Add);
            frag.add(Label, functionName + l2);
        frag.add(PushI, 1);
        frag.add(BTAnd);
        //[... isResultNegative?]
    }
    private static final void wholeHelper(ASMCodeFragment frag, String functionName) {
        Labeller l = new Labeller("whole-negate");
        String l1 = l.newLabel("bypass");

        getNumeratorHelper(frag, functionName);
        getDenominatorHelper(frag, functionName);
            frag.add(Divide);
        frag.add(Duplicate);
            frag.add(JumpPos, functionName + l1);
            frag.add(Negate);
            frag.add(Label, functionName + l1);
    }
    private static final void numeratorExtractHelper(ASMCodeFragment frag, String functionName) {
        wholeHelper(frag, functionName);
        getDenominatorAbsoluteHelper(frag, functionName);
            frag.add(Multiply);
        getNumeratorAbsoluteHelper(frag, functionName);
            frag.add(Exchange);
            frag.add(Subtract);
    }


    public static final String RATIONAL_PRINT = "$rational-print";
    public static final String NEGATIVE_STRING = "$negative-string";
    public static final String RATIONAL_PREFIX = "$rational-prefix";
    public static final String RATIONAL_DIVIDER = "$rational-divider";
    public static final void runtimeRationalPrint(ASMCodeFragment frag) {
        frag.add(DLabel, NEGATIVE_STRING);
        frag.add(DataS, "-");
        frag.add(DLabel, RATIONAL_PREFIX);
        frag.add(DataS, "_");
        frag.add(DLabel, RATIONAL_DIVIDER);
        frag.add(DataS, "/");
        funcInitHelper(frag, RATIONAL_PRINT);
            isNegativeHelper(frag, RATIONAL_PRINT);
            frag.add(JumpFalse, RATIONAL_PRINT + "not-neg");
                frag.add(PushD, NEGATIVE_STRING);
                frag.add(PushD, STRING_PRINT_FORMAT);
                frag.add(Printf);
            frag.add(Label, RATIONAL_PRINT + "not-neg");
            wholeHelper(frag, RATIONAL_PRINT);
                frag.add(JumpFalse, RATIONAL_PRINT + "not-whole");
                wholeHelper(frag, RATIONAL_PRINT);
                frag.add(PushD, INTEGER_PRINT_FORMAT);
                frag.add(Printf);
            frag.add(Label, RATIONAL_PRINT + "not-whole");
            frag.add(PushD, RATIONAL_PREFIX);
            frag.add(PushD, STRING_PRINT_FORMAT);
            frag.add(Printf);
        numeratorExtractHelper(frag, RATIONAL_PRINT);
            frag.add(PushD, INTEGER_PRINT_FORMAT);
            frag.add(Printf);
        frag.add(PushD, RATIONAL_DIVIDER);
            frag.add(PushD, STRING_PRINT_FORMAT);
            frag.add(Printf);
        getDenominatorAbsoluteHelper(frag, RATIONAL_PRINT);
            frag.add(PushD, INTEGER_PRINT_FORMAT);
            frag.add(Printf);

        funcReturnCaller(frag, RATIONAL_PRINT);
    }
}
