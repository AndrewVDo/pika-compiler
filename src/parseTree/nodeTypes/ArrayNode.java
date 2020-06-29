package parseTree.nodeTypes;

import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.signatures.FunctionSignature;
import tokens.Token;

import java.util.List;

public class ArrayNode extends ParseNode {
    private FunctionSignature signature = FunctionSignature.nullInstance();

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
        //todo refactor this to have 2 child nodes similar to the function bellow
    }

    public static ArrayNode withChildren(Token alloc, ParseNode type, ParseNode length) {
        ArrayNode node = new ArrayNode(alloc);
        node.appendChild(type);
        node.appendChild(length);
        return node;
    }

    ///////////////////////////////////////////////////////////
    // boilerplate for visitors

    public void accept(ParseNodeVisitor visitor) {
        visitor.visitEnter(this);
        visitChildren(visitor);
        visitor.visitLeave(this);
    }

    public final FunctionSignature getSignature() {
        return signature;
    }
    public final void setSignature(FunctionSignature signature) {
        this.signature = signature;
    }
}
