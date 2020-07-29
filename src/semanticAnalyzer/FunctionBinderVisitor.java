package semanticAnalyzer;

import asmCodeGenerator.Labeller;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import parseTree.nodeTypes.*;
import semanticAnalyzer.types.LambdaType;
import semanticAnalyzer.types.Type;
import symbolTable.Binding;
import symbolTable.Scope;

import java.util.ArrayList;
import java.util.List;

public class FunctionBinderVisitor extends ParseNodeVisitor.Default {
    private static Labeller functionLabeller;

    public FunctionBinderVisitor () {
        super();
        functionLabeller = new Labeller("function");
    }

    @Override
    public void visitEnter(ProgramNode node) {
        allocateProgramScope(node);
    }

    private void allocateProgramScope(ParseNode node) {
        Scope scope = Scope.createProgramScope();
        node.setScope(scope);
    }

    @Override
    public void visitLeave(FunctionNode node) {
        assert(node.nChildren() == 2);

        if(!(node.child(0) instanceof IdentifierNode)) {
            //todo error
        }
        if(!(node.child(1) instanceof LambdaNode)) {
            //todo error
        }

        IdentifierNode identifierNode = (IdentifierNode) node.child(0);
        LambdaNode lambdaNode = (LambdaNode) node.child(1);
        Type lambdaType = lambdaNode.getType();

        identifierNode.setType(lambdaType);
        addBinding(identifierNode, lambdaType);
    }
    @Override
    public void visitLeave(LambdaNode node) {
        assert(node.nChildren() == 2);

        //type
        LambdaParamTypeNode lambdaParamTypeNode = (LambdaParamTypeNode) node.child(0);
        node.setType(lambdaParamTypeNode.getType());

        //scope
        Scope localScope = node.getLocalScope();
        Scope parameterScope = localScope.createParameterScope();
        node.setScope(parameterScope);
    }
    @Override
    public void visitLeave(LambdaParamTypeNode node) {
        assert(node.nChildren() > 0);
        List<Type> paramTypes = new ArrayList<>();
        for(int i=0; i<node.nChildren()-1; i++) {
            paramTypes.add(node.child(i).getType());
        }
        Type returnType = node.child(node.nChildren()-1).getType();
        LambdaType lambdaType = new LambdaType(paramTypes, returnType);
        node.setType(lambdaType);
    }
    @Override
    public void visitLeave(ParameterNode node) {
        assert(node.nChildren() == 2);
        TypeNode typeNode = (TypeNode) node.child(0);
        node.setType(typeNode.getType());
    }

    private void addBinding(IdentifierNode identifierNode, Type type) {
        Scope scope = identifierNode.getLocalScope();
        Binding binding = scope.createBinding(identifierNode, type, true);
        identifierNode.setBinding(binding);
    }
}
