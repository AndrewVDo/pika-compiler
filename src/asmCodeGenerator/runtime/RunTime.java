package asmCodeGenerator.runtime;

import asmCodeGenerator.Macros;
import asmCodeGenerator.codeStorage.ASMCodeFragment;

import static asmCodeGenerator.Record.*;
import static asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType.GENERATES_VOID;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;
public class RunTime {
	public static final String EAT_LOCATION_ZERO      = "$eat-location-zero";		// helps us distinguish null pointers from real ones.
	public static final String INTEGER_PRINT_FORMAT   = "$print-format-integer";
	public static final String FLOATING_PRINT_FORMAT  = "$print-format-floating";
	public static final String BOOLEAN_PRINT_FORMAT   = "$print-format-boolean";
	public static final String CHARACTER_PRINT_FORMAT = "$print-format-character";
	public static final String STRING_PRINT_FORMAT	  = "$print-format-string";
	public static final String NEWLINE_PRINT_FORMAT   = "$print-format-newline";
	public static final String TAB_PRINT_FORMAT		  = "$print-format-tab";
	public static final String SPACE_PRINT_FORMAT     = "$print-format-space";
	public static final String BOOLEAN_TRUE_STRING    = "$boolean-true-string";
	public static final String BOOLEAN_FALSE_STRING   = "$boolean-false-string";
	public static final String OPEN_BRACKET_STRING    = "$open-bracket-string";
	public static final String CLOSE_BRACKET_STRING   = "$close-bracket-string";
	public static final String ARRAY_SEPARATION_STRING = "$array-seperate-string";

	public static final String GLOBAL_MEMORY_BLOCK    = "$global-memory-block";
	public static final String USABLE_MEMORY_START    = "$usable-memory-start";
	public static final String MAIN_PROGRAM_LABEL     = "$$main";
	
	public static final String GENERAL_RUNTIME_ERROR = "$$general-runtime-error";
	public static final String INTEGER_DIVIDE_BY_ZERO_RUNTIME_ERROR = "$$i-divide-by-zero";
	public static final String FLOATING_DIVIDE_BY_ZERO_RUNTIME_ERROR = "$$f-divide-by-zero";
	public static final String ALLOC_NEGATIVE_SIZE_RUNTIME_ERROR = "$$alloc-negative-size";
	public static final String INDEX_RUNTIME_ERROR = "$$index";
	public static final String NULL_PTR_RUNTIME_ERROR = "$$null-ptr";
	public static final String DELETED_RECORD_RUNTIME_ERROR = "$$deleted-record";
	public static final String IMMUTABLE_RECORD_RUNTIME_ERROR = "$$immutable-record";

	public static final String RECORD_PRINT_FORMAT = "$record-print-format";
	public static final String RECORD_PRINT_BOOL_FLAG = "$record-print-bool";


	private ASMCodeFragment environmentASM() {
		ASMCodeFragment result = new ASMCodeFragment(GENERATES_VOID);
		result.append(jumpToMain());
		result.append(stringsForPrintf());
		result.append(runtimeErrors());
		recordFunctions(result);
		Macros.declareI(result, RECORD_PRINT_FORMAT);
		Macros.declareI(result, RECORD_PRINT_BOOL_FLAG);
		result.add(DLabel, USABLE_MEMORY_START);
		return result;
	}
	
	private ASMCodeFragment jumpToMain() {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VOID);
		frag.add(Jump, MAIN_PROGRAM_LABEL);
		return frag;
	}

	private ASMCodeFragment stringsForPrintf() {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VOID);
		frag.add(DLabel, EAT_LOCATION_ZERO);
		frag.add(DataZ, 8);
		frag.add(DLabel, INTEGER_PRINT_FORMAT);
		frag.add(DataS, "%d");
		frag.add(DLabel, FLOATING_PRINT_FORMAT);
		frag.add(DataS, "%g");
		frag.add(DLabel, BOOLEAN_PRINT_FORMAT);
		frag.add(DataS, "%s");
		frag.add(DLabel, CHARACTER_PRINT_FORMAT);
		frag.add(DataS, "%c");
		frag.add(DLabel, STRING_PRINT_FORMAT);
		frag.add(PushI, RECORD_HEADER_SIZE);
		frag.add(Add);
		frag.add(DataS, "%s");
		frag.add(DLabel, NEWLINE_PRINT_FORMAT);
		frag.add(DataS, "\n");
		frag.add(DLabel, TAB_PRINT_FORMAT);
		frag.add(DataS, "\t");
		frag.add(DLabel, SPACE_PRINT_FORMAT);
		frag.add(DataS, " ");
		frag.add(DLabel, BOOLEAN_TRUE_STRING);
		frag.add(DataS, "true");
		frag.add(DLabel, BOOLEAN_FALSE_STRING);
		frag.add(DataS, "false");
		frag.add(DLabel, OPEN_BRACKET_STRING);
		frag.add(DataS, "[");
		frag.add(DLabel, CLOSE_BRACKET_STRING);
		frag.add(DataS, "]");
		frag.add(DLabel, ARRAY_SEPARATION_STRING);
		frag.add(DataS, ", ");
		
		return frag;
	}
	
	private ASMCodeFragment runtimeErrors() {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VOID);
		
		generalRuntimeError(frag);
		integerDivideByZeroError(frag);
		floatingDivideByZeroError(frag);
		allocNegativeSizeError(frag);
		indexError(frag);
		nullPtrError(frag);
		deletedRecordError(frag);
		immutableRecordError(frag);
		
		return frag;
	}
	private ASMCodeFragment generalRuntimeError(ASMCodeFragment frag) {
		String generalErrorMessage = "$errors-general-message";

		frag.add(DLabel, generalErrorMessage);
		frag.add(DataS, "Runtime error: %s\n");
		
		frag.add(Label, GENERAL_RUNTIME_ERROR);
		frag.add(PushD, generalErrorMessage);
		frag.add(Printf);
		frag.add(Halt);
		return frag;
	}
	private void integerDivideByZeroError(ASMCodeFragment frag) {
		String intDivideByZeroMessage = "$errors-int-divide-by-zero";
		
		frag.add(DLabel, intDivideByZeroMessage);
		frag.add(DataS, "integer divide by zero");
		
		frag.add(Label, INTEGER_DIVIDE_BY_ZERO_RUNTIME_ERROR);
		frag.add(PushD, intDivideByZeroMessage);
		frag.add(Jump, GENERAL_RUNTIME_ERROR);
	}
	private void floatingDivideByZeroError(ASMCodeFragment frag) {
		String floatDivideByZeroMessage = "$errors-float-divide-by-zero";
		
		frag.add(DLabel, floatDivideByZeroMessage);
		frag.add(DataS, "floating divide by zero");
		
		frag.add(Label, FLOATING_DIVIDE_BY_ZERO_RUNTIME_ERROR);
		frag.add(PushD, floatDivideByZeroMessage);
		frag.add(Jump, GENERAL_RUNTIME_ERROR);
	}
	private void allocNegativeSizeError(ASMCodeFragment frag) {
		String allocNegativeSize = "$errors-alloc-negative-size";

		frag.add(DLabel, allocNegativeSize);
		frag.add(DataS, "alloc negative size");

		frag.add(Label, ALLOC_NEGATIVE_SIZE_RUNTIME_ERROR);
		frag.add(PushD, allocNegativeSize);
		frag.add(Jump, GENERAL_RUNTIME_ERROR);
	}
	private void indexError(ASMCodeFragment frag) {
		String msg = "$errors-index";

		frag.add(DLabel, msg);
		frag.add(DataS, "out of bounds index");

		frag.add(Label, INDEX_RUNTIME_ERROR);
		frag.add(PushD, msg);
		frag.add(Jump, GENERAL_RUNTIME_ERROR);
	}
	private void nullPtrError(ASMCodeFragment frag) {
		String msg = "$errors-null-ptr";

		frag.add(DLabel, msg);
		frag.add(DataS, "null ptr");

		frag.add(Label, NULL_PTR_RUNTIME_ERROR);
		frag.add(PushD, msg);
		frag.add(Jump, GENERAL_RUNTIME_ERROR);
	}
	private void deletedRecordError(ASMCodeFragment frag) {
		String msg = "$errors-deleted-record";

		frag.add(DLabel, msg);
		frag.add(DataS, "deleted record");

		frag.add(Label, DELETED_RECORD_RUNTIME_ERROR);
		frag.add(PushD, msg);
		frag.add(Jump, GENERAL_RUNTIME_ERROR);
	}
	private void immutableRecordError(ASMCodeFragment frag) {
		String msg = "$errors-immutable-record";

		frag.add(DLabel, msg);
		frag.add(DataS, "immutable record");

		frag.add(Label, IMMUTABLE_RECORD_RUNTIME_ERROR);
		frag.add(PushD, msg);
		frag.add(Jump, GENERAL_RUNTIME_ERROR);
	}
	public static ASMCodeFragment getEnvironment() {
		RunTime rt = new RunTime();
		return rt.environmentASM();
	}
	private void recordFunctions(ASMCodeFragment frag) {
		runtimeGetHeaderInfo(frag);
		runtimeGetTypeId(frag);
		runtimeGetStatus(frag);
		runtimeStatusCheckers(frag);
		runtimeGetSubtypeSize(frag);
		runtimeGetLength(frag);
		runtimeGetElement(frag);
		runtimeSetElement(frag);
		runtimeAllocateRecord(frag);
		runtimeCloneRecord(frag);
		runtimePrintFunction(frag);
		runtimeInitElement(frag);
		runtimePrintString(frag);
		runtimePrintBool(frag);
		runtimeDeallocate(frag);
	}
}
