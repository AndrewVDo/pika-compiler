package semanticAnalyzer.signatures;

import asmCodeGenerator.*;
import asmCodeGenerator.codeStorage.ASMOpcode;
import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Punctuator;
import semanticAnalyzer.types.ArrayType;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;
import semanticAnalyzer.types.TypeVariable;

import java.util.*;


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
		TypeVariable S = new TypeVariable("no_type");
		List<TypeVariable> SetS = Arrays.asList(S); // these get reset after each equiv check
		ArrayType SA = new ArrayType(S);

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
			FunctionSignature SigA = new FunctionSignature(1, SA, SA, PrimitiveType.BOOLEAN);
			
			if(comparison == Punctuator.EQUAL || comparison == Punctuator.NOTEQUAL) {
				new FunctionSignatures(comparison, SigI, SigF, SigC, SigB, SigS, SigA);
			}
			else {
				new FunctionSignatures(comparison, SigI, SigF, SigC);
			}
		}
		
		new FunctionSignatures(PrimitiveType.INTEGER,
				new FunctionSignature(new CharToIntCodeGenerator(), PrimitiveType.CHARACTER, PrimitiveType.INTEGER),
				new FunctionSignature(ASMOpcode.ConvertI, PrimitiveType.FLOATING, PrimitiveType.INTEGER),
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.INTEGER, PrimitiveType.INTEGER)
		);
		
		new FunctionSignatures(PrimitiveType.CHARACTER,
				new FunctionSignature(new IntToCharCodeGenerator(), PrimitiveType.INTEGER, PrimitiveType.CHARACTER),
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.CHARACTER, PrimitiveType.CHARACTER)
		);
		
		new FunctionSignatures(PrimitiveType.FLOATING,
				new FunctionSignature(ASMOpcode.ConvertF, PrimitiveType.INTEGER, PrimitiveType.FLOATING),
				new FunctionSignature(new CharToFloatCodeGenerator(), PrimitiveType.CHARACTER, PrimitiveType.FLOATING),
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.FLOATING, PrimitiveType.FLOATING)
		);
		
		new FunctionSignatures(PrimitiveType.BOOLEAN,
				new FunctionSignature(new CharToBoolCodeGenerator(), PrimitiveType.CHARACTER, PrimitiveType.BOOLEAN),
				new FunctionSignature(new CharToBoolCodeGenerator(), PrimitiveType.INTEGER, PrimitiveType.BOOLEAN),
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN)
		);

		new FunctionSignatures(PrimitiveType.STRING,
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



		new FunctionSignatures(Keyword.LENGTH,
				new FunctionSignature(1, SetS, SA, PrimitiveType.INTEGER)
		);
		new FunctionSignatures(Keyword.CLONE,
				new FunctionSignature(1, SetS, SA, SA)
		);
		
		new FunctionSignatures(Punctuator.ARRAY_INDEXING,
				new FunctionSignature(1, SetS, SA, PrimitiveType.INTEGER, S)
		);

		new FunctionSignatures(Punctuator.ARRAY_INIT,
				new FunctionSignature(1, SetS, S, SA),
				new FunctionSignature(1, SetS, S, PrimitiveType.INTEGER, SA),
				new FunctionSignature(1, SetS, SA, SA)
		);

		new FunctionSignatures(Punctuator.RAT_OP1,
				new FunctionSignature(new RationalGenerator(), PrimitiveType.INTEGER, PrimitiveType.INTEGER, PrimitiveType.RATIONAL)
		);
		new FunctionSignatures(Punctuator.RAT_OP2,
				new FunctionSignature(new RationalGenerator(), PrimitiveType.INTEGER, PrimitiveType.INTEGER, PrimitiveType.RATIONAL)
		);
		new FunctionSignatures(Punctuator.RAT_OP3,
				new FunctionSignature(new RationalGenerator(), PrimitiveType.INTEGER, PrimitiveType.INTEGER, PrimitiveType.RATIONAL)
		);



	}

}
