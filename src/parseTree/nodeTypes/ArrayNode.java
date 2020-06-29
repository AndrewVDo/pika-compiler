package parseTree.nodeTypes;

import lexicalAnalyzer.Keyword;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.signatures.FunctionSignature;
import tokens.LextantToken;
import tokens.Token;

import java.util.List;

public class ArrayNode extends ParseNode {

    public ArrayNode(Token token) {
        super(token);
    }

    //for [1, 2...]
    public static ArrayNode withChildren(Token token, List<ParseNode> elements) {
        ArrayNode node = new ArrayNode(token);
        for(ParseNode p : elements) {
            node.appendChild(p);
        }
        return node;
    }

    //for alloc
    public static ArrayNode with(Token alloc, ParseNode type, ParseNode length) {
        ArrayNode node = new ArrayNode(alloc);
        node.appendChild(type);
        node.appendChild(length);
        return node;
    }

    public void accept(ParseNodeVisitor visitor) {
        visitor.visitEnter(this);
        visitChildren(visitor);
        visitor.visitLeave(this);
    }


//    private FunctionSignature signature = FunctionSignature.nullInstance();
//    public final FunctionSignature getSignature() {
//        return signature;
//    }
//    public final void setSignature(FunctionSignature signature) {
//        this.signature = signature;
//    }
}
