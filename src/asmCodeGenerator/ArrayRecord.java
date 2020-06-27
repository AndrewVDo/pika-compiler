//package asmCodeGenerator;
//
//import asmCodeGenerator.codeStorage.ASMCodeFragment;
//import parseTree.ParseNode;
//import semanticAnalyzer.types.ArrayType;
//import semanticAnalyzer.types.Type;
//
//import java.util.List;
//
//import static asmCodeGenerator.codeStorage.ASMOpcode.*;
//import static asmCodeGenerator.runtime.MemoryManager.MEM_MANAGER_ALLOCATE;
//
//public class ArrayRecord extends RecordGenerator{
//    private int subtypeSize;
//    private int length;
//
//    ArrayRecord(Type type, int length) {
//        this.typeIdentifier = 7;
//
//        this.isImmutable = false;
//        //this.isReference = type.getIsReference();
//        this.isPermanent = false;
//        this.isDeleted = false;
//        this.isPermanent = false;
//
//        this.subtypeSize = type.getSize();
//        this.length = length;
//    }
//
//    public ASMCodeFragment generateASM() {
//        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_ADDRESS);
//        Labeller labeller = new Labeller("array-record");
//        String typeIdentifierLabel = labeller.newLabel("type-identifier");
//        String statusLabel = labeller.newLabel("status");
//        String subtypeSizeLabel = labeller.newLabel("subtype-size");
//        String lengthLabel = labeller.newLabel("length");
//        String elementsLabel = labeller.newLabel("elements");
//
//        frag.add(PushI, this.generateHeaderSize());
//        frag.add(Call, MEM_MANAGER_ALLOCATE); // [memblock]
//
//        frag.add(Duplicate); // [memblock, memblock]
//        frag.add(PushI, this.typeIdentifier); // [memblock, memblock, typeIdentifier-info]
//        frag.add(Exchange); // [membloc, typeId, membloc]
//        Macros.writeIOffset(frag, 0); // [memblock], writes typeIdentifier-info to first 4 bytes
//
//        frag.add(Duplicate); // [memblock, memblock]
//        frag.add(PushI, this.generateStatus()); // [memblock, memblock, status-info]
//        frag.add(Exchange); // [membloc, typeId, membloc]
//        Macros.writeIOffset(frag, 4); // [memblock], writes typeIdentifier-info to second 4 bytes
//
//        frag.add(Duplicate); // [memblock, memblock]
//        frag.add(PushI, this.subtypeSize); // [memblock, memblock, subtypesize-info]
//        frag.add(Exchange); // [membloc, subtypesize, membloc]
//        Macros.writeIOffset(frag, 8); // [memblock], writes subtypesize-info to third 4 bytes
//
//        frag.add(Duplicate); // [memblock, memblock]
//        frag.add(PushI, this.length); // [memblock, memblock, length-info]
//        frag.add(Exchange); // [membloc, length, membloc]
//        Macros.writeIOffset(frag, 12); // [memblock], writes length-info to fourth 4 bytes
//
//        return frag;
//    }
//
//    public ASMCodeFragment setElement(int index, ASMCodeFragment value) {
//        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
//        if(index < 0 || index >= this.length) {
//            System.out.println("index error");
//            return frag;
//        }
//        frag.add(Duplicate); // [base, base]
//        frag.append(value);  // [base, base, datum]
//        frag.add(Exchange);  // [base, datum, base]
//        Macros.writeIOffset(frag, 12 + this.subtypeSize * index); // [base]
//        return frag;
//    }
//
//    public static int getLengthOffset() {
//        return 12;
//    }
//
//    @Override
//    public int generateHeaderSize() {
//        return 16 + (this.length * this.subtypeSize);
//    }
//}
