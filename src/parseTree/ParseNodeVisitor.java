package parseTree;

import parseTree.nodeTypes.*;

// Visitor pattern with pre- and post-order visits
public interface ParseNodeVisitor {
	
	// non-leaf nodes: visitEnter and visitLeave
	void visitEnter(UnaryOperatorNode node);
	void visitLeave(UnaryOperatorNode node);

	void visitEnter(BinaryOperatorNode node);
	void visitLeave(BinaryOperatorNode node);
	
	void visitEnter(BlockStatementNode node);
	void visitLeave(BlockStatementNode node);
	
	void visitEnter(AssignmentStatementNode node);
	void visitLeave(AssignmentStatementNode node);

	void visitEnter(DeclarationNode node);
	void visitLeave(DeclarationNode node);

	void visitEnter(ArrayIndexNode node);
	void visitLeave(ArrayIndexNode node);
	
	void visitEnter(CastExpressionNode node);
	void visitLeave(CastExpressionNode node);

	void visitEnter(ParseNode node);
	void visitLeave(ParseNode node);
	
	void visitEnter(PrintStatementNode node);
	void visitLeave(PrintStatementNode node);
	
	void visitEnter(ProgramNode node);
	void visitLeave(ProgramNode node);

	void visitEnter(ControlFlowNode node);
	void visitLeave(ControlFlowNode node);

	void visitEnter(DeallocNode node);
	void visitLeave(DeallocNode node);

	void visitEnter(ArrayNode node);
	void visitLeave(ArrayNode node);

	void visitEnter(FunctionNode node);
	void visitLeave(FunctionNode node);

	void visitEnter(LambdaParamTypeNode node);
	void visitLeave(LambdaParamTypeNode node);

	void visitEnter(LambdaNode node);
	void visitLeave(LambdaNode node);

	void visitEnter(ParameterNode node);
	void visitLeave(ParameterNode node);

	void visitEnter(ReturnNode node);
	void visitLeave(ReturnNode node);

	void visitEnter(CallNode node);
	void visitLeave(CallNode node);

	// leaf nodes: visitLeaf only
	void visit(BooleanConstantNode node);
	void visit(CharacterConstantNode node);
	void visit(ErrorNode node);
	void visit(IdentifierNode node);
	void visit(IntegerConstantNode node);
	void visit(StringConstantNode node);
	void visit(FloatingConstantNode node);
    void visit(TypeNode typeNode);


    public static class Default implements ParseNodeVisitor
	{
		public void defaultVisit(ParseNode node) {	}
		public void defaultVisitEnter(ParseNode node) {
			defaultVisit(node);
		}
		public void defaultVisitLeave(ParseNode node) {
			defaultVisit(node);
		}		
		public void defaultVisitForLeaf(ParseNode node) {
			defaultVisit(node);
		}

		public void visitEnter(UnaryOperatorNode node) { defaultVisitEnter(node); }
		public void visitLeave(UnaryOperatorNode node) { defaultVisitLeave(node); }
		public void visitEnter(BinaryOperatorNode node) {
			defaultVisitEnter(node);
		}
		public void visitLeave(BinaryOperatorNode node) {
			defaultVisitLeave(node);
		}
		public void visitEnter(DeclarationNode node) {
			defaultVisitEnter(node);
		}
		public void visitLeave(DeclarationNode node) {
			defaultVisitLeave(node);
		}
		public void visitEnter(ArrayIndexNode node) {
			defaultVisitEnter(node);
		}
		public void visitLeave(ArrayIndexNode node) {
			defaultVisitLeave(node);
		}
		public void visitEnter(CastExpressionNode node) {
			defaultVisitEnter(node);
		}
		public void visitLeave(CastExpressionNode node) {
			defaultVisitLeave(node);
		}
		public void visitEnter(BlockStatementNode node) {
			defaultVisitEnter(node);
		}
		public void visitLeave(BlockStatementNode node) {
			defaultVisitLeave(node);
		}			
		public void visitEnter(AssignmentStatementNode node) {
			defaultVisitEnter(node);
		}
		public void visitLeave(AssignmentStatementNode node) {
			defaultVisitLeave(node);
		}
		public void visitEnter(ParseNode node) {
			defaultVisitEnter(node);
		}
		public void visitLeave(ParseNode node) {
			defaultVisitLeave(node);
		}
		public void visitEnter(PrintStatementNode node) {
			defaultVisitEnter(node);
		}
		public void visitLeave(PrintStatementNode node) {
			defaultVisitLeave(node);
		}
		public void visitEnter(ProgramNode node) {
			defaultVisitEnter(node);
		}
		public void visitLeave(ProgramNode node) {
			defaultVisitLeave(node);
		}
		public void visitEnter(ControlFlowNode node) {
			defaultVisitEnter(node);
		}
		public void visitLeave(ControlFlowNode node) {
			defaultVisitLeave(node);
		}
		public void visitEnter(DeallocNode node) {
			defaultVisitEnter(node);
		}
		public void visitLeave(DeallocNode node) {
			defaultVisitLeave(node);
		}
		public void visitEnter(ArrayNode node) {
			defaultVisitEnter(node);
		}
		public void visitLeave(ArrayNode node) {
			defaultVisitLeave(node);
		}
		public void visitEnter(FunctionNode node) { defaultVisitEnter(node); }
		public void visitLeave(FunctionNode node) { defaultVisitLeave(node); }
		public void visitEnter(LambdaParamTypeNode node) { defaultVisitEnter(node); }
		public void visitLeave(LambdaParamTypeNode node) { defaultVisitLeave(node); }
		public void visitEnter(LambdaNode node) { defaultVisitEnter(node); }
		public void visitLeave(LambdaNode node) { defaultVisitLeave(node); }
		public void visitEnter(ParameterNode node) { defaultVisitEnter(node); }
		public void visitLeave(ParameterNode node) { defaultVisitLeave(node); }
		public void visitEnter(ReturnNode node) {
			defaultVisitEnter(node);
		}
		public void visitLeave(ReturnNode node) {
			defaultVisitLeave(node);
		}
		public void visitEnter(CallNode node) {
			defaultVisitEnter(node);
		}
		public void visitLeave(CallNode node) {
			defaultVisitLeave(node);
		}


		public void visit(BooleanConstantNode node) {
			defaultVisitForLeaf(node);
		}
		public void visit(CharacterConstantNode node) {
			defaultVisitForLeaf(node);
		}
		public void visit(ErrorNode node) {
			defaultVisitForLeaf(node);
		}
		public void visit(IdentifierNode node) {
			defaultVisitForLeaf(node);
		}
		public void visit(IntegerConstantNode node) {
			defaultVisitForLeaf(node);
		}
		public void visit(StringConstantNode node) {
			defaultVisitForLeaf(node);
		}
		public void visit(FloatingConstantNode node) {
			defaultVisitForLeaf(node);
		}
		public void visit(TypeNode node) { defaultVisitForLeaf(node); }

	}
}
