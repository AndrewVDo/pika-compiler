package parseTree.nodeTypes;

import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import tokens.Token;

import java.util.List;

public class CallNode extends ParseNode {
    public CallNode(Token token) {
        super(token);
    }

    public static CallNode withChildren(Token token, ParseNode functionInvocation) {
        CallNode callNode = new CallNode(token);
        callNode.appendChild(functionInvocation);
        return callNode;
    }

    //todo generate sig

    public void accept(ParseNodeVisitor visitor) {
        visitor.visitEnter(this);
        visitChildren(visitor);
        visitor.visitLeave(this);
    }
}
