package parseTree.nodeTypes;

import lexicalAnalyzer.Keyword;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.signatures.FunctionSignature;
import lexicalAnalyzer.Lextant;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;
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

	//for promotions
	public static CastExpressionNode withChildren(Type type, ParseNode innerExpression) {
		Token artificialCast = LextantToken.artificial(innerExpression.getToken(), getCast(type));
		return withChildren(artificialCast, TypeNode.with(artificialCast,0), innerExpression);
	}

	private static Lextant getCast(Type type) {
		if(type == PrimitiveType.INTEGER) {
			return Keyword.INT;
		}
		else if(type == PrimitiveType.FLOATING) {
			return Keyword.FLOAT;
		}
//		else if(type == PrimitiveType.RATIONAL) {
//			return Keyword.RATIONAL;
//		}
		return Keyword.NULL_KEYWORD;
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
