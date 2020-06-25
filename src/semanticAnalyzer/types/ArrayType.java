package semanticAnalyzer.types;

public class ArrayType implements Type {
    private Type subtype;

    public ArrayType(Type type) {
        this.subtype = type;
    }

    @Override
    public int getSize() {
        return 0;
    }

    @Override
    public String infoString() {
        return null;
    }

    public Type getSubtype() {
        return subtype;
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
    public Type getConcreteType() {
        Type concreteSubtype = subtype.getConcreteType();

        return new ArrayType(concreteSubtype);
    }
}