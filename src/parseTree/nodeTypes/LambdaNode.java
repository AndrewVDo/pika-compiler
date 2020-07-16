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

    public void accept(ParseNodeVisitor visitor) {
        visitor.visitEnter(this);
        visitChildren(visitor);
        visitor.visitLeave(this);
    }
}
