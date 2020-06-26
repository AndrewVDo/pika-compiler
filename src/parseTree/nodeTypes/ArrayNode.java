package parseTree.nodeTypes;

import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import tokens.Token;

import java.util.List;

public class ArrayNode extends ParseNode {

    public ArrayNode(Token token) {
        super(token);
    }
    public ArrayNode(ParseNode node) {
        super(node);
    }

    public static ArrayNode withChildren(Token token, List<ParseNode> elements) {
        ArrayNode node = new ArrayNode(token);
        for(ParseNode p : elements) {
            node.appendChild(p);
        }
        return node;
    }

    ///////////////////////////////////////////////////////////
    // boilerplate for visitors

    public void accept(ParseNodeVisitor visitor) {
        visitor.visitEnter(this);
        visitChildren(visitor);
        visitor.visitLeave(this);
    }
}
