package parseTree.nodeTypes;

import asmCodeGenerator.Labeller;
import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Lextant;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import tokens.LextantToken;
import tokens.Token;

public class DeclarationNode extends ParseNode {

	public DeclarationNode(Token token) {
		super(token);
		assert(token.isLextant(Keyword.CONST) || token.isLextant(Keyword.VAR));
	}

	public DeclarationNode(ParseNode node) {
		super(node);
	}
	
	
	////////////////////////////////////////////////////////////
	// attributes
	
	public Lextant getDeclarationType() {
		return lextantToken().getLextant();
	}
	public LextantToken lextantToken() {
		return (LextantToken)token;
	}	
	
	
	////////////////////////////////////////////////////////////
	// convenience factory
	
	public static DeclarationNode withChildren(Token token, ParseNode declaredName, ParseNode initializer, boolean isStatic) {
		DeclarationNode node = new DeclarationNode(token);
		node.appendChild(declaredName);
		node.appendChild(initializer);
		node.setStatic(isStatic);
		if(isStatic) {
			node.setAnonymousGlobalSymbol();
		}
		return node;
	}

	private boolean isStatic;
	public boolean isStatic() {
		return isStatic;
	}
	public void setStatic(boolean value) {
		isStatic = value;
	}

	private String anonymousGlobalSymbol;
	private void setAnonymousGlobalSymbol() {
		if(anonymousGlobalSymbol != null) {
			return;
		}
		Labeller labeller = new Labeller("Anonymous-Global-Symbol");
		this.anonymousGlobalSymbol = labeller.newLabel(this.child(0).getToken().getLexeme());
	}
	public String getAnonymousGlobalSymbol() {
		return this.anonymousGlobalSymbol;
	}

	private boolean isStaticallyDeclared;
	public boolean isStaticallyDeclared() {
		return isStaticallyDeclared;
	}
	public void setStaticallyDeclared() {
		isStaticallyDeclared = true;
	}
	
	
	///////////////////////////////////////////////////////////
	// boilerplate for visitors
			
	public void accept(ParseNodeVisitor visitor) {
		visitor.visitEnter(this);
		visitChildren(visitor);
		visitor.visitLeave(this);
	}
}
