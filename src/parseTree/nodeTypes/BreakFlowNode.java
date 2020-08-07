package parseTree.nodeTypes;

import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import tokens.Token;

public class BreakFlowNode extends ParseNode {
    public String breakLabel;
    public String continueLabel;

    public BreakFlowNode(Token token) {
        super(token);
    }
    public void accept(ParseNodeVisitor visitor) {
        visitor.visit(this);
    }
}
