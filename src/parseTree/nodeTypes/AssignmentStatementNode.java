package parseTree.nodeTypes;

import lexicalAnalyzer.Lextant;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import tokens.LextantToken;
import tokens.Token;

public class AssignmentStatementNode extends ParseNode {

	public AssignmentStatementNode(Token token) {
		super(token);
	}

	public Lextant getDeclarationType() {
		return lextantToken().getLextant();
	}
	public LextantToken lextantToken() {
		return (LextantToken)token;
	}	

	public static AssignmentStatementNode withChildren(Token token, ParseNode declaredName, ParseNode initializer) {
		AssignmentStatementNode node = new AssignmentStatementNode(token);
		node.appendChild(declaredName);
		node.appendChild(initializer);
		return node;
	}
	
	public void accept(ParseNodeVisitor visitor) {
		visitor.visitEnter(this);
		visitChildren(visitor);
		visitor.visitLeave(this);
	}
}
