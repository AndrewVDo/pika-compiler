package semanticAnalyzer.types;

import java.util.ArrayList;
import java.util.List;

public class LambdaType implements Type {
    private List<Type>  paramTypes = new ArrayList<>();
    private Type        returnType;

    public LambdaType(List<Type> paramTypes, Type returnType) {
        this.paramTypes.addAll(paramTypes);
        this.returnType = returnType;
    }

    //todo retrieve/manufacture function sig


    @Override
    public int getSize() {
        return 4;
    }

    @Override
    public String infoString() {
        String info = new String("L(<");
        for(Type t : paramTypes) {
            info += t.infoString() + ", ";
        }
        if(info.length() > 1) {
            info = info.substring(0, info.length()-2);
        }
        info += "> -> " + returnType.infoString() + ")";

        return info;
    }

    @Override
    public Type getConcreteType() {
        return null;
    }

    @Override
    public boolean isReference() {
        return false;
    }

    @Override
    public boolean equivalent(Type valueType) {
        return false;
    }

    @Override
    public boolean promotable(Type valueType) {
        return false;
    }
}
