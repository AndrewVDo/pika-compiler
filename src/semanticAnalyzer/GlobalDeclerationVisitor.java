package semanticAnalyzer;

import asmCodeGenerator.Labeller;
import lexicalAnalyzer.Keyword;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import parseTree.nodeTypes.*;
import semanticAnalyzer.types.LambdaType;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;
import symbolTable.Binding;
import symbolTable.Scope;

import java.util.ArrayList;
import java.util.List;

public class GlobalDeclerationVisitor extends ParseNodeVisitor.Default {

    @Override
    public void visitEnter(DeclarationNode node) {
        if(isGlobal(node)) {
            node.accept(new SemanticAnalysisVisitor());
        }
    }

    @Override
    public void visitLeave(DeclarationNode node) {
        assert node.nChildren() == 2;
        if(isGlobal(node)) {
            GlobalDeclaration(node);
        }
        return;
    }

    private void GlobalDeclaration(DeclarationNode node) {
        IdentifierNode identifierNode = (IdentifierNode) node.child(0);
        ParseNode initializer = node.child(1);

        Type declarationType = initializer.getType();
        node.setType(declarationType);

        identifierNode.setType(declarationType);
        boolean isVar = node.getToken().isLextant(Keyword.VAR);
        addBinding(identifierNode, declarationType, isVar);
    }

    private boolean isGlobal(ParseNode node) {
        ParseNode parent = node.getParent();
        while( !(parent instanceof ProgramNode) ) {
            if(parent instanceof BlockStatementNode) return false;
            parent = parent.getParent();
        }
        return true;
    }

    private void addBinding(IdentifierNode identifierNode, Type type, boolean isVar) {
        Scope scope = identifierNode.getLocalScope();
        Binding binding = scope.createBinding(identifierNode, type, isVar);
        identifierNode.setBinding(binding);
    }
}
