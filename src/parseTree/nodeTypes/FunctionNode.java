package parseTree.nodeTypes;

import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.signatures.FunctionSignature;
import tokens.Token;

public class FunctionNode extends ParseNode {
    public FunctionNode(Token token) {
        super(token);
    }

    public static FunctionNode withChildren(Token token, ParseNode identifier, ParseNode lambda) {
        FunctionNode functionNode = new FunctionNode(token);
        functionNode.appendChild(identifier);
        functionNode.appendChild(lambda);
        return functionNode;
    }

    public void accept(ParseNodeVisitor visitor) {
        visitor.visitEnter(this);
        visitChildren(visitor);
        visitor.visitLeave(this);
    }
}
