package semanticAnalyzer.types;

import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

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

	public boolean equivalent(Type valueType);

	public Type getConcreteType();

	public boolean promotable(Type valueType);

	public static Map<PrimitiveType, PrimitiveType[]> promotable =  Map.of(
			PrimitiveType.CHARACTER, new PrimitiveType[]{PrimitiveType.CHARACTER, PrimitiveType.INTEGER, PrimitiveType.FLOATING},
			PrimitiveType.INTEGER, new PrimitiveType[]{PrimitiveType.INTEGER, PrimitiveType.FLOATING}
			//PrimitiveType.RATIONAL
	);

	public static Type lowestCommonPromotion(List<Type> types) {
		if(types.size() == 0) {
			return PrimitiveType.ERROR;
		}
		else if(types.size() == 1) {
			return types.get(0);
		}

		if(lCPHelper(types, PrimitiveType.INTEGER)) {
			return PrimitiveType.INTEGER;
		}

		if(lCPHelper(types, PrimitiveType.FLOATING)) {
			return PrimitiveType.FLOATING;
		}

//		if(lCPHelper(types, PrimitiveType.RATIONAL)) {
//			return PrimitiveType.RATIONAL;
//		}

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
