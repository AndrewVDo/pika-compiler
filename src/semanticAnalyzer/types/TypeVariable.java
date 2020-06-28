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
        this.typeConstraint = type;
    }
    public Type getType() {
        return typeConstraint;
    }

    @Override
    public int getSize() {
        return 0;
    }
    @Override
    public String infoString() {
        return "<" + name + ">";
    }
    @Override
    public Type getConcreteType() {
        return getType().getConcreteType();
    }

    @Override
    public boolean isReference() {
        return getType().isReference();
    }

    @Override
    public boolean equivalent(Type valueType) {
        if(valueType instanceof TypeVariable) {
            throw new RuntimeException("equivalent attempted on two types containing type variables");
        }
        if(this.getType() == PrimitiveType.NO_TYPE) {
            setType((PrimitiveType) valueType);
            return true;
        }
        return this.getType().equivalent(valueType);
    }
    public void reset() {
        setType(PrimitiveType.NO_TYPE);
    }
    @Override
    public boolean promotable(Type valueType) {
        PrimitiveType[] ValidPromotions = promotable.get(this.getType());
        return Arrays.stream(ValidPromotions).anyMatch(valueType::equals);
    }
}
