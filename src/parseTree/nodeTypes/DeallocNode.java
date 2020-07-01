package parseTree.nodeTypes;

import lexicalAnalyzer.Lextant;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import tokens.LextantToken;
import tokens.Token;

public class DeallocNode extends ParseNode {

	public DeallocNode(Token token) {
		super(token);
	}

	public Lextant getDeclarationType() {
		return lextantToken().getLextant();
	}
	public LextantToken lextantToken() {
		return (LextantToken)token;
	}	

	public static DeallocNode withChildren(Token token, ParseNode arrayNode) {
		DeallocNode node = new DeallocNode(token);
		node.appendChild(arrayNode);
		return node;
	}
	
	public void accept(ParseNodeVisitor visitor) {
		visitor.visitEnter(this);
		visitChildren(visitor);
		visitor.visitLeave(this);
	}
}
