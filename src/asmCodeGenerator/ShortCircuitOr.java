package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;

public class ShortCircuitOr implements ShortCircuitCondition {
    @Override
    public ASMCodeFragment generate(ParseNode node, ASMCodeFragment left, ASMCodeFragment right) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

        Labeller labeller = new Labeller("bool-or");
        String arg1Label = labeller.newLabel("arg1");
        String arg2Label = labeller.newLabel("arg2");
        String trueLabel = labeller.newLabel("true-condition");
        String falseLabel = labeller.newLabel("false-condition");
        String endLabel = labeller.newLabel("end");

        frag.add(Label, arg1Label);
        frag.append(left);
        frag.add(JumpTrue, trueLabel);
        frag.add(PushI, 0);
        frag.add(Label, arg2Label);
        frag.append(right);
        frag.add(Or);
        frag.add(JumpTrue, trueLabel);
        frag.add(Jump, falseLabel);
        frag.add(Label, trueLabel);
        frag.add(PushI, 1);
        frag.add(Jump, endLabel);
        frag.add(Label, falseLabel);
        frag.add(PushI, 0);
        frag.add(Label, endLabel);

        return frag;
    }
}


