package parser;

import java.util.Arrays;

import logging.PikaLogger;
import parseTree.*;
import parseTree.nodeTypes.*;
import tokens.*;
import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Lextant;
import lexicalAnalyzer.Punctuator;
import lexicalAnalyzer.Scanner;


public class Parser {
	private Scanner scanner;
	private Token nowReading;
	private Token previouslyRead;
	
	public static ParseNode parse(Scanner scanner) {
		Parser parser = new Parser(scanner);
		return parser.parse();
	}
	public Parser(Scanner scanner) {
		super();
		this.scanner = scanner;
	}
	
	public ParseNode parse() {
		readToken();
		return parseProgram();
	}

	////////////////////////////////////////////////////////////
	// "program" is the start symbol S
	// S -> EXEC blockStatement
	
	private ParseNode parseProgram() {
		if(!startsProgram(nowReading)) {
			return syntaxErrorNode("program");
		}
		ParseNode program = new ProgramNode(nowReading);
		
		expect(Keyword.EXEC);
		ParseNode mainBlock = parseBlockStatement();
		program.appendChild(mainBlock);
		
		if(!(nowReading instanceof NullToken)) {
			return syntaxErrorNode("end of program");
		}
		
		return program;
	}
	private boolean startsProgram(Token token) {
		return token.isLextant(Keyword.EXEC);
	}
	
	
	///////////////////////////////////////////////////////////
	// blockStatement
	
	// blockStatement -> { statement* }
	private ParseNode parseBlockStatement() {
		if(!startsBlockStatement(nowReading)) {
			return syntaxErrorNode("mainBlock");
		}
		ParseNode mainBlock = new BlockStatementNode(nowReading);
		expect(Punctuator.OPEN_BRACE);
		
		while(startsStatement(nowReading)) {
			ParseNode statement = parseStatement();
			mainBlock.appendChild(statement);
		}
		expect(Punctuator.CLOSE_BRACE);
		return mainBlock;
	}
	private boolean startsBlockStatement(Token token) {
		return token.isLextant(Punctuator.OPEN_BRACE);
	}
	
	
	///////////////////////////////////////////////////////////
	// statements
	
	// statement-> declaration | printStmt | blockStatement | assignment
	private ParseNode parseStatement() {
		if(!startsStatement(nowReading)) {
			return syntaxErrorNode("statement");
		}
		if(startsDeclaration(nowReading)) {
			return parseDeclaration();
		}
		if(startsBlockStatement(nowReading)) {
			return parseBlockStatement();
		}
		if(startsPrintStatement(nowReading)) {
			return parsePrintStatement();
		}
		if(startsAssignmentStatement(nowReading)) {
			return parseAssignmentStatement();
		}
		if(startsControlFlowStatement(nowReading)) {
			return parseControlFlowStatement();
		}
		return syntaxErrorNode("statement");
	}

	private ParseNode parseControlFlowStatement() {
		if(!startsControlFlowStatement(nowReading)) {
			return syntaxErrorNode("controlFlow");
		}
		if(nowReading.isLextant(Keyword.ELSE)) {
			return syntaxErrorNode("else statement without if");
		}

		Token controlStatement = nowReading;
		readToken();
		expect(Punctuator.OPEN_PARANTHESES);
		ParseNode condition = parseExpression();
		expect(Punctuator.CLOSE_PARANTHESES);
		ParseNode innerBlockStatement = parseBlockStatement();

		if(condition instanceof ErrorNode || innerBlockStatement instanceof ErrorNode) {
			return syntaxErrorNode("controlFlow didn't find a condition or inner statement");
		}

		if(controlStatement.isLextant(Keyword.WHILE)) {
			return ControlFlowNode.withChildren(controlStatement, condition, innerBlockStatement);
		}

		if(nowReading.isLextant(Keyword.ELSE)) {
			readToken();
			ParseNode elseBlockStatement = parseBlockStatement();
			return ControlFlowNode.withChildren(controlStatement, condition, innerBlockStatement, elseBlockStatement);
		}

		return ControlFlowNode.withChildren(controlStatement, condition, innerBlockStatement);
	}
	private boolean startsControlFlowStatement(Token token) {
		return token.isLextant(Keyword.IF, Keyword.WHILE, Keyword.ELSE);
	}

	private boolean startsStatement(Token token) {
		return startsPrintStatement(token) ||
			   startsBlockStatement(token) ||	
			   startsAssignmentStatement(token) ||
			   startsDeclaration(token) ||
				startsControlFlowStatement(token);
	}
	
	// assignment -> target := expression .
	private ParseNode parseAssignmentStatement() {
		if(!startsAssignmentStatement(nowReading)) {
			return syntaxErrorNode("assignmentStatement");
		}
		
		ParseNode target = parseTarget();
		Token assignmentToken = nowReading;
		expect(Punctuator.ASSIGN);
		ParseNode expression = parseExpression();
		expect(Punctuator.TERMINATOR);
		return AssignmentStatementNode.withChildren(assignmentToken, target, expression);
	}
	private boolean startsAssignmentStatement(Token token) {
		return startsTarget(token);
	}
	private ParseNode parseTarget() {
		if(!startsTarget(nowReading)) {
			return syntaxErrorNode("target");
		}

		if(startsBracketedExpression(nowReading)) { //(target)
			return parseBracketedExpression();
		}
		return parseIdentifier();//array index
	}
	// target -> identifier
	private boolean startsTarget(Token token) {
		return startsIdentifier(token) || startsBracketedExpression(token);//array index
	}
	
	// printStmt -> PRINT printExpressionList .
	private ParseNode parsePrintStatement() {
		if(!startsPrintStatement(nowReading)) {
			return syntaxErrorNode("print statement");
		}
		PrintStatementNode result = new PrintStatementNode(nowReading);
		
		readToken();
		result = parsePrintExpressionList(result);
		
		expect(Punctuator.TERMINATOR);
		return result;
	}
	private boolean startsPrintStatement(Token token) {
		return token.isLextant(Keyword.PRINT);
	}	

	// This adds the printExpressions it parses to the children of the given parent
	// printExpressionList -> printExpression* bowtie (,|;)  (note that this is nullable)

	private PrintStatementNode parsePrintExpressionList(PrintStatementNode parent) {
		while(startsPrintExpression(nowReading) || startsPrintSeparator(nowReading)) {
			parsePrintExpression(parent);
			parsePrintSeparator(parent);
		}
		return parent;
	}
	

	// This adds the printExpression it parses to the children of the given parent
	// printExpression -> (expr | nl | tab)?     (nullable)
	
	private void parsePrintExpression(PrintStatementNode parent) {
		if(startsExpression(nowReading)) {
			ParseNode child = parseExpression();
			parent.appendChild(child);
		}
		else if(nowReading.isLextant(Keyword.NEWLINE)) {
			readToken();
			ParseNode child = new NewlineNode(previouslyRead);
			parent.appendChild(child);
		}
		else if(nowReading.isLextant(Keyword.TAB)) {
			readToken();
			ParseNode child = new TabNode(previouslyRead);
			parent.appendChild(child);
		}
		// else we interpret the printExpression as epsilon, and do nothing
	}
	private boolean startsPrintExpression(Token token) {
		return startsExpression(token) || token.isLextant(Keyword.NEWLINE) || token.isLextant(Keyword.TAB);
	}
	
	
	// This adds the printExpression it parses to the children of the given parent
	// printExpression -> expr? ,? nl? 
	
	private void parsePrintSeparator(PrintStatementNode parent) {
		if(!startsPrintSeparator(nowReading) && !nowReading.isLextant(Punctuator.TERMINATOR)) {
			ParseNode child = syntaxErrorNode("print separator");
			parent.appendChild(child);
			return;
		}
		
		if(nowReading.isLextant(Punctuator.SPACE)) {
			readToken();
			ParseNode child = new SpaceNode(previouslyRead);
			parent.appendChild(child);
		}
		else if(nowReading.isLextant(Punctuator.SEPARATOR)) {
			readToken();
		}		
		else if(nowReading.isLextant(Punctuator.TERMINATOR)) {
			// we're at the end of the bowtie and this printSeparator is not required.
			// do nothing.  Terminator is handled in a higher-level nonterminal.
		}
	}
	private boolean startsPrintSeparator(Token token) {
		return token.isLextant(Punctuator.SEPARATOR, Punctuator.SPACE) ;
	}
	
	
	// declaration -> (CONST | VAR) identifier := expression .
	private ParseNode parseDeclaration() {
		if(!startsDeclaration(nowReading)) {
			return syntaxErrorNode("declaration");
		}
		Token declarationToken = nowReading;
		readToken();
		
		ParseNode identifier = parseIdentifier();
		expect(Punctuator.ASSIGN);
		ParseNode initializer = parseExpression();
		expect(Punctuator.TERMINATOR);
		
		return DeclarationNode.withChildren(declarationToken, identifier, initializer);
	}
	private boolean startsDeclaration(Token token) {
		return token.isLextant(Keyword.CONST, Keyword.VAR);
	}


	
	///////////////////////////////////////////////////////////
	// expressions
	// expr                     -> comparisonExpression
	// comparisonExpression     -> additiveExpression [> additiveExpression]?
	// additiveExpression       -> multiplicativeExpression [+ multiplicativeExpression]*  (left-assoc)
	// multiplicativeExpression -> atomicExpression [MULT atomicExpression]*  (left-assoc)
	
	// casting && parantheses
	
	// atomicExpression         -> literal
	// literal                  -> intNumber | identifier | booleanConstant

	// expr  -> comparisonExpression
	private ParseNode parseExpression() {
		if(!startsExpression(nowReading)) {
			return syntaxErrorNode("expression");
		}
		Token whatsNow = nowReading;
		return parseBooleanOrExpression();
	}
	private boolean startsExpression(Token token) {
		return startsComparisonExpression(token);
	}


	private ParseNode parseBooleanOrExpression() {
		if(!startsBooleanExpression(nowReading)) {
			return syntaxErrorNode("boolean expression");
		}

		ParseNode left = parseBooleanAndExpression();
		while(nowReading.isLextant(Punctuator.BOOLEAN_OR)) {


			Token booleanToken = nowReading;
			readToken();
			ParseNode right = parseBooleanAndExpression();

			left = BinaryOperatorNode.withChildren(booleanToken, left, right);
		}
		return left;
	}

	private ParseNode parseBooleanAndExpression() {
		if(!startsBooleanExpression(nowReading)) {
			return syntaxErrorNode("boolean expression");
		}

		ParseNode left = parseComparisonExpression();
		while(nowReading.isLextant(Punctuator.BOOLEAN_AND)) {
			Token booleanAndToken = nowReading;
			readToken();
			ParseNode right = parseComparisonExpression();

			left = BinaryOperatorNode.withChildren(booleanAndToken, left, right);
		}
		return left;
	}

	private boolean startsBooleanExpression(Token token) {
		return startsComparisonExpression(token);
	}

	// comparisonExpression -> additiveExpression [> additiveExpression]?
	private ParseNode parseComparisonExpression() {
		if(!startsComparisonExpression(nowReading)) {
			return syntaxErrorNode("comparison expression");
		}
		
		ParseNode left = parseAdditiveExpression();
		while(isComparisonLextant(nowReading)) {
			Token compareToken = nowReading;
			readToken();
			ParseNode right = parseAdditiveExpression();
			
			left = BinaryOperatorNode.withChildren(compareToken, left, right);
		}
		return left;

	}
	
	private boolean isComparisonLextant(Token token) {
		return(token.isLextant(Punctuator.GREATER) || token.isLextant(Punctuator.LESSER) || 
			token.isLextant(Punctuator.GREATEREQUAL) || token.isLextant(Punctuator.LESSEREQUAL) ||
			token.isLextant(Punctuator.EQUAL) || token.isLextant(Punctuator.NOTEQUAL) );
	}
	
	private boolean startsComparisonExpression(Token token) {
		return startsAdditiveExpression(token);
	}

	// additiveExpression -> multiplicativeExpression [+ multiplicativeExpression]*  (left-assoc)
	private ParseNode parseAdditiveExpression() {
		if(!startsAdditiveExpression(nowReading)) {
			return syntaxErrorNode("additiveExpression");
		}
		
		ParseNode left = parseMultiplicativeExpression();
		while(nowReading.isLextant(Punctuator.ADD, Punctuator.SUBTRACT)) {
			Token additiveToken = nowReading;
			readToken();
			ParseNode right = parseMultiplicativeExpression();
			
			left = BinaryOperatorNode.withChildren(additiveToken, left, right);
		}
		return left;
	}
	private boolean startsAdditiveExpression(Token token) {
		return startsMultiplicativeExpression(token);
	}	

	// multiplicativeExpression -> atomicExpression [MULT atomicExpression]*  (left-assoc)
	private ParseNode parseMultiplicativeExpression() {
		if(!startsMultiplicativeExpression(nowReading)) {
			return syntaxErrorNode("multiplicativeExpression");
		}
		
		ParseNode left = parseUnaryExpression();
		while(nowReading.isLextant(Punctuator.MULTIPLY, Punctuator.DIVIDE)) {
			Token multiplicativeToken = nowReading;
			readToken();
			ParseNode right = parseUnaryExpression();
			
			left = BinaryOperatorNode.withChildren(multiplicativeToken, left, right);
		}
		return left;
	}
	private boolean startsMultiplicativeExpression(Token token) {
		return startsUnaryExpression(token);
	}

	private ParseNode parseUnaryExpression() {
		if(!startsUnaryExpression(nowReading)) {
			return syntaxErrorNode("unaryExpression");
		}

		Token unaryOperator = nowReading;
		if(isUnaryOperator(unaryOperator)) {
			readToken();
			return UnaryOperatorNode.withChildren(unaryOperator, parseUnaryExpression());
		}

		return parseArrayIndexExpression();
	}
	private boolean isUnaryOperator(Token token) {
		return token.isLextant(Punctuator.BOOLEAN_NOT);
	}
	private boolean startsUnaryExpression(Token token) {
		return startsIndexExpression(token) || isUnaryOperator(token);
	}

	private ParseNode parseArrayIndexExpression() {
		if(!startsIndexExpression(nowReading)) {
			return syntaxErrorNode("array index");
		}

		ParseNode left = parseBracketedExpression();
		while(nowReading.isLextant(Punctuator.OPEN_BRACKET)) {
			Token arrayIndexOp = nowReading;
			readToken();
			ParseNode right = parseExpression();
			expect(Punctuator.CLOSE_BRACKET);

			//TODO check to see left is array?
			//TODO check to see bracketed properly?

			left = ArrayIndexNode.withChildren(arrayIndexOp, left, right);
		}
		return left;
	}
	private boolean startsIndexExpression(Token token) {
		return startsBracketedExpression(token);
	}
	
	private ParseNode parseBracketedExpression() {
		if(!startsBracketedExpression(nowReading) && !startsAtomicExpression(nowReading)) {
			return syntaxErrorNode("bracketedExpression");
		}
		
		if(nowReading.isLextant(Punctuator.OPEN_BRACKET)) {
			return castExpression();
		}
		if(nowReading.isLextant(Punctuator.OPEN_PARANTHESES)) {
			return paranthesesExpression();
		}
		return parseAtomicExpression();
	}
	private ParseNode castExpression() {
		expect(Punctuator.OPEN_BRACKET);
		ParseNode innerExpression = parseExpression();
		expect(Punctuator.DIVIDE_CAST);
		
		Token newType = nowReading;
		readToken();
		expect(Punctuator.CLOSE_BRACKET);
		
		return CastExpressionNode.withChildren(newType, innerExpression);
	}
	private ParseNode paranthesesExpression() {
		expect(Punctuator.OPEN_PARANTHESES);
		ParseNode innerExpression = parseExpression();
		expect(Punctuator.CLOSE_PARANTHESES);
		
		return innerExpression;
	}
	private boolean startsBracketedExpression(Token token) {
		return startsAtomicExpression(token) || token.isLextant(Punctuator.OPEN_BRACKET, Punctuator.OPEN_PARANTHESES);
	}
	
	// atomicExpression -> literal
	private ParseNode parseAtomicExpression() {
		if(!startsAtomicExpression(nowReading)) {
			return syntaxErrorNode("atomic expression");
		}
		return parseLiteral();
	}
	private boolean startsAtomicExpression(Token token) {
		return startsLiteral(token);
	}
	
	// literal -> number | identifier | booleanConstant | floatingConstant | characterConstant
	private ParseNode parseLiteral() {
		if(!startsLiteral(nowReading)) {
			return syntaxErrorNode("literal");
		}
		if(startsCharacter(nowReading)) {
			return parseCharacter();
		}
		if(startsString(nowReading)) {
			return parseString();
		}
		if(startsIntNumber(nowReading)) {
			return parseIntNumber();
		}
		if(startsFloatNumber(nowReading)) {
			return parseFloatNumber();
		}
		if(startsIdentifier(nowReading)) {
			return parseIdentifier();
		}
		if(startsBooleanConstant(nowReading)) {
			return parseBooleanConstant();
		}

		return syntaxErrorNode("literal");
	}
	private boolean startsLiteral(Token token) {
		return startsCharacter(token) || startsString(token) || startsIntNumber(token) || startsIdentifier(token) || startsBooleanConstant(token) || startsFloatNumber(token);
	}

	// character (terminal)
	private ParseNode parseCharacter() {
		if(!startsCharacter(nowReading)) {
			return syntaxErrorNode("character constant");
		}
		readToken();
		return new CharacterConstantNode(previouslyRead);
	}
	private boolean startsCharacter(Token token) {
		return token instanceof CharacterToken;
	}
	
	// string (terminal)
	private ParseNode parseString() {
		if(!startsString(nowReading)) {
			return syntaxErrorNode("string constant");
		}
		readToken();
		return new StringConstantNode(previouslyRead);
	}
	private boolean startsString(Token token) {
		return token instanceof StringToken;
	}

	// number (terminal)
	private ParseNode parseIntNumber() {
		if(!startsIntNumber(nowReading)) {
			return syntaxErrorNode("integer constant");
		}
		readToken();
		return new IntegerConstantNode(previouslyRead);
	}
	private boolean startsIntNumber(Token token) {
		return token instanceof IntegerToken;
	}
	
	// float (terminal)
	private ParseNode parseFloatNumber() {
		if(!startsFloatNumber(nowReading)) {
			return syntaxErrorNode("float constant");
		}
		readToken();
		return new FloatingConstantNode(previouslyRead);
	}
	private boolean startsFloatNumber(Token token) {
		return token instanceof FloatToken;
	}

	// identifier (terminal)
	private ParseNode parseIdentifier() {
		if(!startsIdentifier(nowReading)) {
			return syntaxErrorNode("identifier");
		}
		readToken();
		return new IdentifierNode(previouslyRead);
	}
	private boolean startsIdentifier(Token token) {
		return token instanceof IdentifierToken;
	}

	// boolean constant (terminal)
	private ParseNode parseBooleanConstant() {
		if(!startsBooleanConstant(nowReading)) {
			return syntaxErrorNode("boolean constant");
		}
		readToken();
		return new BooleanConstantNode(previouslyRead);
	}
	private boolean startsBooleanConstant(Token token) {
		return token.isLextant(Keyword.TRUE, Keyword.FALSE);// , Punctuator.BOOLEAN_NOT);
	}

	private void readToken() {
		previouslyRead = nowReading;
		nowReading = scanner.next();
	}	
	
	// if the current token is one of the given lextants, read the next token.
	// otherwise, give a syntax error and read next token (to avoid endless looping).
	private void expect(Lextant ...lextants ) {
		if(!nowReading.isLextant(lextants)) {
			syntaxError(nowReading, "expecting " + Arrays.toString(lextants));
		}
		readToken();
	}	
	private ErrorNode syntaxErrorNode(String expectedSymbol) {
		syntaxError(nowReading, "expecting " + expectedSymbol);
		ErrorNode errorNode = new ErrorNode(nowReading);
		readToken();
		return errorNode;
	}
	private void syntaxError(Token token, String errorDescription) {
		String message = "" + token.getLocation() + " " + errorDescription;
		error(message);
	}
	private void error(String message) {
		PikaLogger log = PikaLogger.getLogger("compiler.Parser");
		log.severe("syntax error: " + message);
	}	
}

