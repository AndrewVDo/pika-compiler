package semanticAnalyzer.types;

import java.util.List;
import java.util.Map;

public interface Type {
	/** returns the size of an instance of this type, in bytes.
	 * 
	 * @return number of bytes per instance
	 */
	public int getSize(); 
	
	/** Yields a printable string for information about this type.
	 * use this rather than toString() if you want an abbreviated string.
	 * In particular, this yields an empty string for PrimitiveType.NO_TYPE.
	 * 
	 * @return string representation of type.
	 */
	public String infoString();
	public Type getConcreteType();

	public boolean isReference();

	public boolean equivalent(Type valueType);
	public boolean promotable(Type valueType);

	public static Map<PrimitiveType, PrimitiveType[]> promotable =  Map.of(
			PrimitiveType.CHARACTER, new PrimitiveType[]{PrimitiveType.CHARACTER, PrimitiveType.INTEGER, PrimitiveType.FLOATING, PrimitiveType.RATIONAL},
			PrimitiveType.INTEGER, new PrimitiveType[]{PrimitiveType.INTEGER, PrimitiveType.FLOATING, PrimitiveType.RATIONAL},
			PrimitiveType.FLOATING, new PrimitiveType[]{PrimitiveType.FLOATING},
			PrimitiveType.RATIONAL, new PrimitiveType[]{PrimitiveType.RATIONAL}
	);

	public static Type lowestCommonPromotion(List<Type> types) {
		if(types.size() == 0) {
			return PrimitiveType.ERROR;
		}
		else if(types.size() == 1) {
			return types.get(0);
		}

		TypeVariable tv = new TypeVariable("no_type");
		if(lCPHelper(types, new ArrayType(tv))) {
			return new ArrayType(tv);
		}

		if(lCPHelper(types, PrimitiveType.CHARACTER)) {
			return PrimitiveType.CHARACTER;
		}

		if(lCPHelper(types, PrimitiveType.INTEGER)) {
			return PrimitiveType.INTEGER;
		}

		if(lCPHelper(types, PrimitiveType.FLOATING)) {
			return PrimitiveType.FLOATING;
		}

		if(lCPHelper(types, PrimitiveType.RATIONAL)) {
			return PrimitiveType.RATIONAL;
		}

		return PrimitiveType.ERROR;
	}
	private static boolean lCPHelper(List<Type> types, Type promotionCandidate) {
		for(Type t : types) {
			if(!t.promotable(promotionCandidate)) {
				return false;
			}
		}
		return true;
	}
}
