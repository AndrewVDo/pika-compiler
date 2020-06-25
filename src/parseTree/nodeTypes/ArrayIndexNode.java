package parseTree.nodeTypes;

import lexicalAnalyzer.Lextant;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.signatures.FunctionSignature;
import tokens.LextantToken;
import tokens.Token;

public class ArrayIndexNode extends ParseNode {

	public ArrayIndexNode(Token token) {
		super(token);
		assert(token instanceof LextantToken);
	}

	public ArrayIndexNode(ParseNode node) {
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
	
	public static ArrayIndexNode withChildren(Token token, ParseNode array, ParseNode index) {
		ArrayIndexNode node = new ArrayIndexNode(token);
		node.appendChild(array);
		node.appendChild(index);
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
