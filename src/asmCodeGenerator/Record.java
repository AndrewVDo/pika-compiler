package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;

import java.util.List;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.codeStorage.ASMOpcode.Exchange;
import static asmCodeGenerator.runtime.MemoryManager.MEM_MANAGER_ALLOCATE;
import static asmCodeGenerator.runtime.RunTime.*;

public class Record {
    public final static int STRING_HEADER_SIZE = 12;
    public final static int ARRAY_HEADER_SIZE = 16;

    public final static int ARRAY_TYPE_IDENTIFIER_OFFSET = 0;
    public final static int ARRAY_STATUS_OFFSET = 4;
    public final static int ARRAY_SUBTYPE_SIZE_OFFSET = 8;
    public final static int ARRAY_LENGTH_OFFSET = 12;

    public final static int STRING_TYPE_IDENTIFIER_OFFSET = 0;
    public final static int STRING_STATUS_OFFSET = 4;
    public final static int STRING_LENGTH_OFFSET = 8;

    public final static int STRING_TYPE_IDENTIFIER = 6;
    public final static int ARRAY_TYPE_IDENTIFIER = 7;

    public static ASMCodeFragment allocateArrayRecord(int subtypeSize, ASMCodeFragment lengthCode, boolean isReference) {
        int arrayStatus = generateStatus(false, isReference, false, false);

        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

            frag.append(lengthCode);
            frag.add(PushI, subtypeSize);
            frag.add(PushI, arrayStatus);
            frag.add(PushI, ARRAY_TYPE_IDENTIFIER);     //[... length subtypeSize status typeid]
            frag.add(Call, RECORD_ALLOCATE_FUNCTION);   //[... record]

            return frag;
    }

    public static ASMCodeFragment createArrayRecord(int subtypeSize, int length, boolean isReference, List<ASMCodeFragment> childValueCodes) {
        int arrayStatus = generateStatus(false, isReference, false, false);

        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

            frag.add(PushI, length);
            frag.add(PushI, subtypeSize);
            frag.add(PushI, arrayStatus);
            frag.add(PushI, ARRAY_TYPE_IDENTIFIER);     //[... length subtypeSize status typeid]
            frag.add(Call, RECORD_ALLOCATE_FUNCTION);   //[... record]

            for(int i=0; i<childValueCodes.size(); i++) {
                frag.add(Duplicate);                    //[... record record]
                frag.append(childValueCodes.get(i));    //[... record record element]
                frag.add(Exchange);                     //[... record element record]
                frag.add(PushI);                        //[... record element record index]
                frag.add(Call, RECORD_SET_ELEMENT);     //[... record]
            }

        return frag;
    }



    public static ASMCodeFragment printCode(String format) { //calls runtime print function
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VOID);

        Macros.loadIFrom(frag, PRINT_BASE); //save base arg
        frag.add(Exchange);
        Macros.storeITo(frag, PRINT_BASE); //store base arg
        Macros.loadIFrom(frag, PRINT_ARRAY_LENGTH); //save arguments
        Macros.loadIFrom(frag, PRINT_ARRAY_SUBTYPE_SIZE);
        Macros.loadIFrom(frag, PRINT_INDEX);
        Macros.loadIFrom(frag, PRINT_ARRAY_FORMAT);

        frag.append(getHeader(ARRAY_LENGTH_OFFSET));
        Macros.storeITo(frag, PRINT_ARRAY_LENGTH);
        frag.append(getHeader(ARRAY_SUBTYPE_SIZE_OFFSET));
        Macros.storeITo(frag, PRINT_ARRAY_SUBTYPE_SIZE);
        frag.add(PushI, 0);
        Macros.storeITo(frag, PRINT_INDEX);             //all old arguments saved, new arguments in location
        frag.add(PushD, format);
        Macros.storeITo(frag, PRINT_ARRAY_FORMAT);

        //[... oldBase oldLength oldSubsize oldIndex oldPrintFormat]
        frag.add(Call, PRINT_ARRAY_FUNCTION); //does not alter stack

        Macros.storeITo(frag, PRINT_ARRAY_FORMAT); //restore from stack
        Macros.storeITo(frag, PRINT_INDEX);
        Macros.storeITo(frag, PRINT_ARRAY_SUBTYPE_SIZE);
        Macros.storeITo(frag, PRINT_ARRAY_LENGTH);
        Macros.storeITo(frag, PRINT_BASE);

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


    public static ASMCodeFragment getElement(ASMCodeFragment indexCode) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_ADDRESS);
                                                // [... BASE]
            frag.append(indexCode);             //[... BASE INDEX]
            frag.add(Call, RECORD_GET_ELEMENT); //[... INDEXED_ADDRESS]
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


    private static void checkNullPtrCode(ASMCodeFragment frag) {
        frag.add(Duplicate);
        frag.add(JumpFalse, NULL_PTR_RUNTIME_ERROR);
        frag.add(Duplicate);
        frag.add(Call, RECORD_CHECK_DELETED);
        frag.add(JumpTrue, DELETED_RECORD_RUNTIME_ERROR);
    }

    public static final String RECORD_GET_HEADER_INFO_FUNCTION = "$record-get-header-info-fn";
    public static final void runtimeGetHeaderInfo(ASMCodeFragment frag) { //helper
        Macros.declareI(frag, RECORD_GET_HEADER_INFO_FUNCTION + "-caller");
        frag.add(Label, RECORD_GET_HEADER_INFO_FUNCTION);   //[... BASE_ADDRESS OFFSET RETURN_ADDRESS]
            Macros.storeITo(frag, RECORD_GET_HEADER_INFO_FUNCTION + "-caller");

            frag.add(Add);                                      //[... OFFSET_ADDRESS]
            frag.add(LoadI);                                    //[... HEADER_INFO]

        Macros.loadIFrom(frag,RECORD_GET_HEADER_INFO_FUNCTION + "-caller");
        frag.add(Return);
    }
        public static final String RECORD_GET_TYPE_ID = "$record-get-type-id-fn";
        public static final void runtimeGetTypeId(ASMCodeFragment frag) {
            Macros.declareI(frag, RECORD_GET_TYPE_ID + "-caller");
            frag.add(Label, RECORD_GET_TYPE_ID);        //[... BASE_ADDRESS RETURN_ADDRESS]
                Macros.storeITo(frag, RECORD_GET_TYPE_ID + "-caller");

                checkNullPtrCode(frag);
                frag.add(PushI, ARRAY_TYPE_IDENTIFIER_OFFSET);                         //[... BASE_ADDRESS OFFSET]
                frag.add(Call, RECORD_GET_HEADER_INFO_FUNCTION);    //[... INFO]

            Macros.loadIFrom(frag, RECORD_GET_TYPE_ID + "-caller");
            frag.add(Return);
        }
        public static final String RECORD_GET_STATUS = "$record-get-status-fn";
        public static final void runtimeGetStatus(ASMCodeFragment frag) {
            Macros.declareI(frag, RECORD_GET_STATUS + "-caller");
            frag.add(Label, RECORD_GET_STATUS);
                Macros.storeITo(frag, RECORD_GET_STATUS + "-caller");

                checkNullPtrCode(frag);
                frag.add(PushI, ARRAY_STATUS_OFFSET);                         //[... BASE_ADDRESS OFFSET]
                frag.add(Call, RECORD_GET_HEADER_INFO_FUNCTION);    //[... INFO]

            Macros.loadIFrom(frag, RECORD_GET_STATUS + "-caller");
            frag.add(Return);
        }
            public static final String RECORD_STATUS_CHECK = "$record-check-status"; //shared between the status checkers
            public static final String RECORD_CHECK_IMMUTABLE = "$record-check-immutable";
            public static final String RECORD_CHECK_REFERENCE = "$record-check-reference";
            public static final String RECORD_CHECK_DELETED = "$record-check-deleted";
            public static final String RECORD_CHECK_PERMANENT = "$record-check-permanent";
            public static final void runtimeStatusCheckers(ASMCodeFragment frag) {
                Macros.declareI(frag, RECORD_STATUS_CHECK + "-caller");

                frag.add(Label, RECORD_CHECK_IMMUTABLE);        //[... BASE_ADDRESS]
                    Macros.storeITo(frag, RECORD_STATUS_CHECK + "-caller");

                    frag.add(Call, RECORD_GET_STATUS);              //[... STATUS]
                    frag.add(PushI, 1);                     //[... STATUS 0x00000001]
                    frag.add(BTAnd);                                //[... BIT_ON?]

                Macros.loadIFrom(frag, RECORD_STATUS_CHECK + "-caller");
                frag.add(Return);

                frag.add(Label, RECORD_CHECK_REFERENCE);
                    Macros.storeITo(frag, RECORD_STATUS_CHECK + "-caller");

                    frag.add(Call, RECORD_GET_STATUS);
                    frag.add(PushI, 2);
                    frag.add(BTAnd);

                Macros.loadIFrom(frag, RECORD_STATUS_CHECK + "-caller");
                frag.add(Return);


                frag.add(Label, RECORD_CHECK_DELETED);
                    Macros.storeITo(frag, RECORD_STATUS_CHECK + "-caller");

                    frag.add(Call, RECORD_GET_STATUS);
                    frag.add(PushI, 4);
                    frag.add(BTAnd);

                Macros.loadIFrom(frag, RECORD_STATUS_CHECK + "-caller");
                frag.add(Return);

                frag.add(Label, RECORD_CHECK_PERMANENT);
                    Macros.storeITo(frag, RECORD_STATUS_CHECK + "-caller");

                    frag.add(Call, RECORD_GET_STATUS);
                    frag.add(PushI, 8);
                    frag.add(BTAnd);

                Macros.loadIFrom(frag, RECORD_STATUS_CHECK + "-caller");
                frag.add(Return);
            }
        public static final String RECORD_GET_SUBTYPE_SIZE = "$record-get-subtype-size-fn";
        public static final void runtimeGetSubtypeSize(ASMCodeFragment frag) {
            Macros.declareI(frag, RECORD_GET_SUBTYPE_SIZE + "-caller");
            frag.add(Label, RECORD_GET_SUBTYPE_SIZE);           //[... BASE_ADDRESS]
                Macros.storeITo(frag, RECORD_GET_SUBTYPE_SIZE + "-caller");

                checkNullPtrCode(frag);
                frag.add(PushI, ARRAY_SUBTYPE_SIZE_OFFSET);         //[... BASE_ADDRESS OFFSET]
                frag.add(Call, RECORD_GET_HEADER_INFO_FUNCTION);    //[... INFO]
//                frag.add(Duplicate);                                //[... BASE_ADDRESS BASE_ADDRESS]
//                frag.add(Call, RECORD_GET_TYPE_ID);                 //[... BASE_ADDRESS TYPE_ID]
//                frag.add(PushI, ARRAY_TYPE_IDENTIFIER);             //[... BASE_ADDRESS TYPE_ID ARRAY_ID]
//                frag.add(Subtract);                                 //[... BASE_ADDRESS ARRAY_ID?]
//                frag.add(JumpTrue, RECORD_GET_SUBTYPE_SIZE + "-not-array");
//                    frag.add(PushI, ARRAY_SUBTYPE_SIZE_OFFSET);         //[... BASE_ADDRESS OFFSET]
//                    frag.add(Call, RECORD_GET_HEADER_INFO_FUNCTION);    //[... SUBTYPE_SIZE]
//                    frag.add(Jump, RECORD_GET_SUBTYPE_SIZE + "-return");
//                frag.add(Label, RECORD_GET_SUBTYPE_SIZE + "-not-array");
//                    frag.add(Pop);                                      //[...]
//                    frag.add(PushI, 1);                         //[... 1]

//            frag.add(Label, RECORD_GET_SUBTYPE_SIZE + "-return");
            Macros.loadIFrom(frag, RECORD_GET_SUBTYPE_SIZE + "-caller");
            frag.add(Return);
        }
        public static final String RECORD_GET_LENGTH = "$record-get-length";
        public static final void runtimeGetLength(ASMCodeFragment frag) {
            Macros.declareI(frag, RECORD_GET_LENGTH + "-caller");
            frag.add(Label, RECORD_GET_LENGTH);                 //[... BASE_ADDRESS RETURN_ADDRESS]
                Macros.storeITo(frag, RECORD_GET_LENGTH + "-caller");

                checkNullPtrCode(frag);
                frag.add(PushI, ARRAY_LENGTH_OFFSET);               //[... BASE_ADDRESS OFFSET]
                frag.add(Call, RECORD_GET_HEADER_INFO_FUNCTION);    //[... INFO]
//                frag.add(Duplicate);                                //[... BASE_ADDRESS BASE_ADDRESS]
//                frag.add(Call, RECORD_GET_TYPE_ID);         //[... BASE_ADDRESS TYPE_ID]
//                frag.add(PushI, ARRAY_TYPE_IDENTIFIER);             //[... BASE_ADDRESS TYPE_ID ARRAY_ID]
//                frag.add(Subtract);                                 //[... BASE_ADDRESS ARRAY_ID?]
//                frag.add(JumpTrue, RECORD_GET_LENGTH + "-not-array");
//                    frag.add(PushI, ARRAY_LENGTH_OFFSET);               //[... BASE_ADDRESS OFFSET]
//                    frag.add(Jump, RECORD_GET_LENGTH + "-return");
//                frag.add(Label, RECORD_GET_LENGTH + "-not-array");
//                    frag.add(PushI, STRING_LENGTH_OFFSET);              //[... BASE_ADDRESS OFFSET]
//
//            frag.add(Label, RECORD_GET_LENGTH + "-return");
//            frag.add(Call, RECORD_GET_HEADER_INFO_FUNCTION);        //[... LENGTH]
            Macros.loadIFrom(frag,RECORD_GET_LENGTH +"-caller");
            frag.add(Return);
        }
    public static final String RECORD_GET_ELEMENT = "$record-get-element-fn";
    public static final void runtimeGetElement(ASMCodeFragment frag) {
        Macros.declareI(frag, RECORD_GET_ELEMENT + "-caller");
        Macros.declareI(frag, RECORD_GET_ELEMENT + "-base-var");
        Macros.declareI(frag, RECORD_GET_ELEMENT + "-index-var");
        Macros.declareI(frag, RECORD_GET_ELEMENT + "-subtype-var");
        Macros.declareI(frag, RECORD_GET_ELEMENT + "-length-var");
        frag.add(Label, RECORD_GET_ELEMENT);            //[... BASE INDEX CALLER]
            Macros.storeITo(frag, RECORD_GET_ELEMENT + "-caller");
            Macros.storeITo(frag, RECORD_GET_ELEMENT + "-index-var");
            checkNullPtrCode(frag);
            Macros.storeITo(frag, RECORD_GET_ELEMENT + "-base-var");

            //check deleted
            Macros.loadIFrom(frag, RECORD_GET_ELEMENT + "-base-var");
            frag.add(Call, RECORD_CHECK_DELETED);
            frag.add(JumpTrue, DELETED_RUNTIME_ERROR);

            Macros.loadIFrom(frag, RECORD_GET_ELEMENT + "-base-var");
            frag.add(Call, RECORD_GET_SUBTYPE_SIZE);
            Macros.storeITo(frag, RECORD_GET_ELEMENT + "-subtype-var");

            Macros.loadIFrom(frag, RECORD_GET_ELEMENT + "-base-var");
            frag.add(Call, RECORD_GET_LENGTH);
            Macros.storeITo(frag, RECORD_GET_ELEMENT + "-length-var");

            //check index negative
            Macros.loadIFrom(frag, RECORD_GET_ELEMENT + "-index-var");
            frag.add(JumpNeg, INDEX_RUNTIME_ERROR);

            //check index >= length
            Macros.loadIFrom(frag, RECORD_GET_ELEMENT + "-index-var");
            Macros.loadIFrom(frag, RECORD_GET_ELEMENT + "-length-var");
            frag.add(Subtract);
            frag.add(Duplicate);
            frag.add(JumpFalse, INDEX_RUNTIME_ERROR);
            frag.add(JumpPos, INDEX_RUNTIME_ERROR);

            //get header size
            Macros.loadIFrom(frag, RECORD_GET_ELEMENT + "-base-var");
            frag.add(Call, RECORD_GET_TYPE_ID);
            frag.add(PushI, ARRAY_TYPE_IDENTIFIER);
            frag.add(Subtract);
            frag.add(JumpTrue, RECORD_GET_ELEMENT + "-not-array");
                frag.add(PushI, ARRAY_LENGTH_OFFSET);
            frag.add(Jump, RECORD_GET_ELEMENT + "-endif");
            frag.add(Label, RECORD_GET_ELEMENT + "-not-array");
                frag.add(PushI, STRING_LENGTH_OFFSET);
            frag.add(Label, RECORD_GET_ELEMENT + "-endif");

            //get other vars
            Macros.loadIFrom(frag, RECORD_GET_ELEMENT + "-index-var");
            Macros.loadIFrom(frag, RECORD_GET_ELEMENT + "-subtype-var");

            //calculate offset
            frag.add(Multiply);
            frag.add(Add);

            //apply offset to base
            Macros.loadIFrom(frag, RECORD_GET_ELEMENT + "-base-var");
            frag.add(Add);

        Macros.loadIFrom(frag, RECORD_GET_ELEMENT + "-caller");
        frag.add(Return);
    }
    public static final String RECORD_SET_ELEMENT = "$record-set-element-fn";
    public static final void runtimeSetElement(ASMCodeFragment frag) {
        Macros.declareI(frag, RECORD_SET_ELEMENT + "-caller");
        Macros.declareI(frag, RECORD_SET_ELEMENT + "-base-var");
        Macros.declareI(frag, RECORD_SET_ELEMENT + "-index-var");
        Macros.declareI(frag, RECORD_SET_ELEMENT + "-subtype-var");
        frag.add(Label, RECORD_SET_ELEMENT);                        //[... ELEMENT BASE INDEX]
            Macros.storeITo(frag, RECORD_SET_ELEMENT + "-caller");
            Macros.storeITo(frag, RECORD_SET_ELEMENT + "-index-var");
            Macros.storeITo(frag, RECORD_SET_ELEMENT + "-base-var"); //[... ELEMENT]

            Macros.loadIFrom(frag, RECORD_SET_ELEMENT + "-base-var");
            frag.add(Call, RECORD_GET_LENGTH);
            Macros.storeITo(frag, RECORD_SET_ELEMENT + "-subtype-var");

            //check immutable
            Macros.loadIFrom(frag, RECORD_SET_ELEMENT + "-base-var");
            frag.add(Call, RECORD_CHECK_IMMUTABLE);
            frag.add(JumpPos, IMMUTABLE_RUNTIME_ERROR);
            //is deleted checked by getElement

            //get proper index address
            Macros.loadIFrom(frag, RECORD_SET_ELEMENT + "-base-var");
            Macros.loadIFrom(frag, RECORD_SET_ELEMENT + "-index-var");
            frag.add(Call, RECORD_GET_ELEMENT);
            frag.add(Exchange);                             //[... address element]

            //find proper store command
            frag.add(PushI, 8);
            Macros.loadIFrom(frag, RECORD_SET_ELEMENT);
            frag.add(Subtract);
            frag.add(JumpPos, RECORD_SET_ELEMENT + "-not-float");
            frag.add(StoreF);
            frag.add(Jump, RECORD_SET_ELEMENT + "-end-if");

            frag.add(Label, RECORD_SET_ELEMENT + "-not-float");
            frag.add(PushI, 4);
            Macros.loadIFrom(frag, ARRAY_SUBTYPE_SIZE);
            frag.add(Subtract);
            frag.add(JumpPos, RECORD_SET_ELEMENT + "-not-int");
            frag.add(StoreI);
            frag.add(Jump, RECORD_SET_ELEMENT + "-endif");

            frag.add(Label, RECORD_SET_ELEMENT + "-not-int");
            frag.add(StoreC);

            frag.add(Label, RECORD_SET_ELEMENT + "-end-if");

        Macros.loadIFrom(frag, RECORD_SET_ELEMENT + "-caller");
        frag.add(Return);
    }

    public static final String RECORD_ALLOCATE_FUNCTION = "$record-allocate-fn";
    public static final void runtimeAllocateRecord(ASMCodeFragment frag) {
        //[... length subtypeSize status typeid]
        Macros.declareI(frag, RECORD_ALLOCATE_FUNCTION + "-caller");
        Macros.declareI(frag, RECORD_ALLOCATE_FUNCTION + "-header-var");
        Macros.declareI(frag, RECORD_ALLOCATE_FUNCTION + "-status-var");
        Macros.declareI(frag, RECORD_ALLOCATE_FUNCTION + "-subtype-var");
        Macros.declareI(frag, RECORD_ALLOCATE_FUNCTION + "-length-var");
        Macros.declareI(frag, RECORD_ALLOCATE_FUNCTION + "-base-res");
        frag.add(Label, RECORD_ALLOCATE_FUNCTION);
            Macros.storeITo(frag, RECORD_ALLOCATE_FUNCTION + "-caller");
            Macros.storeITo(frag, RECORD_ALLOCATE_FUNCTION + "-header-var");
            Macros.storeITo(frag, RECORD_ALLOCATE_FUNCTION + "-status-var");
            Macros.storeITo(frag, RECORD_ALLOCATE_FUNCTION + "-subtype-var");
                //check neg length
                frag.add(Duplicate);
                frag.add(JumpNeg, ALLOC_NEGATIVE_SIZE_RUNTIME_ERROR);
            Macros.storeITo(frag, RECORD_ALLOCATE_FUNCTION + "-length-var");

            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-length-var");
            frag.add(Call, MEM_MANAGER_ALLOCATE);
            Macros.storeITo(frag, RECORD_ALLOCATE_FUNCTION + "-base-res");

            //set typeid
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-header-var");
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-base-res");
            Macros.writeIOffset(frag, ARRAY_TYPE_IDENTIFIER_OFFSET);

            //set status
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-status-var");
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-base-res");
            Macros.writeIOffset(frag, ARRAY_STATUS_OFFSET);

            //set subtype size
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-subtype-var");
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-base-res");
            Macros.writeIOffset(frag, ARRAY_SUBTYPE_SIZE_OFFSET);

            //set length size
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-length-var");
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-base-res");
            Macros.writeIOffset(frag, ARRAY_LENGTH_OFFSET);

        Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-base-res");
        Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-caller");
        frag.add(Return);
    }
    public static final String RECORD_CLONE_FUNCTION = "$record-clone-fn";
    public static final void runtimeCloneRecord(ASMCodeFragment frag) {
        Macros.declareI(frag, RECORD_CLONE_FUNCTION + "-caller");
        Macros.declareI(frag, RECORD_CLONE_FUNCTION + "-base-var");
        Macros.declareI(frag, RECORD_CLONE_FUNCTION + "-clone-res");
        Macros.declareI(frag, RECORD_CLONE_FUNCTION + "-loop-index");
        frag.add(Label, RECORD_CLONE_FUNCTION);
            checkNullPtrCode(frag);
            Macros.storeITo(frag, RECORD_CLONE_FUNCTION + "-base-var");

            //add header info to stack
            Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-base-var");
            frag.add(Duplicate);
            Macros.storeITo(frag, RECORD_CLONE_FUNCTION + "-length-var");
            frag.add(Call, RECORD_GET_LENGTH);                      //[... length]

            Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-base-var");
            frag.add(Duplicate);
            Macros.storeITo(frag, RECORD_CLONE_FUNCTION + "-subtype-var");
            frag.add(Call, RECORD_GET_SUBTYPE_SIZE);                //[... length subtypeSize]

            Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-base-var");
            frag.add(Call, RECORD_GET_STATUS);                      //[... length subtypeSize status]

            Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-base-var");
            frag.add(Call, RECORD_GET_TYPE_ID);                     //[... length subtypeSize status typeid]

            //allocate
            frag.add(Call, RECORD_ALLOCATE_FUNCTION);               //[... clone]
            Macros.storeITo(frag, RECORD_CLONE_FUNCTION + "-clone-res");

            //set data
            frag.add(PushI, 0);
            Macros.storeITo(frag, RECORD_CLONE_FUNCTION + "-clone-index");

            //loop conditional
            frag.add(Label, RECORD_CLONE_FUNCTION + "-loop-begin");
            Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-loop-index");
            Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-length-var");
            frag.add(Subtract);
            frag.add(JumpFalse, RECORD_CLONE_FUNCTION + "-loop-end");

                //get element
                Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-base-var");
                Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-loop-index");
                frag.add(Call, RECORD_GET_ELEMENT);

                    //load float/rational
                    frag.add(PushI, 8);
                    Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-subtype-var");
                    frag.add(Subtract);
                    frag.add(JumpPos, RECORD_CLONE_FUNCTION + "-not-float");
                    frag.add(LoadF);
                    frag.add(Jump, RECORD_CLONE_FUNCTION + "-end-if");

                    //load int
                    frag.add(Label, RECORD_CLONE_FUNCTION + "-not-float");
                    frag.add(PushI, 4);
                    Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-subtype-var");
                    frag.add(Subtract);
                    frag.add(JumpPos, RECORD_CLONE_FUNCTION + "-not-int");
                    frag.add(LoadF);
                    frag.add(Jump, RECORD_CLONE_FUNCTION + "-end-if");

                    //load char
                    frag.add(Label, RECORD_CLONE_FUNCTION + "-not-int");
                    frag.add(LoadC);

                //store element
                frag.add(Label, RECORD_CLONE_FUNCTION + "-end-if"); //[... element]
                Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-clone-res");
                Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-loop-index");
                frag.add(Call, RECORD_SET_ELEMENT); //todo immutable bypass

            Macros.incrementInteger(frag, RECORD_CLONE_FUNCTION + "-loop-index");
            frag.add(Jump, RECORD_CLONE_FUNCTION + "-loop-begin");
            frag.add(Label, RECORD_CLONE_FUNCTION + "-loop-end");

        Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-clone-res");
        Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-caller");
    }
}
