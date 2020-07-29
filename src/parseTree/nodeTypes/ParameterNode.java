package parseTree.nodeTypes;

import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import tokens.Token;

public class ParameterNode extends ParseNode {
    public ParameterNode(Token token) {
        super(token);
    }

    public static ParameterNode withChildren(Token token, ParseNode type, ParseNode identifier) {
        ParameterNode functionNode = new ParameterNode(token);
        functionNode.appendChild(type);
        functionNode.appendChild(identifier);
        return functionNode;
    }

    public void accept(ParseNodeVisitor visitor) {
        visitor.visitEnter(this);
        visitChildren(visitor);
        visitor.visitLeave(this);
    }
}
