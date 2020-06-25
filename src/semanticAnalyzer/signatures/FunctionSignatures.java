package semanticAnalyzer.signatures;

import java.util.*;

import asmCodeGenerator.codeStorage.ASMOpcode;
import asmCodeGenerator.IntegerDivideCodeGenerator;
import asmCodeGenerator.CharToBoolCodeGenerator;
import asmCodeGenerator.CharToIntCodeGenerator;
import asmCodeGenerator.FloatingDivideCodeGenerator;
import asmCodeGenerator.IntToCharCodeGenerator;
import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Punctuator;
import semanticAnalyzer.types.ArrayType;
import semanticAnalyzer.types.Type;

import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.TypeVariable;


public class FunctionSignatures extends ArrayList<FunctionSignature> {
	private static final long serialVersionUID = -4907792488209670697L;
	private static Map<Object, FunctionSignatures> signaturesForKey = new HashMap<Object, FunctionSignatures>();
	
	Object key;
	
	public FunctionSignatures(Object key, FunctionSignature ...functionSignatures) {
		this.key = key;
		for(FunctionSignature functionSignature: functionSignatures) {
			add(functionSignature);
		}
		signaturesForKey.put(key, this);
	}
	
	public Object getKey() {
		return key;
	}
	public boolean hasKey(Object key) {
		return this.key.equals(key);
	}
	
	public FunctionSignature acceptingSignature(List<Type> types) {
		for(FunctionSignature functionSignature: this) {
			if(functionSignature.accepts(types)) {
				return functionSignature;
			}
		}
		return FunctionSignature.nullInstance();
	}
	public boolean accepts(List<Type> types) {
		return !acceptingSignature(types).isNull();
	}
	public List<FunctionSignature> promotableSignatures(List<Type> types, int promoteParam) {
		List<FunctionSignature> matches = new ArrayList<>();
		for(FunctionSignature functionSignature: this) {
			if(functionSignature.promotable(types, promoteParam)) {
				matches.add(functionSignature);
			}
		}
		return matches;
	}

	
	/////////////////////////////////////////////////////////////////////////////////
	// access to FunctionSignatures by key object.
	
	public static FunctionSignatures nullSignatures = new FunctionSignatures(0, FunctionSignature.nullInstance());

	public static FunctionSignatures signaturesOf(Object key) {
		if(signaturesForKey.containsKey(key)) {
			return signaturesForKey.get(key);
		}
		return nullSignatures;
	}
	public static FunctionSignature signature(Object key, List<Type> types) {
		FunctionSignatures signatures = FunctionSignatures.signaturesOf(key);
		return signatures.acceptingSignature(types);
	}

	
	
	/////////////////////////////////////////////////////////////////////////////////
	// Put the signatures for operators in the following static block.
	
	static {
		// here's one example to get you started with FunctionSignatures: the signatures for addition.		
		// for this to work, you should statically import PrimitiveType.*

		new FunctionSignatures(Punctuator.ADD,
		    new FunctionSignature(ASMOpcode.Add, PrimitiveType.INTEGER, PrimitiveType.INTEGER, PrimitiveType.INTEGER),
		    new FunctionSignature(ASMOpcode.FAdd, PrimitiveType.FLOATING, PrimitiveType.FLOATING, PrimitiveType.FLOATING)
		);
		
		new FunctionSignatures(Punctuator.SUBTRACT,
		    new FunctionSignature(ASMOpcode.Subtract, PrimitiveType.INTEGER, PrimitiveType.INTEGER, PrimitiveType.INTEGER),
		    new FunctionSignature(ASMOpcode.FSubtract, PrimitiveType.FLOATING, PrimitiveType.FLOATING, PrimitiveType.FLOATING)
		);
		
		new FunctionSignatures(Punctuator.MULTIPLY,
			new FunctionSignature(ASMOpcode.Multiply, PrimitiveType.INTEGER, PrimitiveType.INTEGER, PrimitiveType.INTEGER),
			new FunctionSignature(ASMOpcode.FMultiply, PrimitiveType.FLOATING, PrimitiveType.FLOATING, PrimitiveType.FLOATING)
		);
		
		new FunctionSignatures(Punctuator.DIVIDE,
			new FunctionSignature(new IntegerDivideCodeGenerator(), PrimitiveType.INTEGER, PrimitiveType.INTEGER, PrimitiveType.INTEGER),
			new FunctionSignature(new FloatingDivideCodeGenerator(), PrimitiveType.FLOATING, PrimitiveType.FLOATING, PrimitiveType.FLOATING)
		);
		
		Punctuator [] comparisons = {Punctuator.GREATER, Punctuator.LESSER, Punctuator.GREATEREQUAL, Punctuator.LESSEREQUAL, Punctuator.EQUAL, Punctuator.NOTEQUAL};
		
		for(Punctuator comparison : comparisons) {
			FunctionSignature SigI = new FunctionSignature(1, PrimitiveType.INTEGER, PrimitiveType.INTEGER, PrimitiveType.BOOLEAN);
			FunctionSignature SigF = new FunctionSignature(1, PrimitiveType.FLOATING, PrimitiveType.FLOATING, PrimitiveType.BOOLEAN);
			FunctionSignature SigC = new FunctionSignature(1, PrimitiveType.CHARACTER, PrimitiveType.CHARACTER, PrimitiveType.BOOLEAN);
			FunctionSignature SigB = new FunctionSignature(1, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN);
			FunctionSignature SigS = new FunctionSignature(1, PrimitiveType.STRING, PrimitiveType.STRING, PrimitiveType.BOOLEAN);
			
			if(comparison == Punctuator.EQUAL || comparison == Punctuator.NOTEQUAL) {
				new FunctionSignatures(comparison, SigI, SigF, SigC, SigB, SigS);
			}
			else {
				new FunctionSignatures(comparison, SigI, SigF, SigC);
			}
		}
		
		new FunctionSignatures(Keyword.INT,
				new FunctionSignature(new CharToIntCodeGenerator(), PrimitiveType.CHARACTER, PrimitiveType.INTEGER),
				new FunctionSignature(ASMOpcode.ConvertI, PrimitiveType.FLOATING, PrimitiveType.INTEGER),
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.INTEGER, PrimitiveType.INTEGER)
		);
		
		new FunctionSignatures(Keyword.CHAR,
				new FunctionSignature(new IntToCharCodeGenerator(), PrimitiveType.INTEGER, PrimitiveType.CHARACTER),
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.CHARACTER, PrimitiveType.CHARACTER)
		);
		
		new FunctionSignatures(Keyword.FLOAT,
				new FunctionSignature(ASMOpcode.ConvertF, PrimitiveType.INTEGER, PrimitiveType.FLOATING),
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.FLOATING, PrimitiveType.FLOATING)
		);
		
		new FunctionSignatures(Keyword.BOOL,
				new FunctionSignature(new CharToBoolCodeGenerator(), PrimitiveType.CHARACTER, PrimitiveType.BOOLEAN),
				new FunctionSignature(new CharToBoolCodeGenerator(), PrimitiveType.INTEGER, PrimitiveType.BOOLEAN),
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN)
		);

		new FunctionSignatures(Keyword.STRING,
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.STRING, PrimitiveType.STRING)
		);

		new FunctionSignatures(Punctuator.BOOLEAN_AND,
				new FunctionSignature(ASMOpcode.And, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN)
		);

		new FunctionSignatures(Punctuator.BOOLEAN_OR,
				new FunctionSignature(ASMOpcode.Or, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN)
		);

		new FunctionSignatures(Punctuator.BOOLEAN_NOT,
				new FunctionSignature(ASMOpcode.BNegate, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN)
		);

		TypeVariable S = new TypeVariable("any");
		List<TypeVariable> SetS = Arrays.asList(S); // these get reset after each equiv check
		new FunctionSignatures(Punctuator.ARRAY_INDEXING,
				new FunctionSignature(1/*new ArrayIndexingCodeGenerator()*/, SetS, new ArrayType(S), PrimitiveType.INTEGER, S)
		);
		
		// First, we use the operator itself (in this case the Punctuator ADD) as the key.
		// Then, we give that key two signatures: one an (INT x INT -> INT) and the other
		// a (FLOAT x FLOAT -> FLOAT).  Each signature has a "whichVariant" parameter where
		// I'm placing the instruction (ASMOpcode) that needs to be executed.
		//
		// I'll follow the convention that if a signature has an ASMOpcode for its whichVariant,
		// then to generate code for the operation, one only needs to generate the code for
		// the operands (in order) and then add to that the Opcode.  For instance, the code for
		// floating addition should look like:
		//
		//		(generate argument 1)	: may be many instructions
		//		(generate argument 2)   : ditto
		//		FAdd					: just one instruction
		//
		// If the code that an operator should generate is more complicated than this, then
		// I will not use an ASMOpcode for the whichVariant.  In these cases I typically use
		// a small object with one method (the "Command" design pattern) that generates the
		// required code.

	}

}
