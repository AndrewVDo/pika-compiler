package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.runtime.RunTime;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.runtime.MemoryManager.MEM_MANAGER_HEAP_END_PTR;
import static asmCodeGenerator.runtime.MemoryManager.MEM_MANAGER_HEAP_START_PTR;

public class Macros {
	
	public static void addITo(ASMCodeFragment frag, String location) {
		loadIFrom(frag, location);
		frag.add(Add);
		storeITo(frag, location);
	}
	public static void incrementInteger(ASMCodeFragment frag, String location) {
		frag.add(PushI, 1);
		addITo(frag, location);
	}
	public static void decrementInteger(ASMCodeFragment frag, String location) {
		frag.add(PushI, -1);
		addITo(frag, location);
	}
	
	public static void loadIFrom(ASMCodeFragment frag, String location) {
		frag.add(PushD, location);
		frag.add(LoadI);
	}
	public static void loadFFrom(ASMCodeFragment frag, String location) {
		frag.add(PushD, location);
		frag.add(LoadF);
	}
	public static void storeITo(ASMCodeFragment frag, String location) {
		frag.add(PushD, location);
		frag.add(Exchange);
		frag.add(StoreI);
	}
	public static void storeFTo(ASMCodeFragment frag, String location) {
		frag.add(PushD, location);
		frag.add(Exchange);
		frag.add(StoreF);
	}
	public static void declareI(ASMCodeFragment frag, String variableName) {
		frag.add(DLabel, variableName);
		frag.add(DataZ, 4);
	}
	public static void declareF(ASMCodeFragment frag, String variableName) {
		frag.add(DLabel, variableName);
		frag.add(DataZ, 8);
	}
	
	/** [... baseLocation] -> [... intValue]
	 * @param frag ASMCodeFragment to add code to
	 * @param offset amount to add to the base location before reading
	 */
	public static void readIOffset(ASMCodeFragment frag, int offset) {
		frag.add(PushI, offset);	// [base offset]
		frag.add(Add);				// [base+off]
		frag.add(LoadI);			// [*(base+off)]
	}
	/** [... baseLocation] -> [... charValue]
	 * @param frag ASMCodeFragment to add code to
	 * @param offset amount to add to the base location before reading
	 */
	public static void readCOffset(ASMCodeFragment frag, int offset) {
		frag.add(PushI, offset);	// [base offset]
		frag.add(Add);				// [base+off]
		frag.add(LoadC);			// [*(base+off)]
	}
	/** [... intToWrite baseLocation] -> [...]
	 * @param frag ASMCodeFragment to add code to
	 * @param offset amount to add to the base location before writing 
	 */
	public static void writeIOffset(ASMCodeFragment frag, int offset) {
		frag.add(PushI, offset);	// [datum base offset]
		frag.add(Add);				// [datum base+off]
		frag.add(Exchange);			// [base+off datum]
		frag.add(StoreI);			// []
	}
	
	/** [... charToWrite baseLocation] -> [...]
	 * @param frag ASMCodeFragment to add code to
	 * @param offset amount to add to the base location before writing 
	 */
	public static void writeCOffset(ASMCodeFragment frag, int offset) {
		frag.add(PushI, offset);	// [datum base offset]
		frag.add(Add);				// [datum base+off]
		frag.add(Exchange);			// [base+off datum]
		frag.add(StoreC);			// []
	}
	
	
	////////////////////////////////////////////////////////////////////
    // debugging aids

	// does not disturb accumulator.  Takes a format string - no %'s!
	public static void printString(ASMCodeFragment code, String format) {
		String stringLabel = new Labeller("pstring").newLabel("");
		code.add(DLabel, stringLabel);
		code.add(DataS, format);
		code.add(PushD, stringLabel);
		code.add(Printf);
	}
	// does not disturb accumulator.  Takes a format string
	public static void printAccumulatorTop(ASMCodeFragment code, String format) {
		String stringLabel = new Labeller("ptop").newLabel("");
		code.add(Duplicate);
		code.add(DLabel, stringLabel);
		code.add(DataS, format);
		code.add(PushD, stringLabel);
		code.add(Printf);
	}
	public static void printAccumulator(ASMCodeFragment code, String string) {
		String stringLabel = new Labeller("pstack").newLabel("");
		code.add(DLabel, stringLabel);
		code.add(DataS, string + " ");
		code.add(PushD, stringLabel);
		code.add(Printf);
		code.add(PStack);
	}
	//reserve space for stack
	public static void decStackPtr(ASMCodeFragment frag, int size) {
		frag.add(PushI, -size);
		Macros.addITo(frag, RunTime.STACK_POINTER);

		//check stack smashing
		Macros.loadIFrom(frag, RunTime.STACK_POINTER);
		Macros.loadIFrom(frag, MEM_MANAGER_HEAP_END_PTR);
		frag.add(Subtract);
		frag.add(Duplicate);
		frag.add(JumpNeg, RunTime.STACK_SMASHING_RUNTIME_ERROR);
		frag.add(JumpFalse, RunTime.STACK_SMASHING_RUNTIME_ERROR);
	}
	//reclaim space for stack
	public static void incStackPtr(ASMCodeFragment frag, int size) {
		frag.add(PushI, size);
		Macros.addITo(frag, RunTime.STACK_POINTER);
	}


}
