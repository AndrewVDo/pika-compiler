package parseTree.nodeTypes;

import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.signatures.FunctionSignature;
import tokens.Token;

import java.util.List;

public class LambdaTypeNode extends ParseNode {
    public LambdaTypeNode(Token token) {
        super(token);
    }

    public static LambdaTypeNode withChildren(Token token, List<ParseNode> params, ParseNode returnType) {
        LambdaTypeNode lambdaTypeNode = new LambdaTypeNode(token);
        for(ParseNode param : params) {
            lambdaTypeNode.appendChild(param);
        }
        lambdaTypeNode.appendChild(returnType);
        return lambdaTypeNode;
    }

    private FunctionSignature functionSignature;
    public void setFunctionSignature(FunctionSignature functionSignature) {
        this.functionSignature = functionSignature;
    }
    public FunctionSignature getFunctionSignature() {
        return this.functionSignature;
    }

    public void accept(ParseNodeVisitor visitor) {
        visitor.visitEnter(this);
        visitChildren(visitor);
        visitor.visitLeave(this);
    }
}
