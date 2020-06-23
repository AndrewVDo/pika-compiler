package semanticAnalyzer.types;

public class TypeVariable implements Type{
    private String name;
    private Type typeConstraint = PrimitiveType.NO_TYPE;

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

    public String pikaNativeString() {
        return toString();
    }

    public String toString() {
        return "<" + name + ">";
    }
}
