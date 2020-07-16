package parseTree.nodeTypes;

import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.signatures.FunctionSignature;
import tokens.Token;

public class LambdaNode extends ParseNode {
    public LambdaNode(Token token) {
        super(token);
    }

    public static LambdaNode withChildren(Token token, ParseNode lambdaParamType, ParseNode blockStatement) {
        LambdaNode lambdaNode = new LambdaNode(token);
        lambdaNode.appendChild(lambdaParamType);
        lambdaNode.appendChild(blockStatement);
        return lambdaNode;
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
