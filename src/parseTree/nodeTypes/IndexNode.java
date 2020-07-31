package parseTree.nodeTypes;

import lexicalAnalyzer.Lextant;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import tokens.LextantToken;
import tokens.Token;

public class IndexNode extends ParseNode {

	public IndexNode(Token token) {
		super(token);
		assert(token instanceof LextantToken);
	}

	public IndexNode(ParseNode node) {
		super(node);
	}
	
	
	////////////////////////////////////////////////////////////
	// attributes
	
	public Lextant getOperator() {
		return lextantToken().getLextant();
	}
	public LextantToken lextantToken() {
		return (LextantToken)token;
	}	
	
	
	////////////////////////////////////////////////////////////
	// convenience factory
	
	public static IndexNode withChildren(Token token, ParseNode array, ParseNode index) {
		IndexNode node = new IndexNode(token);
		node.appendChild(array);
		node.appendChild(index);
		return node;
	}

	public static IndexNode withChildren(Token token, ParseNode array, ParseNode index, ParseNode endIndex) {
		IndexNode node = new IndexNode(token);
		node.appendChild(array);
		node.appendChild(index);
		node.appendChild(endIndex);
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
