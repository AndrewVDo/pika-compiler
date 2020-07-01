package parseTree.nodeTypes;

import lexicalAnalyzer.Keyword;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.types.ArrayType;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;
import tokens.LextantToken;
import tokens.Token;

public class TypeNode extends ParseNode {

	public TypeNode(Token token) {
		super(token);
		assert(token instanceof LextantToken);
	}

	public static TypeNode with(Token token, int arrayDepth) {
		TypeNode node = new TypeNode(token);

		Type tv = primitiveTypeFinder(token);
		for(int i=0; i<arrayDepth; i++) {
			tv = new ArrayType(tv);
		}
		node.setType(tv);

		return node;
	};

	private static PrimitiveType primitiveTypeFinder(Token token) {
		if(token.isLextant(Keyword.FLOAT)) return PrimitiveType.FLOATING;
		if(token.isLextant(Keyword.INT)) return PrimitiveType.INTEGER;
		if(token.isLextant(Keyword.CHAR)) return PrimitiveType.CHARACTER;
		if(token.isLextant(Keyword.BOOL)) return PrimitiveType.BOOLEAN;
		if(token.isLextant(Keyword.STRING)) return PrimitiveType.STRING;
		return PrimitiveType.ERROR;
	}

	public void accept(ParseNodeVisitor visitor) {
		visitor.visit(this);
	}

}
