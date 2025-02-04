package semanticAnalyzer.types;

import java.util.Arrays;

public class ArrayType implements Type {
    private Type subtype;

    public ArrayType(Type type) {
        this.setSubtype(type);
    }
    public void setSubtype(Type subtype) {
        this.subtype = subtype;
    }
    public Type getSubtype() {
        return subtype;
    }

    @Override
    public int getSize() {
        return 4;
    }
    @Override
    public String infoString() {
        return "a[" + this.getSubtype().infoString() + "]";
    }
    @Override
    public Type getConcreteType() {
        Type concreteSubtype = subtype.getConcreteType();
        return new ArrayType(concreteSubtype);
    }

    @Override
    public boolean isReference() {
        return true;
    }

    @Override
    public boolean equivalent(Type valueType) {
        if(valueType instanceof ArrayType) {
            ArrayType otherArray = (ArrayType)valueType;
            return subtype.equivalent(otherArray.getSubtype());
        }
        return false;
    }
    @Override
    public boolean promotable(Type valueType) {
        PrimitiveType[] ValidPromotions = promotable.get(subtype);
        return Arrays.stream(ValidPromotions).anyMatch(valueType::equals);
    }
}
