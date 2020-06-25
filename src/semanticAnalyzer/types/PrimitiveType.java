package semanticAnalyzer.types;


import java.util.Arrays;
import java.util.List;

public enum PrimitiveType implements Type {
	BOOLEAN(1),
	CHARACTER(1),
	STRING(4),
	INTEGER(4),
	FLOATING(8),
	ERROR(0),			// use as a value when a syntax error has occurred
	NO_TYPE(0, "");		// use as a value when no type has been assigned.
	
	private int sizeInBytes;
	private String infoString;
	
	private PrimitiveType(int size) {
		this.sizeInBytes = size;
		this.infoString = toString();
	}
	private PrimitiveType(int size, String infoString) {
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
	public boolean equivalent(Type valueType) {
		return this == valueType;
	}

	@Override
	public Type getConcreteType() {
		return this;
	}

	@Override
	public boolean promotable(Type valueType) {
		PrimitiveType[] ValidPromotions = promotable.get(this);
		return Arrays.stream(ValidPromotions).anyMatch(valueType::equals);
	}
}
