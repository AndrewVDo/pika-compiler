package semanticAnalyzer.types;


import java.util.Arrays;
import java.util.List;

public enum PrimitiveType implements Type {
	BOOLEAN(1, false),
	CHARACTER(1, false),
	STRING(4, true),
	INTEGER(4, false),
	FLOATING(8, false),
	ERROR(0, false),			// use as a value when a syntax error has occurred
	NO_TYPE(0, "", false);		// use as a value when no type has been assigned.
	
	private int sizeInBytes;
	private String infoString;
	private boolean isReference;
	
	private PrimitiveType(int size, boolean isReference) {
		this.sizeInBytes = size;
		this.infoString = toString();
		this.isReference = isReference;
	}
	private PrimitiveType(int size, String infoString, boolean isReference) {
		this.sizeInBytes = size;
		this.infoString = infoString;
	}
	public int getSize() {
		return sizeInBytes;
	}
	public String infoString() {
		return infoString;
	}

	@Override
	public Type getConcreteType() {
		return this;
	}

	@Override
	public boolean isReference() {
		return this.isReference;
	}

	@Override
	public boolean equivalent(Type valueType) {
		return this == valueType;
	}
	@Override
	public boolean promotable(Type valueType) {
		PrimitiveType[] validPromotions = promotable.get(this);
		if (validPromotions != null) {
			return Arrays.stream(validPromotions).anyMatch(valueType::equals);
		}
		return false;
	}
}
