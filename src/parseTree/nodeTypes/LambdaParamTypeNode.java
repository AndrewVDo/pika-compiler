package parseTree.nodeTypes;

import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import tokens.Token;

import java.util.List;

public class LambdaParamTypeNode extends ParseNode {
    public LambdaParamTypeNode(Token token) {
        super(token);
    }

    public static LambdaParamTypeNode withChildren(Token token, List<ParseNode> params, ParseNode returnType) {
        LambdaParamTypeNode lambdaParamTypeNode = new LambdaParamTypeNode(token);
        for(ParseNode param : params) {
            lambdaParamTypeNode.appendChild(param);
        }
        lambdaParamTypeNode.appendChild(returnType);
        return lambdaParamTypeNode;
    }

    public void accept(ParseNodeVisitor visitor) {
        visitor.visitEnter(this);
        visitChildren(visitor);
        visitor.visitLeave(this);
    }
}
