package semanticAnalyzer.types;

import semanticAnalyzer.signatures.FunctionSignature;

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

    public FunctionSignature getSignature() {
        Type[] formattedArray = paramTypes.toArray(new Type[paramTypes.size() + 1]);
        formattedArray[formattedArray.length-1] = this.getReturnType();
        return new FunctionSignature(1, formattedArray);
    }

    public Type getReturnType() {
        return this.returnType;
    }
    public List<Type> getParamTypes() { return this.paramTypes; }

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
        return true;
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
