package semanticAnalyzer.signatures;

import asmCodeGenerator.*;
import asmCodeGenerator.Fold.MapReduce.FoldBaseCode;
import asmCodeGenerator.Fold.MapReduce.FoldCode;
import asmCodeGenerator.MapReduce.MapCode;
import asmCodeGenerator.MapReduce.ReduceCode;
import asmCodeGenerator.RationalMath.*;
import asmCodeGenerator.codeStorage.ASMOpcode;
import asmCodeGenerator.lengthOperator.LengthCode;
import asmCodeGenerator.stringConcat.ConcatCharString;
import asmCodeGenerator.stringConcat.ConcatStringChar;
import asmCodeGenerator.stringConcat.ConcatStringString;
import asmCodeGenerator.stringConcat.ReverseCode;
import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Punctuator;
import semanticAnalyzer.types.*;

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
		    new FunctionSignature(ASMOpcode.FAdd, PrimitiveType.FLOATING, PrimitiveType.FLOATING, PrimitiveType.FLOATING),
			new FunctionSignature(new RationalAdd(), PrimitiveType.RATIONAL, PrimitiveType.RATIONAL, PrimitiveType.RATIONAL),
			new FunctionSignature(new ConcatStringString(), PrimitiveType.STRING, PrimitiveType.STRING, PrimitiveType.STRING),
			new FunctionSignature(new ConcatStringChar(), PrimitiveType.STRING, PrimitiveType.CHARACTER, PrimitiveType.STRING),
			new FunctionSignature(new ConcatCharString(), PrimitiveType.CHARACTER, PrimitiveType.STRING, PrimitiveType.STRING)
		);
		
		new FunctionSignatures(Punctuator.SUBTRACT,
		    new FunctionSignature(ASMOpcode.Subtract, PrimitiveType.INTEGER, PrimitiveType.INTEGER, PrimitiveType.INTEGER),
		    new FunctionSignature(ASMOpcode.FSubtract, PrimitiveType.FLOATING, PrimitiveType.FLOATING, PrimitiveType.FLOATING),
			new FunctionSignature(new RationalSubtract(), PrimitiveType.RATIONAL, PrimitiveType.RATIONAL, PrimitiveType.RATIONAL)
		);
		
		new FunctionSignatures(Punctuator.MULTIPLY,
			new FunctionSignature(ASMOpcode.Multiply, PrimitiveType.INTEGER, PrimitiveType.INTEGER, PrimitiveType.INTEGER),
			new FunctionSignature(ASMOpcode.FMultiply, PrimitiveType.FLOATING, PrimitiveType.FLOATING, PrimitiveType.FLOATING),
			new FunctionSignature(new RationalMultiply(), PrimitiveType.RATIONAL, PrimitiveType.RATIONAL, PrimitiveType.RATIONAL)
		);
		
		new FunctionSignatures(Punctuator.DIVIDE,
			new FunctionSignature(new IntegerDivideCodeGenerator(), PrimitiveType.INTEGER, PrimitiveType.INTEGER, PrimitiveType.INTEGER),
			new FunctionSignature(new FloatingDivideCodeGenerator(), PrimitiveType.FLOATING, PrimitiveType.FLOATING, PrimitiveType.FLOATING),
			new FunctionSignature(new RationalDivide(), PrimitiveType.RATIONAL, PrimitiveType.RATIONAL, PrimitiveType.RATIONAL)
		);
		
		Punctuator [] comparisons = {Punctuator.CLOSE_ANGLE, Punctuator.OPEN_ANGLE, Punctuator.GREATEREQUAL, Punctuator.LESSEREQUAL, Punctuator.EQUAL, Punctuator.NOTEQUAL};
		
		for(Punctuator comparison : comparisons) {
			FunctionSignature SigI = new FunctionSignature(1, PrimitiveType.INTEGER, PrimitiveType.INTEGER, PrimitiveType.BOOLEAN);
			FunctionSignature SigF = new FunctionSignature(1, PrimitiveType.FLOATING, PrimitiveType.FLOATING, PrimitiveType.BOOLEAN);
			FunctionSignature SigC = new FunctionSignature(1, PrimitiveType.CHARACTER, PrimitiveType.CHARACTER, PrimitiveType.BOOLEAN);
			FunctionSignature SigB = new FunctionSignature(1, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN);
			FunctionSignature SigS = new FunctionSignature(1, PrimitiveType.STRING, PrimitiveType.STRING, PrimitiveType.BOOLEAN);
			FunctionSignature SigA = new FunctionSignature(1, SetS, SA, SA, PrimitiveType.BOOLEAN);
			FunctionSignature SigR = new FunctionSignature(1, PrimitiveType.RATIONAL, PrimitiveType.RATIONAL, PrimitiveType.BOOLEAN);
			
			if(comparison == Punctuator.EQUAL || comparison == Punctuator.NOTEQUAL) {
				new FunctionSignatures(comparison, SigI, SigF, SigC, SigB, SigS, SigA, SigR);
			}
			else {
				new FunctionSignatures(comparison, SigI, SigF, SigC, SigR);
			}
		}
		
		new FunctionSignatures(PrimitiveType.INTEGER,
				new FunctionSignature(new CharToIntCodeGenerator(), PrimitiveType.CHARACTER, PrimitiveType.INTEGER),
				new FunctionSignature(ASMOpcode.ConvertI, PrimitiveType.FLOATING, PrimitiveType.INTEGER),
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.INTEGER, PrimitiveType.INTEGER),
				new FunctionSignature(new RatToInt(), PrimitiveType.RATIONAL, PrimitiveType.INTEGER)
		);
		
		new FunctionSignatures(PrimitiveType.CHARACTER,
				new FunctionSignature(new IntToCharCodeGenerator(), PrimitiveType.INTEGER, PrimitiveType.CHARACTER),
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.CHARACTER, PrimitiveType.CHARACTER)
		);
		
		new FunctionSignatures(PrimitiveType.FLOATING,
				new FunctionSignature(ASMOpcode.ConvertF, PrimitiveType.INTEGER, PrimitiveType.FLOATING),
				new FunctionSignature(new CharToFloatCodeGenerator(), PrimitiveType.CHARACTER, PrimitiveType.FLOATING),
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.FLOATING, PrimitiveType.FLOATING),
				new FunctionSignature(new RatToFloat(), PrimitiveType.RATIONAL, PrimitiveType.FLOATING)
		);
		
		new FunctionSignatures(PrimitiveType.BOOLEAN,
				new FunctionSignature(new CharToBoolCodeGenerator(), PrimitiveType.CHARACTER, PrimitiveType.BOOLEAN),
				new FunctionSignature(new CharToBoolCodeGenerator(), PrimitiveType.INTEGER, PrimitiveType.BOOLEAN),
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN)
		);

		new FunctionSignatures(PrimitiveType.RATIONAL,
				new FunctionSignature(new IntToRat(), PrimitiveType.INTEGER, PrimitiveType.RATIONAL),
				new FunctionSignature(new CharToRat(), PrimitiveType.CHARACTER, PrimitiveType.RATIONAL),
				new FunctionSignature(new FloatToRat(), PrimitiveType.FLOATING, PrimitiveType.RATIONAL),
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.RATIONAL, PrimitiveType.RATIONAL)
		);

		new FunctionSignatures(PrimitiveType.STRING,
				new FunctionSignature(ASMOpcode.Nop, PrimitiveType.STRING, PrimitiveType.STRING)
		);

		new FunctionSignatures(Punctuator.BOOLEAN_AND,
				new FunctionSignature(new ShortCircuitAnd(), PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN)
		);

		new FunctionSignatures(Punctuator.BOOLEAN_OR,
				new FunctionSignature(new ShortCircuitOr(), PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN)
		);

		new FunctionSignatures(Punctuator.BOOLEAN_NOT,
				new FunctionSignature(ASMOpcode.BNegate, PrimitiveType.BOOLEAN, PrimitiveType.BOOLEAN)
		);



		new FunctionSignatures(Keyword.LENGTH,
				//code is identical because record headers exactly the same
				new FunctionSignature(new LengthCode(), SetS, SA, PrimitiveType.INTEGER),
				new FunctionSignature(new LengthCode(), PrimitiveType.STRING, PrimitiveType.INTEGER)
		);
		new FunctionSignatures(Keyword.CLONE,
				new FunctionSignature(1, SetS, SA, SA)
		);
		new FunctionSignatures(Keyword.REVERSE,
				new FunctionSignature(new ReverseCode(), PrimitiveType.STRING, PrimitiveType.STRING)
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
		new FunctionSignatures(Punctuator.EXPRESS_OVER,
				new FunctionSignature(new RatExpressOver(), PrimitiveType.RATIONAL, PrimitiveType.INTEGER, PrimitiveType.INTEGER),
				new FunctionSignature(new FloatExpressOver(), PrimitiveType.FLOATING, PrimitiveType.INTEGER, PrimitiveType.INTEGER)
		);
		new FunctionSignatures(Punctuator.RATIONALIZE,
				new FunctionSignature(new RatRationalize(), PrimitiveType.RATIONAL, PrimitiveType.INTEGER, PrimitiveType.RATIONAL),
				new FunctionSignature(new FloatRationalize(), PrimitiveType.FLOATING, PrimitiveType.INTEGER, PrimitiveType.RATIONAL)
		);


		TypeVariable map_si = new TypeVariable("no_type");
		TypeVariable map_so = new TypeVariable("no_type");
		List<TypeVariable> set_map = Arrays.asList(map_si, map_so);
		LambdaType map_l = new LambdaType(List.of(map_si), map_so);
		ArrayType map_ai = new ArrayType(map_si);
		ArrayType map_ao = new ArrayType(map_so);

		new FunctionSignatures(Keyword.MAP,
				new FunctionSignature(new MapCode(), set_map, map_ai, map_l, map_ao)
		);

		TypeVariable reduce_si = new TypeVariable("no_type");
		List<TypeVariable> set_reduce = Arrays.asList(map_si, map_so);
		LambdaType reduce_l = new LambdaType(List.of(reduce_si), PrimitiveType.BOOLEAN);
		ArrayType reduce_ai = new ArrayType(reduce_si);

		new FunctionSignatures(Keyword.REDUCE,
				new FunctionSignature(new ReduceCode(), set_reduce, reduce_ai, reduce_l, reduce_ai)
		);

		TypeVariable fold_si = new TypeVariable("no_type");
		TypeVariable fold_base = new TypeVariable("no_type");
		List<TypeVariable> set_fold = Arrays.asList(fold_si, fold_base);
		LambdaType fold_l = new LambdaType(List.of(fold_si, fold_si), fold_si);
		LambdaType fold_lb = new LambdaType(List.of(fold_base, fold_si), fold_base);
		ArrayType fold_ai = new ArrayType(fold_si);


		new FunctionSignatures(Keyword.FOLD,
				new FunctionSignature(new FoldCode(), set_fold, fold_ai, fold_l, fold_si),
				new FunctionSignature(new FoldBaseCode(), set_fold, fold_ai, fold_base, fold_lb, fold_base)
		);

	}

}
