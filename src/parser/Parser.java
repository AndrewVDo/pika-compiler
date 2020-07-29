package parser;

import inputHandler.Locator;
import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Lextant;
import lexicalAnalyzer.Punctuator;
import lexicalAnalyzer.Scanner;
import logging.PikaLogger;
import parseTree.ParseNode;
import parseTree.nodeTypes.*;
import tokens.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


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

		while(nowReading.isLextant(Keyword.FUNCTION)) {
			program.appendChild(parseFunction());
		}
		
		expect(Keyword.EXEC);
		ParseNode mainBlock = parseBlockStatement();
		program.appendChild(mainBlock);
		
		if(!(nowReading instanceof NullToken)) {
			return syntaxErrorNode("end of program");
		}
		
		return program;
	}
	private boolean startsProgram(Token token) {
		return token.isLextant(Keyword.EXEC) || token.isLextant(Keyword.FUNCTION);
	}

	private ParseNode parseFunction() {
		if(!nowReading.isLextant(Keyword.FUNCTION)) {
			return syntaxErrorNode("parseFunction");
		}
		Token funcToken = nowReading;
		readToken();
		ParseNode identifier = parseIdentifier();
		ParseNode lambda = parseLambda();

		return FunctionNode.withChildren(funcToken, identifier, lambda);
	}
	private ParseNode parseLambda() {
		if(!nowReading.isLextant(Punctuator.OPEN_ANGLE)) {
			return syntaxErrorNode("parseLambda");
		}
		Token lambdaToken = nowReading;
		ParseNode lambdaType = parseLambdaType();
		ParseNode blockStatement = parseBlockStatement();

		return LambdaNode.withChildren(lambdaToken, lambdaType, blockStatement);
	}
	private ParseNode parseLambdaType() {
		if(!nowReading.isLextant(Punctuator.OPEN_ANGLE)) {
			return syntaxErrorNode("parseLambdaType");
		}
		Token lambdaTypeToken = nowReading;
		readToken();
		List<ParseNode> paramList = parseParamList();
		expect(Punctuator.CLOSE_ANGLE);
		expect(Punctuator.RESULT_TYPE);
		ParseNode resultType = parseType();

		return LambdaParamTypeNode.withChildren(lambdaTypeToken, paramList, resultType);
	}
	private List<ParseNode> parseParamList() {
		ArrayList<ParseNode> params = new ArrayList<>();

		while(!nowReading.isLextant(Punctuator.CLOSE_ANGLE)) {
			Token paramToken = nowReading;
			ParseNode type = parseType();
			ParseNode identifier = parseIdentifier();
			params.add(ParameterNode.withChildren(paramToken, type, identifier));
			if(!nowReading.isLextant(Punctuator.SEPARATOR, Punctuator.CLOSE_ANGLE)) {
				return List.of(syntaxErrorNode("parseParamList"));
			}
			if(nowReading.isLextant(Punctuator.SEPARATOR)) {
				expect(Punctuator.SEPARATOR);
			}
		}

		return params;
	}
	
	
	///////////////////////////////////////////////////////////
	// blockStatement
	
	// blockStatement -> { statement* }
	private ParseNode parseBlockStatement() {
		if(!startsBlockStatement(nowReading)) {
			return syntaxErrorNode("mainBlock");
		}
		ParseNode blockStatement = new BlockStatementNode(nowReading);
		expect(Punctuator.OPEN_BRACE);
		
		while(startsStatement(nowReading)) {
			ParseNode statement = parseStatement();
			blockStatement.appendChild(statement);
		}
		expect(Punctuator.CLOSE_BRACE);
		return blockStatement;
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
		if(startsBreakStatement(nowReading)) {
			return parseBreakStatement();
		}
		if(startsCallStatement(nowReading)) {
			return parseCallStatement();
		}
		if(startsReturnStatement(nowReading)) {
			return parseReturnStatement();
		}
		if(startsDeallocStatement(nowReading)) {
			return parseDeallocStatement();
		}
		return syntaxErrorNode("statement");
	}

	private ParseNode parseCallStatement() {
		if(!startsCallStatement(nowReading)) {
			return syntaxErrorNode("call statement");
		}
		Token callToken = nowReading;
		readToken();
		ParseNode functionInvocation = parseFunctionInvocation();
		if(!(functionInvocation instanceof FunctionInvocationNode)) {
			return syntaxErrorNode("call statement");
		}
		expect(Punctuator.TERMINATOR);

		return CallNode.withChildren(callToken, functionInvocation);
	}

	private boolean startsCallStatement(Token token) {
		return token.isLextant(Keyword.CALL);
	}

	private ParseNode parseReturnStatement() {
		if(!startsReturnStatement(nowReading)) {
			return syntaxErrorNode("return statement");
		}
		Token returnToken = nowReading;
		readToken();
		if(!nowReading.isLextant(Punctuator.TERMINATOR)) {
			ParseNode returnExpression = parseExpression();
			expect(Punctuator.TERMINATOR);
			return ReturnNode.withChildren(returnToken, returnExpression);
		}
		expect(Punctuator.TERMINATOR);
		return ReturnNode.nullChildren(returnToken);
	}

	private boolean startsReturnStatement(Token token) {
		return token.isLextant(Keyword.RETURN);
	}

	private ParseNode parseDeallocStatement() {
		if(!startsDeallocStatement(nowReading)) {
			return syntaxErrorNode("dealloc statement");
		}
		Token token = nowReading;
		readToken();
		ParseNode array = parseExpression();
		expect(Punctuator.TERMINATOR);
		return DeallocNode.withChildren(token, array);
	}
	private boolean startsDeallocStatement(Token nowReading) {
		return nowReading.isLextant(Keyword.DEALLOC);
	}

	private ParseNode parseBreakStatement() {
		if(!startsBreakStatement(nowReading)) {
			return syntaxErrorNode("breakFlow");
		}
		Token breakToken = nowReading;
		readToken();
		expect(Punctuator.TERMINATOR);
		return new BreakFlowNode(breakToken);
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
				startsControlFlowStatement(token) ||
				startsBreakStatement(token) ||
				startsDeallocStatement(token) ||
				startsReturnStatement(token) ||
				startsCallStatement(token);
	}

	private boolean startsBreakStatement(Token token) {
		return token.isLextant(Keyword.BREAK, Keyword.CONTINUE);
	}
	
	// assignment -> target := expression .
	private ParseNode parseAssignmentStatement() {
		if(!startsAssignmentStatement(nowReading)) {
			return syntaxErrorNode("assignmentStatement");
		}
		
		ParseNode target = parseExpression();

		if(target instanceof FunctionInvocationNode) {
			expect(Punctuator.TERMINATOR);
			return target;
		}

		if(!(target instanceof IdentifierNode) && !(target instanceof ArrayIndexNode)) {
			return syntaxErrorNode("non target lhs");
		}

		Token assignmentToken = nowReading;
		expect(Punctuator.ASSIGN);
		ParseNode expression = parseExpression();
		expect(Punctuator.TERMINATOR);
		return AssignmentStatementNode.withChildren(assignmentToken, target, expression);
	}
	private boolean startsAssignmentStatement(Token token) {
		return startsIdentifier(token) || startsBracketedExpression(token) || startsIndexExpression(token);
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
			ParseNode child = new StringConstantNode(StringToken.make(previouslyRead, Keyword.NEWLINE.getLexeme(), "\n"));
			parent.appendChild(child);
		}
		else if(nowReading.isLextant(Keyword.TAB)) {
			readToken();
			ParseNode child = new StringConstantNode(StringToken.make(previouslyRead, Keyword.TAB.getLexeme(), "\t"));
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
			ParseNode child = new StringConstantNode(StringToken.make(previouslyRead, Punctuator.SPACE.getLexeme(), " "));
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
		ParseNode expression = parseBooleanOrExpression();
		return expression;
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
		return(token.isLextant(Punctuator.CLOSE_ANGLE) || token.isLextant(Punctuator.OPEN_ANGLE) ||
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
		while(nowReading.isLextant(Punctuator.MULTIPLY, Punctuator.DIVIDE, Punctuator.RAT_OP1, Punctuator.EXPRESS_OVER, Punctuator.RATIONALIZE)) {
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

		return parseFunctionInvocation();

	}
	private boolean isUnaryOperator(Token token) {
		return token.isLextant(Punctuator.BOOLEAN_NOT, Keyword.LENGTH, Keyword.CLONE);
	}
	private boolean startsUnaryExpression(Token token) {
		return startsIndexExpression(token) || isUnaryOperator(token);
	}

	private ParseNode parseArrayIndexExpression() {
		if(!startsIndexExpression(nowReading)) {
			return syntaxErrorNode("array index");
		}

		ParseNode base = parseLambda2();
		while(nowReading.isLextant(Punctuator.OPEN_BRACKET)) {
			Token indexOperator = nowReading;
			Token indexToken = LextantToken.artificial(indexOperator, Punctuator.ARRAY_INDEXING);
			readToken();
			ParseNode index = parseExpression();
			expect(Punctuator.CLOSE_BRACKET);

			base = ArrayIndexNode.withChildren(indexToken, base, index);
		}
		return base;
	}
	private ParseNode parseArrayIndexExpression2(ParseNode base) {
		while(nowReading.isLextant(Punctuator.OPEN_BRACKET)) {
			Token indexOperator = nowReading;
			Token indexToken = LextantToken.artificial(indexOperator, Punctuator.ARRAY_INDEXING);
			readToken();
			ParseNode index = parseExpression();
			expect(Punctuator.CLOSE_BRACKET);

			base = ArrayIndexNode.withChildren(indexToken, base, index);
		}
		return base;
	}
	private boolean startsIndexExpression(Token token) {
		return startsFunctionInvocation(token);
	}

	private ParseNode parseFunctionInvocation() {
		if(!startsFunctionInvocation(nowReading)) {
			return syntaxErrorNode("function invocation");
		}

		Token token = nowReading;
		ParseNode base = parseArrayIndexExpression();
		if(nowReading.isLextant(Punctuator.OPEN_PARANTHESES)) {
			List<ParseNode> argumentNodes = parseFunctionArguments(base);
			base = FunctionInvocationNode.withChildren(token, base, argumentNodes);
			if(nowReading.isLextant(Punctuator.OPEN_BRACKET)) {
				base = parseArrayIndexExpression2(base);
			}
		}
		return base;
	}

	private ParseNode parseLambda2() {
		if(!startsLambdaExpression(nowReading)) {
			return syntaxErrorNode("lambda");
		}

		if(nowReading.isLextant(Punctuator.OPEN_ANGLE)) {
			return parseLambda();
		}
		else {
			return parseHighPrecedenceExpression();
		}
	}

	private List<ParseNode> parseFunctionArguments(ParseNode lambdaExpression) {
		List<ParseNode> argumentNodes = new ArrayList<>();
		expect(Punctuator.OPEN_PARANTHESES);
		while(startsExpression(nowReading)) {
			ParseNode argument = parseExpression();
			argumentNodes.add(argument);
			if(nowReading.isLextant(Punctuator.SEPARATOR)) {
				expect(Punctuator.SEPARATOR);
			}
			else if(nowReading.isLextant(Punctuator.CLOSE_PARANTHESES)) {
				break;
			}
			else {
				syntaxError(nowReading, "Function argument missing close bracket or argument seperator");
			}
		}
		expect(Punctuator.CLOSE_PARANTHESES);
		return argumentNodes;
	}

	private boolean startsFunctionInvocation(Token token) {
		return startsLambdaExpression(token);
	}
	private boolean startsLambdaExpression(Token token) { return startsHighPrecedenceExpression(token); }

	private ParseNode parseHighPrecedenceExpression() {
		if(!startsHighPrecedenceExpression(nowReading)) {
			return syntaxErrorNode("highPrecedenceExpression");
		}

		if(nowReading.isLextant(Keyword.ALLOC)) {
			return parseAllocExpression();
		}

		return parseBracketedExpression();

	}
	private ParseNode parseAllocExpression() {
		if(!nowReading.isLextant(Keyword.ALLOC)) {
			return syntaxErrorNode("allocExpression");
		}
		Token allocToken = nowReading;
		readToken();

		expect(Punctuator.OPEN_BRACKET);
		ParseNode type = parseType();
		expect(Punctuator.CLOSE_BRACKET);

		expect(Punctuator.OPEN_PARANTHESES);
		ParseNode length = parseExpression();
		expect(Punctuator.CLOSE_PARANTHESES);

		return ArrayNode.with(allocToken, type, length);
	}
	private ParseNode parseType() {
		if(!startsType(nowReading)) {
			return syntaxErrorNode("typeExpression");
		}

		int arrayDepth = 0;
		while(nowReading.isLextant(Punctuator.OPEN_BRACKET)) {
			arrayDepth += 1;
			expect(Punctuator.OPEN_BRACKET);
		}

		if(!startsType(nowReading)) {
			return syntaxErrorNode("typeExpression");
		}
		Token type = nowReading;
		readToken();

		for(int i=0; i<arrayDepth; i++) {
			expect(Punctuator.CLOSE_BRACKET);
		}

		return TypeNode.with(type, arrayDepth);
	}
	private boolean startsType(Token token) {
		return token.isLextant(Keyword.FLOAT, Keyword.INT, Keyword.CHAR, Keyword.BOOL, Keyword.STRING, Punctuator.OPEN_BRACKET, Keyword.RAT, Keyword.NULL);
	}
	
	private ParseNode parseBracketedExpression() {
		if(!startsBracketedExpression(nowReading) && !startsAtomicExpression(nowReading)) {
			return syntaxErrorNode("bracketedExpression");
		}
		
		if(nowReading.isLextant(Punctuator.OPEN_BRACKET)) {
			return parseSquareBracket();
		}
		else if(nowReading.isLextant(Punctuator.OPEN_PARANTHESES)) {
			return parenthesisExpression();
		}
		return parseAtomicExpression();
	}
	private ParseNode parseSquareBracket() {
		expect(Punctuator.OPEN_BRACKET);
		ParseNode firstExpression = parseExpression();

		if(nowReading.isLextant(Punctuator.DIVIDE_CAST)) {
			return castExpression(firstExpression);
		}

		Token indexToken = LextantToken.artificial(previouslyRead, Punctuator.ARRAY_INIT);

		List<ParseNode> children = new ArrayList<>();
		children.add(firstExpression);

		while(startsExpression(nowReading) || nowReading.isLextant(Punctuator.SEPARATOR)) {
			expect(Punctuator.SEPARATOR);
			children.add(parseExpression());
		}

		expect(Punctuator.CLOSE_BRACKET);
		return ArrayNode.withChildren(indexToken, children);
	}

	private ParseNode castExpression(ParseNode innerExpression) {
		if(!nowReading.isLextant(Punctuator.DIVIDE_CAST)) {
			return syntaxErrorNode("castExpression");
		}
		Token castToken = nowReading;
		readToken();
		
		ParseNode type = parseType();
		expect(Punctuator.CLOSE_BRACKET);
		
		return CastExpressionNode.withChildren(castToken, type, innerExpression);
	}

	private ParseNode parenthesisExpression() {
		expect(Punctuator.OPEN_PARANTHESES);
		ParseNode innerExpression = parseExpression();
		expect(Punctuator.CLOSE_PARANTHESES);
		
		return innerExpression;
	}
	private boolean startsHighPrecedenceExpression(Token token) {
		return startsBracketedExpression(token) || token.isLextant(Keyword.ALLOC);
	}
	private boolean startsBracketedExpression(Token token) {
		return startsAtomicExpression(token) || token.isLextant(Punctuator.OPEN_BRACKET, Punctuator.OPEN_PARANTHESES, Punctuator.OPEN_ANGLE);
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
	private void syntaxError(Locator locator, String errorDescription) {
		String message = "" + locator.getLocation() + " " + errorDescription;
		error(message);
	}
	private void error(String message) {
		PikaLogger log = PikaLogger.getLogger("compiler.Parser");
		log.severe("syntax error: " + message);
	}	
}

