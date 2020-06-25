package semanticAnalyzer.types;

import java.util.Arrays;

public class TypeVariable implements Type{
    private String name;
    private Type typeConstraint;

    public TypeVariable(String name) {
        this.name = name;
        this.typeConstraint = PrimitiveType.NO_TYPE;
    }

    private void setType(PrimitiveType type) {
        typeConstraint = type;
    }

    public Type getType() {
        return typeConstraint;
    }

    public int getSize() {
        return 0; //does not matter
    }

    public String infoString() {
        return toString();
    }

    @Override
    public boolean equivalent(Type valueType) {
        if(valueType instanceof TypeVariable) {
            throw new RuntimeException("Runtime error: equivalent attempted on two types containing type variables");

        }
        if(this.getType() == PrimitiveType.NO_TYPE) {
            setType((PrimitiveType) valueType);
            return true;
        }
        return this.getType().equivalent(valueType);
    }

    public String pikaNativeString() {
        return toString();
    }

    public String toString() {
        return "<" + name + ">";
    }

    public void reset() {
        setType(PrimitiveType.NO_TYPE);
    }

    @Override
    public Type getConcreteType() {
        return getType().getConcreteType();
    }

    @Override
    public boolean promotable(Type valueType) {
        PrimitiveType[] ValidPromotions = promotable.get(this.getType());
        return Arrays.stream(ValidPromotions).anyMatch(valueType::equals);
    }
}
