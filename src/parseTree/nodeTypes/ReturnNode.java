package parseTree.nodeTypes;

import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import tokens.Token;

public class ReturnNode extends ParseNode {
    public ReturnNode(Token token) {
        super(token);
    }

    public static ReturnNode withChildren(Token token, ParseNode expression) {
        ReturnNode returnNode = new ReturnNode(token);
        returnNode.appendChild(expression);
        return returnNode;
    }

    public void accept(ParseNodeVisitor visitor) {
        visitor.visitEnter(this);
        visitChildren(visitor);
        visitor.visitLeave(this);
    }
}
