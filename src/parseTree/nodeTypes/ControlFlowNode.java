package parseTree.nodeTypes;

import asmCodeGenerator.Labeller;
import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Lextant;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.types.ArrayType;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;
import symbolTable.Binding;
import symbolTable.Scope;
import tokens.LextantToken;
import tokens.Token;

public class ControlFlowNode extends ParseNode {
	public Labeller labeller;
	public String getBreakStatement() {
		return labeller.newLabel("break");
	}
	public String getContinueStatement() {
		return labeller.newLabel("continue");
	}

	public ControlFlowNode(Token token) {
		super(token);
		assert(token instanceof LextantToken);
		labeller = new Labeller("control-flow-" + ((LextantToken) token).getLextant());
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

	private Token iteration;
	public Token getIteration() {
		return iteration;
	}
	public void setIteration(Token iteration) {
		this.iteration = iteration;
	}

	public static ControlFlowNode withChildren(Token forToken, Token iteration, ParseNode identifier, ParseNode record, ParseNode innerBlockStatement ) {
		ControlFlowNode node = new ControlFlowNode(forToken);
		node.setIteration(iteration);
		node.appendChild(identifier);
		node.appendChild(record);
		node.appendChild(innerBlockStatement);
		return node;
	}
	
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
		if(this.getToken().isLextant(Keyword.FOR)) {
			assert this.nChildren() == 3;
			visitor.visitEnter(this);
			this.child(0).accept(visitor);
			this.child(1).accept(visitor);
			setupIterator();
			this.child(2).accept(visitor);
			visitor.visitLeave(this);
		}
		else {
			visitor.visitEnter(this);
			visitChildren(visitor);
			visitor.visitLeave(this);
		}
	}

	//called before blockstatement in a for loop, sets up types for binding on blockstatement
	private void setupIterator() {
		assert this.nChildren() == 3;
		if(
				!(this.child(0) instanceof IdentifierNode) ||
				(!(this.child(1).getType() instanceof ArrayType) && !(this.child(1).getType() == PrimitiveType.STRING))  ||
				!(this.child(2) instanceof BlockStatementNode) ||
				!this.getIteration().isLextant(Keyword.INDEX, Keyword.ELEM)
		) {
			return; //error message must be sent in semantic visitor
		}

		IdentifierNode identifier = (IdentifierNode) this.child(0);
		ParseNode expression = this.child(1);

		//set identifier type
		if(this.getIteration().isLextant(Keyword.INDEX)) {
			identifier.setType(PrimitiveType.INTEGER);
		}
		else { //elem
			if(expression.getType() == PrimitiveType.STRING) {
				identifier.setType(PrimitiveType.CHARACTER);
			}
			else {
				Type recordType = ((ArrayType)expression.getType()).getSubtype();
				identifier.setType(recordType);
			}
		}
	}
}
