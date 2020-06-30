package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.runtime.RunTime;

import java.util.List;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.codeStorage.ASMOpcode.Exchange;
import static asmCodeGenerator.runtime.MemoryManager.MEM_MANAGER_ALLOCATE;
import static asmCodeGenerator.runtime.RunTime.*;

public class Record {
    private final static int STRING_HEADER_SIZE = 12;
    private final static int ARRAY_HEADER_SIZE = 16;

    private final static int ARRAY_TYPE_IDENTIFIER_OFFSET = 0;
    private final static int ARRAY_STATUS_OFFSET = 4;
    private final static int ARRAY_SUBTYPE_SIZE_OFFSET = 8;
    private final static int ARRAY_LENGTH_OFFSET = 12;

    private final static int STRING_TYPE_IDENTIFIER_OFFSET = 0;
    private final static int STRING_STATUS_OFFSET = 4;
    private final static int STRING_LENGTH_OFFSET = 8;

    private final static int STRING_TYPE_IDENTIFIER = 6;
    private final static int ARRAY_TYPE_IDENTIFIER = 7;

    public static ASMCodeFragment allocateArrayRecord(int subtypeSize, ASMCodeFragment lengthCode, boolean isReference) {
        int arrayStatus = generateStatus(false, isReference, false, false);

        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

        frag.append(lengthCode);                                                                //[... prevBase length]
        Macros.storeITo(frag, ARRAY_LENGTH);                                                    //[... prevBase]

        Macros.loadIFrom(frag, ARRAY_LENGTH);                                                   //[... prevBase length]
        frag.add(JumpNeg, ALLOC_NEGATIVE_SIZE_RUNTIME_ERROR);                                   //[... prevBase]

        frag.add(PushI, subtypeSize);                                                           //[... prevBase subTypeSize]
        Macros.storeITo(frag, ARRAY_SUBTYPE_SIZE);                                              //[... prevBase]

        Macros.loadIFrom(frag, ARRAY_LENGTH);                                                   //[... prevBase length]
        Macros.loadIFrom(frag, ARRAY_SUBTYPE_SIZE);                                             //[... prevBase length subtypeSize]
        frag.add(Multiply);                                                                     //[... prevBase contentsSize]

        frag.add(PushI, ARRAY_HEADER_SIZE);                                                     //[... prevBase contentsSize headerSize
        frag.add(Add);                                                                          //[... prevBase totalSize]
        frag.add(Call, MEM_MANAGER_ALLOCATE);                                                   //[... prevBase newBase]
        Macros.saveArrayBase(frag);                                                             //[... prevBase]

        frag.append(setHeader(ARRAY_TYPE_IDENTIFIER, ARRAY_TYPE_IDENTIFIER_OFFSET));
        frag.append(setHeader(arrayStatus, ARRAY_STATUS_OFFSET));
        frag.append(setHeader(subtypeSize, ARRAY_SUBTYPE_SIZE_OFFSET));

        Macros.loadIFrom(frag, ARRAY_LENGTH);                                                   //[... prevBase length]
        Macros.loadIFrom(frag, ARRAY_BASE);                                                     //[... prevBase length base]
        Macros.writeIOffset(frag, ARRAY_LENGTH_OFFSET);                                         //[... prevBase]

        //todo initialize to 0
        Macros.loadIFrom(frag, ARRAY_BASE);                                                     //[... prevBase newBase]
        Macros.resultCodeRestoreArrayBase(frag);                                                //[... newBase]
        return frag;
    }

    public static ASMCodeFragment createArrayRecord(int subtypeSize, int length, boolean isReference, List<ASMCodeFragment> childValueCodes) {
        int arrayStatus = generateStatus(false, isReference, false, false);

        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

        frag.add(PushI, length * subtypeSize + ARRAY_HEADER_SIZE);                      //[... prevBase allocateSize]
        frag.add(Call, MEM_MANAGER_ALLOCATE);                                                   //[... prevBase newBase]
        Macros.saveArrayBase(frag);                                                             //[... prevBase]

        frag.append(setHeader(ARRAY_TYPE_IDENTIFIER, ARRAY_TYPE_IDENTIFIER_OFFSET));            //[... prevBase]
        frag.append(setHeader(arrayStatus, ARRAY_STATUS_OFFSET));                               //[... prevBase]
        frag.append(setHeader(subtypeSize, ARRAY_SUBTYPE_SIZE_OFFSET));                         //[... prevBase]
        frag.append(setHeader(length, ARRAY_LENGTH_OFFSET));                                    //[... prevBase]

        frag.append(initializeArray(childValueCodes, subtypeSize));                             //[... prevBase]
        Macros.loadIFrom(frag, ARRAY_BASE);                                                     //[... prevBase newBase]
        Macros.resultCodeRestoreArrayBase(frag);                                                //[... newBase]
        return frag;
    }

    public static ASMCodeFragment cloneRecord() {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        Macros.saveArrayBase(frag);                             //[... prevBase]

        frag.append(getHeader(ARRAY_LENGTH_OFFSET));            //[... prevBase length]
        Macros.storeITo(frag, ARRAY_LENGTH);                    //[... prevBase]
        frag.append(getSubtypeSize());                          //[... prevBase subtypeSize]
        Macros.storeITo(frag, ARRAY_SUBTYPE_SIZE);              //[... prevBase]

        frag.add(PushI, ARRAY_HEADER_SIZE);                     //[... prevBase headerSize]
        Macros.loadIFrom(frag, ARRAY_LENGTH);                   //[... prevBase headerSize length]
        Macros.loadIFrom(frag, ARRAY_SUBTYPE_SIZE);             //[... prevBase headerSize length subtypeSize]
        frag.add(Multiply);                                     //[... prevBase headerSize dataSize]
        frag.add(Add);                                          //[... prevBase totalSize]

        frag.add(Call, MEM_MANAGER_ALLOCATE);                   //[... prevBase newBase]
        Macros.storeITo(frag, ARRAY_CLONE);                     //[... prevBase]

        frag.append(setCloneHeader(ARRAY_TYPE_IDENTIFIER_OFFSET));
        frag.append(setCloneHeader(ARRAY_STATUS_OFFSET));
        frag.append(setCloneHeader(ARRAY_SUBTYPE_SIZE_OFFSET));
        frag.append(setCloneHeader(ARRAY_LENGTH_OFFSET));

        frag.append(setCloneData());
        Macros.loadIFrom(frag, ARRAY_CLONE);
        Macros.resultCodeRestoreArrayBase(frag);

        return frag;
    }
    private static ASMCodeFragment setCloneHeader(int offset) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
        Macros.loadIFrom(frag, ARRAY_CLONE);                // [... cloneBase]
        frag.append(getHeader(offset));                     // [... cloneBase headerInfo]
        frag.add(Exchange);                                 // [... headerInfo cloneBase]
        Macros.writeIOffset(frag, offset);                  // [...]
        return frag;
    }
    private static ASMCodeFragment setCloneData() {
        Labeller l = new Labeller("clone-record");
        String loopBegin = l.newLabel("loop-begin");
        String loopEnd = l.newLabel("loop-end");
        String notFloat = l.newLabel("not-float");
        String notInt = l.newLabel("not-int");
        String endIf = l.newLabel("end-if");
        String notFloat2 = l.newLabel("not-float2");
        String notInt2 = l.newLabel("not-int2");
        String endIf2 = l.newLabel("end-if2");

        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
        frag.add(PushI, 0);                              //[... 0]
        Macros.storeITo(frag, INDEX);                     //[...]


        frag.add(Label, loopBegin);
        Macros.loadIFrom(frag, INDEX);
        Macros.loadIFrom(frag, ARRAY_LENGTH);
        frag.add(Subtract);                                     //[... length-i]
        frag.add(JumpFalse, loopEnd);

            Macros.loadIFrom(frag, ARRAY_BASE);
            frag.add(PushI, ARRAY_HEADER_SIZE);
            Macros.loadIFrom(frag, INDEX);
            Macros.loadIFrom(frag, ARRAY_SUBTYPE_SIZE);
            frag.add(Multiply);
            frag.add(Add);
            frag.add(Add);                                      //[... originalIndex]


            frag.add(PushI, 8);
            Macros.loadIFrom(frag, ARRAY_SUBTYPE_SIZE);
            frag.add(Subtract);
            frag.add(JumpPos, notFloat);
            frag.add(LoadF);                                    //... Mem[originalIndex]
            frag.add(Jump, endIf);

            frag.add(Label, notFloat);
            frag.add(PushI, 4);
            Macros.loadIFrom(frag, ARRAY_SUBTYPE_SIZE);
            frag.add(Subtract);
            frag.add(JumpPos, notInt);
            frag.add(LoadI);                                    //... Mem[originalIndex]
            frag.add(Jump, endIf);

            frag.add(Label, notInt);
            frag.add(LoadC);                                    //... Mem[originalIndex]

            frag.add(Label, endIf);

            Macros.loadIFrom(frag, ARRAY_CLONE);
            frag.add(PushI, ARRAY_HEADER_SIZE);
            Macros.loadIFrom(frag, INDEX);
            Macros.loadIFrom(frag, ARRAY_SUBTYPE_SIZE);
            frag.add(Multiply);
            frag.add(Add);
            frag.add(Add);                                      //[... Mem[originalIndex] cloneIndex]
            frag.add(Exchange);

            frag.add(PushI, 8);
            Macros.loadIFrom(frag, ARRAY_SUBTYPE_SIZE);
            frag.add(Subtract);
            frag.add(JumpPos, notFloat2);
            frag.add(StoreF);
            frag.add(Jump, endIf2);

            frag.add(Label, notFloat2);
            frag.add(PushI, 4);
            Macros.loadIFrom(frag, ARRAY_SUBTYPE_SIZE);
            frag.add(Subtract);
            frag.add(JumpPos, notInt2);
            frag.add(StoreI);
            frag.add(Jump, endIf2);

            frag.add(Label, notInt2);
            frag.add(StoreC);

            frag.add(Label, endIf2);

            Macros.incrementInteger(frag, INDEX);

        frag.add(Jump, loopBegin);
        frag.add(Label, loopEnd);

        return frag;
    }
    public static ASMCodeFragment printCode(String format) {
        Labeller l = new Labeller("clone-record");
        String loopBegin = l.newLabel("loop-begin");
        String loopEnd = l.newLabel("loop-end");
        String notFloat = l.newLabel("not-float");
        String notInt = l.newLabel("not-int");
        String endIf = l.newLabel("end-if");
        String dontSeperate = l.newLabel("dont-seperate");

        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
        Macros.saveArrayBase(frag);

        frag.append(getHeader(ARRAY_LENGTH_OFFSET));
        Macros.storeITo(frag, ARRAY_LENGTH);
        frag.append(getHeader(ARRAY_SUBTYPE_SIZE_OFFSET));
        Macros.storeITo(frag, ARRAY_SUBTYPE_SIZE);

        frag.add(PushD, OPEN_BRACKET_STRING);
        frag.add(PushD, STRING_PRINT_FORMAT);
        frag.add(Printf);

        frag.add(PushI, 0);                        //[... 0]
        Macros.storeITo(frag, INDEX);                     //[...]

        frag.add(Label, loopBegin);
        Macros.loadIFrom(frag, INDEX);
        Macros.loadIFrom(frag, ARRAY_LENGTH);
        frag.add(Subtract);                                     //[... length-i]
        frag.add(JumpFalse, loopEnd);

            Macros.loadIFrom(frag, ARRAY_BASE);
            frag.add(PushI, ARRAY_HEADER_SIZE);
            Macros.loadIFrom(frag, INDEX);
            Macros.loadIFrom(frag, ARRAY_SUBTYPE_SIZE);
            frag.add(Multiply);
            frag.add(Add);
            frag.add(Add);                                      //[... originalIndex]

            frag.add(PushI, 8);
            Macros.loadIFrom(frag, ARRAY_SUBTYPE_SIZE);
            frag.add(Subtract);
            frag.add(JumpPos, notFloat);
            frag.add(LoadF);                                    //... Mem[originalIndex]
            frag.add(Jump, endIf);

            frag.add(Label, notFloat);
            frag.add(PushI, 4);
            Macros.loadIFrom(frag, ARRAY_SUBTYPE_SIZE);
            frag.add(Subtract);
            frag.add(JumpPos, notInt);
            frag.add(LoadI);                                    //... Mem[originalIndex]
            frag.add(Jump, endIf);

            frag.add(Label, notInt);
            frag.add(LoadC);                                    //... Mem[originalIndex]

            frag.add(Label, endIf);

            frag.add(PushD, format);
            frag.add(Printf);

            Macros.incrementInteger(frag, INDEX);

            Macros.loadIFrom(frag, INDEX);
            Macros.loadIFrom(frag, ARRAY_LENGTH);
            frag.add(Subtract);
            frag.add(JumpFalse, dontSeperate);
            frag.add(PushD, ARRAY_SEPERATION_STRING);
            frag.add(PushD, STRING_PRINT_FORMAT);
            frag.add(Printf);
            frag.add(Label, dontSeperate);

        frag.add(Jump, loopBegin);
        frag.add(Label, loopEnd);

        frag.add(PushD, CLOSE_BRACKET_STRING);
        frag.add(PushD, STRING_PRINT_FORMAT);
        frag.add(Printf);

        Macros.nullCodeRestoreArrayBase(frag);

        return frag;
    }

    public static ASMCodeFragment createStringRecord(int length) {//todo update for new stack principle
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
        Macros.loadIFrom(frag, ARRAY_BASE);                 // [... base]
        frag.add(PushI, value);                             // [... base value]
        frag.add(Exchange);                                 // [... value base]
        Macros.writeIOffset(frag, offset);                  // [...]
        return frag;
    }
    private static ASMCodeFragment getHeader(int offset) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        Macros.loadIFrom(frag, ARRAY_BASE);                 // [... base]
        Macros.readIOffset(frag, offset);                   // [... headerInfo]
        return frag;
    }
        private static ASMCodeFragment checkTypeIdentifier(int compareValue) {
            ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
            frag.append(getHeader(0));                  // [... typeIdentifier];
            frag.add(PushI, compareValue);                    // [... typeIdentifier compareValue];
            frag.add(Subtract);                               // [... NOT(typeIdentifier == compareValue)
            frag.add(BNegate);                                // [... (typeIdentifier == compareValue)]
            return frag;
        }
            private static ASMCodeFragment isArrayRecord() {
                return checkTypeIdentifier(ARRAY_TYPE_IDENTIFIER);
            }
            private static ASMCodeFragment isStringRecord() {
                return checkTypeIdentifier(STRING_TYPE_IDENTIFIER);
            }
        private static ASMCodeFragment statusChecker(int selectedBit) {
            ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
            frag.append(getHeader(4));      // [... Status]
            frag.add(PushI, (1 << selectedBit));  // [... Status bitMask]
            frag.add(BTAnd);                      // [... isBitOn]
            return frag;
        }
            private static ASMCodeFragment isImmutable() {
                return statusChecker(0);
            }
            private static ASMCodeFragment isReference() {
                return statusChecker(1);
            }
            private static ASMCodeFragment isDeleted() {
                return statusChecker(2);
            }
            private static ASMCodeFragment isPermanent() {
                return statusChecker(3);
            }
        public static ASMCodeFragment getLength() {
            Labeller labeller = new Labeller("get-length");
            String arrayLengthLabel = labeller.newLabel("array-length");
            String stringLengthLabel = labeller.newLabel("string-length");
            String endLabel = labeller.newLabel("end");

            ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

            Macros.saveArrayBase(frag);                     // [... prevBase base]
            Macros.loadIFrom(frag, ARRAY_BASE);             // [... prevBase base]
            frag.append(isArrayRecord());                   // [... prevBase isArray]
            frag.add(JumpFalse, stringLengthLabel);         // [... prevBase]
            frag.add(Label, arrayLengthLabel);
            frag.append(getHeader(ARRAY_LENGTH_OFFSET));    // [... prevBase arrayLength]
            frag.add(Jump, endLabel);

            frag.add(Label, stringLengthLabel);
            frag.append(getHeader(STRING_LENGTH_OFFSET));   // [... prevBase stringLength]

            frag.add(Label, endLabel);

            Macros.resultCodeRestoreArrayBase(frag);        // [... length]
            return frag;
        }
        private static ASMCodeFragment getSubtypeSize() {
            ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

            Labeller labeller = new Labeller("get-subtype-size");
            String arrayLengthLabel = labeller.newLabel("array-subtype-size");
            String stringLengthLabel = labeller.newLabel("string-subtype-size");
            String endLabel = labeller.newLabel("end");

            frag.append(isArrayRecord());                           // [... isArray]
            frag.add(JumpFalse, stringLengthLabel);                 // [...]
            frag.add(Label, arrayLengthLabel);
            frag.append(getHeader(ARRAY_SUBTYPE_SIZE_OFFSET));      // [... arraySubtypeSize]
            frag.add(Jump, endLabel);

            frag.add(Label, stringLengthLabel);
            frag.add(PushI, 1);                             // [... stringSubtypeSize]

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

    public static ASMCodeFragment getElement(ASMCodeFragment indexCode) {//todo function sig
        //for array only

        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_ADDRESS);
        Macros.saveArrayBase(frag);                                         // [... prevBase]

        frag.append(getSubtypeSize());                                      // [... prevBase subTypeSize]
        frag.append(indexCode);                                             // [... prevBase subTypeSize index]

            frag.add(Duplicate);                                            // [... prevBase subTypeSize index index]
            frag.add(JumpNeg, INDEX_RUNTIME_ERROR);                         // [... prevBase subTypeSize index
            frag.add(Duplicate);                                            // [... prevBase subTypeSize index index]
            frag.append(getHeader(ARRAY_LENGTH_OFFSET));                    // [... prevBase subTypeSize index index length]
            frag.add(Subtract);                                             // [... prevBase subTypeSize index (index-length)]
            frag.add(Duplicate);                                            // [... prevBase subTypeSize index (index-length) (index-length)]
            frag.add(JumpFalse, INDEX_RUNTIME_ERROR);                       // [... prevBase subTypeSize index (index-length)]
            frag.add(JumpPos, INDEX_RUNTIME_ERROR);                         // [... prevBase subTypeSize index]

        frag.add(Multiply);                                                 // [... prevBase indexOffset]
        frag.add(PushI, ARRAY_HEADER_SIZE);                                 // [... prevBase indexOffset headerOffset]
        frag.add(Add);                                                      // [... prevBase totalOffset]
        Macros.loadIFrom(frag, ARRAY_BASE);                                 // [... prevBase totalOffset base]

        frag.add(Add);                                                      // [... prevBase indexedAddress]
        Macros.resultCodeRestoreArrayBase(frag);                            // [... indexedAddress]
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

    private static ASMCodeFragment initializeArray(List<ASMCodeFragment> valueCode, int subtypeSize) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);

        for(int i=0; i<valueCode.size(); i++) {
            Macros.loadIFrom(frag, ARRAY_BASE);                                 // [... base]
            frag.append(valueCode.get(i));                                      // [... base data]
            frag.add(Exchange);                                                 // [... data, base]

            int offset = ARRAY_HEADER_SIZE + subtypeSize * i;
            if(subtypeSize == 8) Macros.writeFOffset(frag, offset);
            else if(subtypeSize == 4) Macros.writeIOffset(frag, offset);
            else Macros.writeIOffset(frag, offset);                             // [...]
        }

        return frag;
    }
}
