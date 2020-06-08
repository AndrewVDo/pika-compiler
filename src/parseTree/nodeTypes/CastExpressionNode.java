package parseTree.nodeTypes;

import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.signatures.FunctionSignature;
import lexicalAnalyzer.Lextant;
import tokens.LextantToken;
import tokens.Token;

public class CastExpressionNode extends ParseNode {
	private FunctionSignature signature = FunctionSignature.nullInstance();

	public CastExpressionNode(Token token) {
		super(token);
		assert(token instanceof LextantToken);
	}

	public CastExpressionNode(ParseNode node) {
		super(node);
	}
	
	
	////////////////////////////////////////////////////////////
	// attributes
	
	public Lextant getCastType() {
		return lextantToken().getLextant();
	}
	public LextantToken lextantToken() {
		return (LextantToken)token;
	}	
	
	
	////////////////////////////////////////////////////////////
	// convenience factory
	
	public static CastExpressionNode withChildren(Token token, ParseNode innerExpression) {
		CastExpressionNode node = new CastExpressionNode(token);
		node.appendChild(innerExpression);
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
