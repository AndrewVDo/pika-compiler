package parseTree.nodeTypes;

import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import tokens.Token;

import java.util.List;

public class FunctionInvocationNode extends ParseNode {
    public FunctionInvocationNode(Token token) {
        super(token);
    }

    public static FunctionInvocationNode withChildren(Token token, ParseNode lambdaExpression, List<ParseNode> arguments) {
        FunctionInvocationNode functionInvocationNode = new FunctionInvocationNode(token);
        functionInvocationNode.appendChild(lambdaExpression);
        for(ParseNode n : arguments) {
            functionInvocationNode.appendChild(n);
        }
        return functionInvocationNode;
    }

    public void accept(ParseNodeVisitor visitor) {
        visitor.visitEnter(this);
        visitChildren(visitor);
        visitor.visitLeave(this);
    }
}
