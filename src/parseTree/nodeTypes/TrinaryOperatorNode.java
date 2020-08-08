package parseTree.nodeTypes;

import lexicalAnalyzer.Lextant;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.signatures.FunctionSignature;
import tokens.LextantToken;
import tokens.Token;

public class TrinaryOperatorNode extends ParseNode {
	private FunctionSignature signature = FunctionSignature.nullInstance();

	public TrinaryOperatorNode(Token token) {
		super(token);
		assert(token instanceof LextantToken);
	}

	public TrinaryOperatorNode(ParseNode node) {
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
	
	public static TrinaryOperatorNode withChildren(Token token, ParseNode left, ParseNode middle, ParseNode right) {
		TrinaryOperatorNode node = new TrinaryOperatorNode(token);
		node.appendChild(left);
		node.appendChild(middle);
		node.appendChild(right);
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
