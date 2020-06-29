package parseTree.nodeTypes;

import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.signatures.FunctionSignature;
import lexicalAnalyzer.Lextant;
import tokens.LextantToken;
import tokens.Token;

public class CastExpressionNode extends ParseNode {
	public CastExpressionNode(Token token) {
		super(token);
		assert(token instanceof LextantToken);
	}

	public static CastExpressionNode withChildren(Token token, ParseNode type, ParseNode innerExpression) {
		CastExpressionNode node = new CastExpressionNode(token);
		node.appendChild(type);
		node.appendChild(innerExpression);
		return node;
	}

	public void accept(ParseNodeVisitor visitor) {
		visitor.visitEnter(this);
		visitChildren(visitor);
		visitor.visitLeave(this);
	}

	private FunctionSignature signature = FunctionSignature.nullInstance();
	public final FunctionSignature getSignature() {
		return signature;
	}
	public final void setSignature(FunctionSignature signature) {
		this.signature = signature;
	}
}
