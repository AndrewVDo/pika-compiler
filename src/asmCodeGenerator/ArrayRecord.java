package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import semanticAnalyzer.types.Type;

public class ArrayRecord extends RecordGenerator{
    private int subtypeSize;
    private int length;

    ArrayRecord(Type type, int length) {
        this.typeIdentifier = 7;

        this.isImmutable = false;
        this.isReference = type.getIsReference();
        this.isDeleted = false;
        this.isPermanent = false;

        this.subtypeSize = type.getSize();
        this.length = length;
    }

    public ASMCodeFragment generateASM() {
        ASMCodeFragment fragment = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_ADDRESS);
        Labeller labeller = new Labeller("array-record");
        String typeIdentifierLabel = labeller.newLabel("type-identifier");
        String statusLabel = labeller.newLabel("status");
        String subtypeSizeLabel = labeller.newLabel("subtype-size");
        String lengthLabel = labeller.newLabel("length");
        String elementsLabel = labeller.newLabel("elements");

        fragment.add()

        return fragment;
    }
}
