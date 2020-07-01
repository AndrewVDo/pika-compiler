package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.runtime.MemoryManager.MEM_MANAGER_ALLOCATE;
import static asmCodeGenerator.runtime.RunTime.*;

public class Record {
    public final static int RECORD_HEADER_SIZE = 16;

    public final static int RECORD_TYPE_IDENTIFIER_OFFSET = 0;
    public final static int RECORD_STATUS_OFFSET = 4;
    public final static int RECORD_SUBTYPE_SIZE_OFFSET = 8;
    public final static int RECORD_LENGTH_OFFSET = 12;

    public final static int STRING_TYPE_IDENTIFIER = 6;
    public final static int ARRAY_TYPE_IDENTIFIER = 7;


    public static final int generateStatus(boolean isImmutable, boolean isReference, boolean isDeleted, boolean isPermanent) {
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
                frag.add(PushI, RECORD_TYPE_IDENTIFIER_OFFSET);                         //[... BASE_ADDRESS OFFSET]
                frag.add(Call, RECORD_GET_HEADER_INFO_FUNCTION);    //[... INFO]

            Macros.loadIFrom(frag, RECORD_GET_TYPE_ID + "-caller");
            frag.add(Return);
        }
        public static final String RECORD_GET_STATUS = "$record-get-status-fn";
        public static final void runtimeGetStatus(ASMCodeFragment frag) {
            Macros.declareI(frag, RECORD_GET_STATUS + "-caller");
            frag.add(Label, RECORD_GET_STATUS);
                Macros.storeITo(frag, RECORD_GET_STATUS + "-caller");

                frag.add(PushI, RECORD_STATUS_OFFSET);                         //[... BASE_ADDRESS OFFSET]
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
                frag.add(PushI, RECORD_SUBTYPE_SIZE_OFFSET);         //[... BASE_ADDRESS OFFSET]
                frag.add(Call, RECORD_GET_HEADER_INFO_FUNCTION);    //[... INFO]

            Macros.loadIFrom(frag, RECORD_GET_SUBTYPE_SIZE + "-caller");
            frag.add(Return);
        }
        public static final String RECORD_GET_LENGTH = "$record-get-length";
        public static final void runtimeGetLength(ASMCodeFragment frag) {
            Macros.declareI(frag, RECORD_GET_LENGTH + "-caller");
            frag.add(Label, RECORD_GET_LENGTH);                 //[... BASE_ADDRESS RETURN_ADDRESS]
                Macros.storeITo(frag, RECORD_GET_LENGTH + "-caller");

                checkNullPtrCode(frag);
                frag.add(PushI, RECORD_LENGTH_OFFSET);               //[... BASE_ADDRESS OFFSET]
                frag.add(Call, RECORD_GET_HEADER_INFO_FUNCTION);    //[... INFO]

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

            //get other vars
            frag.add(PushI, RECORD_HEADER_SIZE);
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
            checkNullPtrCode(frag);
            Macros.storeITo(frag, RECORD_SET_ELEMENT + "-base-var"); //[... ELEMENT]

            Macros.loadIFrom(frag, RECORD_SET_ELEMENT + "-base-var");
            frag.add(Call, RECORD_GET_SUBTYPE_SIZE);
            Macros.storeITo(frag, RECORD_SET_ELEMENT + "-subtype-var");

            //check immutable
            Macros.loadIFrom(frag, RECORD_SET_ELEMENT + "-base-var");
            frag.add(Call, RECORD_CHECK_IMMUTABLE);
            frag.add(JumpPos, IMMUTABLE_RECORD_RUNTIME_ERROR);
            //is deleted checked by getElement

            //get proper index address
            Macros.loadIFrom(frag, RECORD_SET_ELEMENT + "-base-var");
            Macros.loadIFrom(frag, RECORD_SET_ELEMENT + "-index-var");
            frag.add(Call, RECORD_GET_ELEMENT);
            frag.add(Exchange);                             //[... address element]

            //find proper store command
            frag.add(PushI, 8);
            Macros.loadIFrom(frag, RECORD_SET_ELEMENT + "-subtype-var");
            frag.add(Subtract);
            frag.add(JumpPos, RECORD_SET_ELEMENT + "-not-float");
            frag.add(StoreF);
            frag.add(Jump, RECORD_SET_ELEMENT + "-end-if");

            frag.add(Label, RECORD_SET_ELEMENT + "-not-float");
            frag.add(PushI, 4);
            Macros.loadIFrom(frag, RECORD_SET_ELEMENT + "-subtype-var");
            frag.add(Subtract);
            frag.add(JumpPos, RECORD_SET_ELEMENT + "-not-int");
            frag.add(StoreI);
            frag.add(Jump, RECORD_SET_ELEMENT + "-end-if");

            frag.add(Label, RECORD_SET_ELEMENT + "-not-int");
            frag.add(StoreC);

            frag.add(Label, RECORD_SET_ELEMENT + "-end-if");

        Macros.loadIFrom(frag, RECORD_SET_ELEMENT + "-caller");
        frag.add(Return);
    }
    public static final String RECORD_INIT_ELEMENT = "$record-init-element-fn";
    public static final void runtimeInitElement(ASMCodeFragment frag) {
        Macros.declareI(frag, RECORD_INIT_ELEMENT + "-caller");
        Macros.declareI(frag, RECORD_INIT_ELEMENT + "-base-var");
        Macros.declareI(frag, RECORD_INIT_ELEMENT + "-index-var");
        Macros.declareI(frag, RECORD_INIT_ELEMENT + "-subtype-var");
        frag.add(Label, RECORD_INIT_ELEMENT);                        //[... ELEMENT BASE INDEX]
        Macros.storeITo(frag, RECORD_INIT_ELEMENT + "-caller");
        Macros.storeITo(frag, RECORD_INIT_ELEMENT + "-index-var");

        checkNullPtrCode(frag);
        Macros.storeITo(frag, RECORD_INIT_ELEMENT + "-base-var"); //[... ELEMENT]

        Macros.loadIFrom(frag, RECORD_INIT_ELEMENT + "-base-var");
        frag.add(Call, RECORD_GET_SUBTYPE_SIZE);
        Macros.storeITo(frag, RECORD_INIT_ELEMENT + "-subtype-var");
        //get proper index address
        Macros.loadIFrom(frag, RECORD_INIT_ELEMENT + "-base-var");
        Macros.loadIFrom(frag, RECORD_INIT_ELEMENT + "-index-var");
        frag.add(Call, RECORD_GET_ELEMENT);
        frag.add(Exchange);                             //[... address element]

        //find proper store command
        frag.add(PushI, 8);
        Macros.loadIFrom(frag, RECORD_INIT_ELEMENT + "-subtype-var");
        frag.add(Subtract);
        frag.add(JumpPos, RECORD_INIT_ELEMENT + "-not-float");
        frag.add(StoreF);
        frag.add(Jump, RECORD_INIT_ELEMENT + "-end-if");

        frag.add(Label, RECORD_INIT_ELEMENT + "-not-float");
        frag.add(PushI, 4);
        Macros.loadIFrom(frag, RECORD_INIT_ELEMENT + "-subtype-var");
        frag.add(Subtract);
        frag.add(JumpPos, RECORD_INIT_ELEMENT + "-not-int");
        frag.add(StoreI);
        frag.add(Jump, RECORD_INIT_ELEMENT + "-end-if");

        frag.add(Label, RECORD_INIT_ELEMENT + "-not-int");
        frag.add(StoreC);

        frag.add(Label, RECORD_INIT_ELEMENT + "-end-if");

        Macros.loadIFrom(frag, RECORD_INIT_ELEMENT + "-caller");
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

            frag.add(PushI, RECORD_HEADER_SIZE);
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-length-var");
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-subtype-var");
            frag.add(Multiply);
            frag.add(Add);
            frag.add(Call, MEM_MANAGER_ALLOCATE);
            Macros.storeITo(frag, RECORD_ALLOCATE_FUNCTION + "-base-res");

            //set typeid
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-header-var");
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-base-res");
            Macros.writeIOffset(frag, RECORD_TYPE_IDENTIFIER_OFFSET);

            //set status
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-status-var");
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-base-res");
            Macros.writeIOffset(frag, RECORD_STATUS_OFFSET);

            //set subtype size
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-subtype-var");
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-base-res");
            Macros.writeIOffset(frag, RECORD_SUBTYPE_SIZE_OFFSET);

            //set length size
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-length-var");
            Macros.loadIFrom(frag, RECORD_ALLOCATE_FUNCTION + "-base-res");
            Macros.writeIOffset(frag, RECORD_LENGTH_OFFSET);

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
        Macros.declareI(frag, RECORD_CLONE_FUNCTION + "-length-var");
        Macros.declareI(frag, RECORD_CLONE_FUNCTION + "-subtype-var");
        frag.add(Label, RECORD_CLONE_FUNCTION);
            Macros.storeITo(frag, RECORD_CLONE_FUNCTION + "-caller");
            checkNullPtrCode(frag);
            Macros.storeITo(frag, RECORD_CLONE_FUNCTION + "-base-var");

            //add header info to stack
            Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-base-var");
            frag.add(Call, RECORD_GET_LENGTH);                      //[... length]
            frag.add(Duplicate);
            Macros.storeITo(frag, RECORD_CLONE_FUNCTION + "-length-var");

            Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-base-var");
            frag.add(Call, RECORD_GET_SUBTYPE_SIZE);                //[... length subtypeSize]
            frag.add(Duplicate);
            Macros.storeITo(frag, RECORD_CLONE_FUNCTION + "-subtype-var");

            Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-base-var");
            frag.add(Call, RECORD_GET_STATUS);                      //[... length subtypeSize status]

            Macros.loadIFrom(frag, RECORD_CLONE_FUNCTION + "-base-var");
            frag.add(Call, RECORD_GET_TYPE_ID);                     //[... length subtypeSize status typeid]

            //allocate
            frag.add(Call, RECORD_ALLOCATE_FUNCTION);               //[... clone]
            Macros.storeITo(frag, RECORD_CLONE_FUNCTION + "-clone-res");

            //set data
            frag.add(PushI, 0);
            Macros.storeITo(frag, RECORD_CLONE_FUNCTION + "-loop-index");

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
                    frag.add(LoadI);
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
        frag.add(Return);
    }
    public static final String RECORD_PRINT_FUNCTION = "$record-print-fn";
    public static final void runtimePrintFunction(ASMCodeFragment frag) {
        Macros.declareI(frag, RECORD_PRINT_FUNCTION + "-caller");
        Macros.declareI(frag, RECORD_PRINT_FUNCTION + "-base-var");
        Macros.declareI(frag, RECORD_PRINT_FUNCTION + "-length-var");
        Macros.declareI(frag, RECORD_PRINT_FUNCTION + "-subtype-var");
        Macros.declareI(frag, RECORD_PRINT_FUNCTION + "-isref-var");
        Macros.declareI(frag, RECORD_PRINT_FUNCTION + "-loop-index");
        frag.add(Label, RECORD_PRINT_FUNCTION);
            Macros.storeITo(frag, RECORD_PRINT_FUNCTION + "-caller");
            checkNullPtrCode(frag);
            Macros.storeITo(frag, RECORD_PRINT_FUNCTION + "-base-var");

                    Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-base-var");
                    frag.add(Call, RECORD_GET_TYPE_ID);
                    frag.add(PushI, STRING_TYPE_IDENTIFIER);
                    frag.add(Subtract);
                    frag.add(JumpTrue, RECORD_PRINT_FUNCTION + "-not-string");
                        Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-base-var");
                        frag.add(Call, RECORD_PRINT_STRING);
                        Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-caller");
                        frag.add(Return);
                    frag.add(Label, RECORD_PRINT_FUNCTION + "-not-string");

            Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-base-var");
            frag.add(Call, RECORD_GET_LENGTH);
            Macros.storeITo(frag, RECORD_PRINT_FUNCTION + "-length-var");

            Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-base-var");
            frag.add(Call, RECORD_GET_SUBTYPE_SIZE);
            Macros.storeITo(frag, RECORD_PRINT_FUNCTION + "-subtype-var");

            Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-base-var");
            frag.add(Call, RECORD_CHECK_REFERENCE);
            Macros.storeITo(frag, RECORD_PRINT_FUNCTION + "-isref-var");

                frag.add(PushD, OPEN_BRACKET_STRING);
                frag.add(PushD, STRING_PRINT_FORMAT);
                frag.add(Printf);

            frag.add(PushI, 0);
            Macros.storeITo(frag, RECORD_PRINT_FUNCTION + "-loop-index");

            frag.add(Label, RECORD_PRINT_FUNCTION + "-loop-begin");
            Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-loop-index");
            Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-length-var");
            frag.add(Subtract);                                     //[... length-i]
            frag.add(JumpFalse, RECORD_PRINT_FUNCTION + "-loop-end");

                Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-base-var");
                Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-loop-index");
                frag.add(Call, RECORD_GET_ELEMENT);
                //is ref?
                    Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-isref-var");
                    frag.add(JumpFalse, RECORD_PRINT_FUNCTION + "-not-ref");
                    //save arguments
                    frag.add(LoadI);
                    Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-caller");
                        frag.add(Exchange);
                    Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-base-var");
                        frag.add(Exchange);
                    Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-length-var");
                        frag.add(Exchange);
                    Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-subtype-var");
                        frag.add(Exchange);
                    Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-isref-var");
                        frag.add(Exchange);
                    Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-loop-index");
                        frag.add(Exchange);
                    //RECURSE
                    frag.add(Call, RECORD_PRINT_FUNCTION);
                    //RESTORE
                    Macros.storeITo(frag, RECORD_PRINT_FUNCTION + "-loop-index");
                    Macros.storeITo(frag, RECORD_PRINT_FUNCTION + "-isref-var");
                    Macros.storeITo(frag, RECORD_PRINT_FUNCTION + "-subtype-var");
                    Macros.storeITo(frag, RECORD_PRINT_FUNCTION + "-length-var");
                    Macros.storeITo(frag, RECORD_PRINT_FUNCTION + "-base-var");
                    Macros.storeITo(frag, RECORD_PRINT_FUNCTION + "-caller");
                    frag.add(Jump, RECORD_PRINT_FUNCTION + "-print-ref-reentry");
                //is val?
                    //load float/rational
                    frag.add(Label, RECORD_PRINT_FUNCTION + "-not-ref");
                    frag.add(PushI, 8);
                    Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-subtype-var");
                    frag.add(Subtract);
                    frag.add(JumpPos, RECORD_PRINT_FUNCTION + "-not-float");
                    frag.add(LoadF);
                    frag.add(Jump, RECORD_PRINT_FUNCTION + "-end-if");

                    //load int
                    frag.add(Label, RECORD_PRINT_FUNCTION + "-not-float");
                    frag.add(PushI, 4);
                    Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-subtype-var");
                    frag.add(Subtract);
                    frag.add(JumpPos, RECORD_PRINT_FUNCTION + "-not-int");
                    frag.add(LoadI);
                    frag.add(Jump, RECORD_PRINT_FUNCTION + "-end-if");

                    //load char
                    frag.add(Label, RECORD_PRINT_FUNCTION + "-not-int");
                    frag.add(LoadC);

                    frag.add(Label, RECORD_PRINT_FUNCTION + "-end-if");
                    Macros.loadIFrom(frag, RECORD_PRINT_FORMAT);
                    frag.add(Printf);

                    frag.add(Label, RECORD_PRINT_FUNCTION + "-print-ref-reentry");
                    Macros.incrementInteger(frag, RECORD_PRINT_FUNCTION + "-loop-index");

                    //element seperator
                    Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-loop-index");
                    Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-length-var");
                    frag.add(Subtract);
                    frag.add(JumpFalse, RECORD_PRINT_FUNCTION + "-dont-separate");
                    frag.add(PushD, ARRAY_SEPARATION_STRING);
                    frag.add(PushD, STRING_PRINT_FORMAT);
                    frag.add(Printf);
                    frag.add(Label, RECORD_PRINT_FUNCTION + "-dont-separate");

                    frag.add(Jump, RECORD_PRINT_FUNCTION + "-loop-begin");
                    frag.add(Label, RECORD_PRINT_FUNCTION + "-loop-end");

                    frag.add(PushD, CLOSE_BRACKET_STRING);
                    frag.add(PushD, STRING_PRINT_FORMAT);
                    frag.add(Printf);

            Macros.loadIFrom(frag, RECORD_PRINT_FUNCTION + "-caller");
            frag.add(Return);
    }

    public static final String RECORD_PRINT_STRING = "$record-print-string-fn";
    public static final void runtimePrintString(ASMCodeFragment frag) {
        Macros.declareI(frag, RECORD_PRINT_STRING + "-caller");
        frag.add(Label, RECORD_PRINT_STRING);
            Macros.storeITo(frag, RECORD_PRINT_STRING + "-caller");

            frag.add(PushI, RECORD_HEADER_SIZE);
            frag.add(Add);
            Macros.loadIFrom(frag, RECORD_PRINT_FORMAT);
            frag.add(Printf);

        Macros.loadIFrom(frag, RECORD_PRINT_STRING + "-caller");
        frag.add(Return);
    }
}
