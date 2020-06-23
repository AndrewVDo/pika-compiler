package parseTree.nodeTypes;

import lexicalAnalyzer.Lextant;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.signatures.FunctionSignature;
import tokens.LextantToken;
import tokens.Token;

public class ControlFlowNode extends ParseNode {
	public ControlFlowNode(Token token) {
		super(token);
		assert(token instanceof LextantToken);
	}

	public ControlFlowNode(ParseNode node) {
		super(node);
	}
	
	
	////////////////////////////////////////////////////////////
	// attributes
	
	public Lextant getControlFlowStatement() {
		return lextantToken().getLextant();
	}
	public LextantToken lextantToken() {
		return (LextantToken)token;
	}	
	
	
	////////////////////////////////////////////////////////////
	// convenience factory
	
	public static ControlFlowNode withChildren(Token token, ParseNode condition, ParseNode innerBlockStatement) {
		ControlFlowNode node = new ControlFlowNode(token);
		node.appendChild(condition);
		node.appendChild(innerBlockStatement);
		return node;
	}

	public static ControlFlowNode withChildren(Token token, ParseNode condition, ParseNode innerBlockStatement, ParseNode elseBlockStatement) {
		ControlFlowNode node = new ControlFlowNode(token);
		node.appendChild(condition);
		node.appendChild(innerBlockStatement);
		node.appendChild(elseBlockStatement);
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
