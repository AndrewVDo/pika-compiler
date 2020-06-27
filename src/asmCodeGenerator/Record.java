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
    public static int STRING_SUBTYPE_OFFSET = 8;

    public static int ARRAY_TYPE_IDENTIFIER = 7;

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

    public static ASMCodeFragment setHeader(int value, int offset) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
        frag.add(Duplicate);                                // [... base] -> [... base base]
        frag.add(PushI, value);                             // [... base base] -> [... base base value]
        frag.add(Exchange);                                 // [... base base value] -> [... base value base]
        Macros.writeIOffset(frag, offset);                  // [... base value base] -> [... base]
        return frag;
    }
    public static ASMCodeFragment getHeader(int offset) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);
        frag.add(Duplicate);            // [... base] -> [... base base]
        frag.add(PushI, offset);        // [... base base] -> [... base base offset]
        frag.add(Add);                  // [... base base] -> [... base address]
        frag.add(LoadI);                // [... base address] -> [... base header-info]
        return frag;
    }

    public static ASMCodeFragment setElement(int index, ASMCodeFragment valueCode) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);
        frag.append(getHeader(ARRAY_SUBTYPE_SIZE_OFFSET));                      // [... base] -> [... base subtypeSize]
        frag.add(PushI, index);                                                 // [... base subtypeSize] -> [... base subtypeSize index]
        frag.add(Multiply);                                                     // [... base subtypeSize index] -> [... base subtypeSize*index]
        frag.add(PushI, ARRAY_HEADER_SIZE);                                     // [... base subtypeSize*index] -> [... base subtypeSize*index headerOffset]
        frag.add(Add);                                                          // [... base subtypeSize*index+headerOffset]
        frag.append(valueCode);
        frag.add(StoreI); //todo 4byte only
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

    //public static ASMCodeFragment setElement(){}
}
