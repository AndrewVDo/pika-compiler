package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;

import java.util.List;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.codeStorage.ASMOpcode.Exchange;
import static asmCodeGenerator.runtime.MemoryManager.MEM_MANAGER_ALLOCATE;

public class Record {
    public static int TYPE_IDENTIFIER_SIZE = 4;
    public static int STATUS_SIZE = 4;
    public static int SUBTYPE_SIZE = 4;
    public static int LENGTH_SIZE = 4;

    public static int STRING_HEADER_SIZE = 12;
    public static int ARRAY_HEADER_SIZE = 16;

    public static int ARRAY_TYPE_IDENTIFIER_OFFSET = 0;
    public static int ARRAY_STATUS_OFFSET = 4;
    public static int ARRAY_SUBTYPE_SIZE_OFFSET = 8;
    public static int ARRAY_LENGTH_OFFSET = 12;

    public static int STRING_TYPE_IDENTIFIER_OFFSET = 0;
    public static int STRING_STATUS_OFFSET = 4;
    public static int STRING_LENGTH_OFFSET = 8;

    public static int STRING_TYPE_IDENTIFIER = 6;
    public static int ARRAY_TYPE_IDENTIFIER = 7;

    public static ASMCodeFragment allocateArrayRecord(int subtypeSize, ASMCodeFragment lengthCode, boolean isReference) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

        int arrayStatus = generateStatus(false, isReference, false, false);

        frag.append(lengthCode);
        frag.add(PushI, subtypeSize);
        frag.add(Multiply);
        frag.add(PushI, ARRAY_HEADER_SIZE);
        frag.add(Add);
        frag.add(Call, MEM_MANAGER_ALLOCATE); // [memblock]

        frag.append(setHeader(ARRAY_TYPE_IDENTIFIER, ARRAY_TYPE_IDENTIFIER_OFFSET));
        frag.append(setHeader(arrayStatus, ARRAY_STATUS_OFFSET));
        frag.append(setHeader(subtypeSize, ARRAY_SUBTYPE_SIZE_OFFSET));
        //frag.append(setHeader(length, ARRAY_LENGTH_OFFSET));
        frag.add(Duplicate);
        frag.add(PushI, ARRAY_LENGTH_OFFSET);
        frag.add(Add);
        frag.append(lengthCode);
        frag.add(StoreI);

        //todo set to 0
        return frag;
    }

    public static ASMCodeFragment createArrayRecord(int subtypeSize, int length, boolean isReference) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

        int arrayStatus = generateStatus(false, isReference, false, false);

        frag.add(PushI, length * subtypeSize + ARRAY_HEADER_SIZE);
        frag.add(Call, MEM_MANAGER_ALLOCATE); // [memblock]

        frag.append(setHeader(ARRAY_TYPE_IDENTIFIER, ARRAY_TYPE_IDENTIFIER_OFFSET));
        frag.append(setHeader(arrayStatus, ARRAY_STATUS_OFFSET));
        frag.append(setHeader(subtypeSize, ARRAY_SUBTYPE_SIZE_OFFSET));
        frag.append(setHeader(length, ARRAY_LENGTH_OFFSET));

        return frag;
    }
    public static ASMCodeFragment createStringRecord(int length) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

        int stringStatus = generateStatus(true, false, false, true);

        frag.add(PushI, length * 1 + STRING_HEADER_SIZE);
        frag.add(Call, MEM_MANAGER_ALLOCATE); // [memblock]

        frag.append(setHeader(STRING_TYPE_IDENTIFIER, STRING_TYPE_IDENTIFIER_OFFSET));
        frag.append(setHeader(stringStatus, STRING_STATUS_OFFSET));
        frag.append(setHeader(length, STRING_LENGTH_OFFSET));

        return frag;
    }

    private static ASMCodeFragment setHeader(int value, int offset) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
        frag.add(Duplicate);                                // [... base] -> [... base base]
        frag.add(PushI, value);                             // [... base base value]
        frag.add(Exchange);                                 // [... base value base]
        Macros.writeIOffset(frag, offset);                  // [... base]
        return frag;
    }
    public static ASMCodeFragment getHeader(int offset) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        frag.add(Duplicate);                // [... base] -> [... base base]
        Macros.readIOffset(frag, offset);   // [... base headerInfo]
        return frag;
    }
        private static ASMCodeFragment checkTypeIdentifier(int compareValue) {
            ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
            frag.append(getHeader(0));                  // [... base] -> [... base typeIdentifier];
            frag.add(PushI, compareValue);                    // [... base typeIdentifier compareValue];
            frag.add(Subtract);                               // [... base NOT(typeIdentifier == compareValue)
            frag.add(BNegate);                                // [... base (typeIdentifier == compareValue)]
            return frag;
        }
            public static ASMCodeFragment isArrayRecord() {
                return checkTypeIdentifier(ARRAY_TYPE_IDENTIFIER);
            }
            public static ASMCodeFragment isStringRecord() {
                return checkTypeIdentifier(STRING_TYPE_IDENTIFIER);
            }
        private static ASMCodeFragment statusChecker(int selectedBit) {
            ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
            frag.append(getHeader(4));      // [... base] -> [... base Status]
            frag.add(PushI, (1 << selectedBit));  // [... base Status bitMask]
            frag.add(BTAnd);                      // [... base isBitOn]
            return frag;
        }
            public static ASMCodeFragment isImmutable() {
                return statusChecker(0);
            }
            public static ASMCodeFragment isReference() {
                return statusChecker(1);
            }
            public static ASMCodeFragment isDeleted() {
                return statusChecker(2);
            }
            public static ASMCodeFragment isPermanent() {
                return statusChecker(3);
            }
        public static ASMCodeFragment getLength() {
            ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

            Labeller labeller = new Labeller("get-length");
            String arrayLengthLabel = labeller.newLabel("array-length");
            String stringLengthLabel = labeller.newLabel("string-length");
            String endLabel = labeller.newLabel("end");

            frag.append(isArrayRecord());                   // [... base] -> [... base isArray]
            frag.add(JumpFalse, stringLengthLabel);         // [... base]
            frag.add(Label, arrayLengthLabel);
            frag.append(getHeader(ARRAY_LENGTH_OFFSET));    // [... base arrayLength]
            frag.add(Jump, endLabel);

            frag.add(Label, stringLengthLabel);
            frag.append(getHeader(STRING_LENGTH_OFFSET));   // [... base stringLength]

            frag.add(Label, endLabel);

            return frag;
        }
        public static ASMCodeFragment getSubtypeSize() {
            ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

            Labeller labeller = new Labeller("get-subtype-size");
            String arrayLengthLabel = labeller.newLabel("array-subtype-size");
            String stringLengthLabel = labeller.newLabel("string-subtype-size");
            String endLabel = labeller.newLabel("end");

            frag.append(isArrayRecord());                           // [... base] -> [... base isArray]
            frag.add(JumpFalse, stringLengthLabel);                 // [... base]
            frag.add(Label, arrayLengthLabel);
            frag.append(getHeader(ARRAY_SUBTYPE_SIZE_OFFSET));      // [... base arraySubtypeSize]
            frag.add(Jump, endLabel);

            frag.add(Label, stringLengthLabel);
            frag.add(PushI, 1);                             // [... base stringSubtypeSize]

            frag.add(Label, endLabel);

            return frag;
        }

//    public static ASMCodeFragment setElement(int index, ASMCodeFragment valueCode) {
//        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
//        frag.append(getSubtypeSize());                                          // [... base index] -> [... base subtypeSize]
//        frag.add(PushI, index);                                                 // [... base subtypeSize] -> [... base subtypeSize index]
//        frag.add(Multiply);                                                     // [... base subtypeSize index] -> [... base subtypeSize*index]
//        frag.add(PushI, ARRAY_HEADER_SIZE);                                     // [... base subtypeSize*index] -> [... base subtypeSize*index headerOffset]
//        frag.add(Add);                                                          // [... base subtypeSize*index+headerOffset]
//        frag.append(valueCode);
//        frag.add(StoreI); //todo 4byte only
//        return frag;
//    }

    public static ASMCodeFragment getElement(ASMCodeFragment indexCode) {
        //for array only
        //todo check index
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_ADDRESS);
        frag.append(getSubtypeSize());                                      // [... base] -> [... base subTypeSize]
        frag.append(indexCode);                                             // [... base subTypeSize index]
        frag.add(Multiply);                                                 // [... base indexOffset]
        frag.add(PushI, ARRAY_HEADER_SIZE);                                 // [... base indexOffset headerOffset]
        frag.add(Add);                                                      // [... base totalOffset]
        frag.add(Add);                                                      // [... indexedAddress]
        //frag.add(LoadI);

//        frag.append(getSubtypeSize());                                      // [... indexedAddress subTypeSize]
//        frag.add(PushI, 8);                                                  // [... indexedAddress subTypeSize 8]
//        frag.add(Subtract);                                                 // [... indexedAddress NOT(subType == 8)]
//        frag.add(BNegate);                                                   // [... indexedAddress (subType == 8)]
//
//        frag.append(getSubtypeSize());                                      // [... indexedAddress subTypeSize]
//        frag.add(PushI, 4);                                                     // [... indexedAddress subTypeSize 4]
//        frag.add(Subtract);                                                 // [... indexedAddress NOT(subType == 4)]
//        frag.add(BNegate);                                                   // [... indexedAddress (subType == 4)]
//
//        frag.append(getSubtypeSize());                                      // [... indexedAddress subTypeSize]
//        frag.add(PushI, 1);                                                   // [... indexedAddress subTypeSize 1]
//        frag.add(Subtract);                                                 // [... indexedAddress NOT(subType == 1)]
//        frag.add(BNegate);                                                   // [... indexedAddress (subType == 1)]

        return frag;
    }


    private static int generateStatus(boolean isImmutable, boolean isReference, boolean isDeleted, boolean isPermanent) {
        int status = 0;
        if(isImmutable) {
            status = status | (1 << 0);
        }
        if(isReference) {
            status = status | (1 << 1);
        }
        if(isDeleted) {
            status = status | (1 << 2);
        }
        if(isPermanent) {
            status = status | (1 << 3);
        }
        return status;
    }

    public static ASMCodeFragment initializeArray(List<ASMCodeFragment> valueCode) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);

        for(int i=0; i<valueCode.size(); i++) {
            frag.add(Duplicate);                                                // [... base] -> [... base base]
            frag.append(valueCode.get(i));                                      // [base, base] -> [base, base, datum]
            frag.add(Exchange);                                                 // [base, base, datum] -> [base, datum, base]
            Macros.writeIOffset(frag, ARRAY_HEADER_SIZE + 4 * i);         // [base]
        }

        return frag;
    }
}
