package parser;

import inputHandler.Locator;
import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Lextant;
import lexicalAnalyzer.Punctuator;
import lexicalAnalyzer.Scanner;
import logging.PikaLogger;
import parseTree.ParseNode;
import parseTree.nodeTypes.*;
import semanticAnalyzer.types.Type;
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
		ParseNode mainBlock = null;

		while(startsProgram(nowReading)) {
			if(nowReading.isLextant(Keyword.FUNCTION)) {
				program.appendChild(parseFunction());
			}
			else if(nowReading.isLextant(Keyword.VAR, Keyword.CONST, Keyword.STATIC)) {
				program.appendChild(parseDeclaration());
			}
			else if(nowReading.isLextant(Keyword.EXEC)) {
				expect(Keyword.EXEC);
				if(mainBlock != null) {
					return syntaxErrorNode("multiple exec blocks");
				}
				mainBlock = parseBlockStatement();
				program.appendChild(mainBlock);
			}
			else {
				return syntaxErrorNode("not implemented for global scope");
			}
		}

		if(!(nowReading instanceof NullToken) || mainBlock == null) {
			return syntaxErrorNode("end of program");
		}
		
		return program;
	}
	private boolean startsProgram(Token token) {
		return token.isLextant(Keyword.EXEC, Keyword.FUNCTION, Keyword.VAR, Keyword.CONST, Keyword.STATIC);
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
		ParseNode functionInvocation = parseExpression();
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
		if(nowReading.isLextant(Keyword.FOR)) {
			return parseForStatement();
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

	private ParseNode parseForStatement() {
		if(!nowReading.isLextant(Keyword.FOR)) {
			return syntaxErrorNode("for statement");
		}

		Token forToken = nowReading;
		expect(Keyword.FOR);

		if(!nowReading.isLextant(Keyword.ELEM, Keyword.INDEX)) {
			return syntaxErrorNode("for statement");
		}

		Token iterationToken = nowReading;
		readToken();

		ParseNode identifier = parseIdentifier();
		expect(Keyword.OF);

		ParseNode record = parseExpression();
		ParseNode block = parseBlockStatement();

		return ControlFlowNode.withChildren(forToken, iterationToken, identifier, record, block);
	}

	private boolean startsControlFlowStatement(Token token) {
		return token.isLextant(Keyword.IF, Keyword.WHILE, Keyword.ELSE, Keyword.FOR);
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

		if(!(target instanceof IdentifierNode) && !(target instanceof IndexNode)) {
			return syntaxErrorNode("non target lhs");
		}

		Token assignmentToken = nowReading;
		expect(Punctuator.ASSIGN);
		ParseNode expression = parseExpression();
		expect(Punctuator.TERMINATOR);
		return AssignmentStatementNode.withChildren(assignmentToken, target, expression);
	}
	private boolean startsAssignmentStatement(Token token) {
		return startsIdentifier(token) || startsTier2Expression(token);
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

		boolean isStatic = false;
		if(nowReading.isLextant(Keyword.STATIC)) {
			isStatic = true;
			expect(Keyword.STATIC);
		}

		Token declarationToken = nowReading;
		readToken();
		
		ParseNode identifier = parseIdentifier();
		expect(Punctuator.ASSIGN);
		ParseNode initializer = parseExpression();
		expect(Punctuator.TERMINATOR);
		
		return DeclarationNode.withChildren(declarationToken, identifier, initializer, isStatic);
	}
	private boolean startsDeclaration(Token token) {
		return token.isLextant(Keyword.CONST, Keyword.VAR, Keyword.STATIC);
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
		return parseTier10Expression();
	}
	private boolean startsExpression(Token token) {
		return startsTier8Expression(token);
	}


	private ParseNode parseTier10Expression() {
		if(!startsTier10and9Expression(nowReading)) {
			return syntaxErrorNode("Tier 10 (Boolean-or)");
		}

		ParseNode left = parseTier9Expression();
		while(nowReading.isLextant(Punctuator.BOOLEAN_OR)) {


			Token booleanToken = nowReading;
			readToken();
			ParseNode right = parseTier9Expression();

			left = BinaryOperatorNode.withChildren(booleanToken, left, right);
		}
		return left;
	}

	private ParseNode parseTier9Expression() {
		if(!startsTier10and9Expression(nowReading)) {
			return syntaxErrorNode("Tier 9 (boolean-and)");
		}

		ParseNode left = parseTier8Expression();
		while(nowReading.isLextant(Punctuator.BOOLEAN_AND)) {
			Token booleanAndToken = nowReading;
			readToken();
			ParseNode right = parseTier8Expression();

			left = BinaryOperatorNode.withChildren(booleanAndToken, left, right);
		}
		return left;
	}


	// comparisonExpression -> additiveExpression [> additiveExpression]?
	private ParseNode parseTier8Expression() {
		if(!startsTier8Expression(nowReading)) {
			return syntaxErrorNode("Tier 8 (comparison-op)");
		}
		
		ParseNode left = parseTier7Expression();
		while(isComparisonLextant(nowReading)) {
			Token compareToken = nowReading;
			readToken();
			ParseNode right = parseTier7Expression();
			
			left = BinaryOperatorNode.withChildren(compareToken, left, right);
		}
		return left;

	}
	
	private boolean isComparisonLextant(Token token) {
		return(token.isLextant(Punctuator.CLOSE_ANGLE) || token.isLextant(Punctuator.OPEN_ANGLE) ||
			token.isLextant(Punctuator.GREATEREQUAL) || token.isLextant(Punctuator.LESSEREQUAL) ||
			token.isLextant(Punctuator.EQUAL) || token.isLextant(Punctuator.NOTEQUAL) );
	}


	// additiveExpression -> multiplicativeExpression [+ multiplicativeExpression]*  (left-assoc)
	private ParseNode parseTier7Expression() {
		if(!startsTier7Expression(nowReading)) {
			return syntaxErrorNode("Tier 7 (additive-op)");
		}
		
		ParseNode left = parseTier6Expression();
		while(nowReading.isLextant(Punctuator.ADD, Punctuator.SUBTRACT)) {
			Token additiveToken = nowReading;
			readToken();
			ParseNode right = parseTier6Expression();
			
			left = BinaryOperatorNode.withChildren(additiveToken, left, right);
		}
		return left;
	}

	// multiplicativeExpression -> atomicExpression [MULT atomicExpression]*  (left-assoc)
	private ParseNode parseTier6Expression() {
		if(!startsTier6Expression(nowReading)) {
			return syntaxErrorNode("Tier 6 (multiplicative-op)");
		}
		
		ParseNode left = parseTier5Expression();
		while(nowReading.isLextant(Punctuator.MULTIPLY, Punctuator.DIVIDE, Punctuator.RAT_OP1, Punctuator.EXPRESS_OVER, Punctuator.RATIONALIZE)) {
			Token multiplicativeToken = nowReading;
			readToken();
			ParseNode right = parseTier5Expression();
			
			left = BinaryOperatorNode.withChildren(multiplicativeToken, left, right);
		}
		return left;
	}

	private ParseNode parseTier5Expression() {
		if(!startsTier5Expression(nowReading)) {
			return syntaxErrorNode("Tier 5 (fold)");
		}

		ParseNode left = parseTier4Expression();

		while(nowReading.isLextant(Keyword.FOLD)) {
			Token token = nowReading;
			readToken();

			if(nowReading.isLextant(Punctuator.OPEN_BRACKET)) {
				readToken();
				ParseNode middle = parseExpression();
				expect(Punctuator.CLOSE_BRACKET);

				ParseNode right = parseTier4Expression();
				left = TrinaryOperatorNode.withChildren(token, left, middle, right);
			}
			else {
				ParseNode right = parseTier4Expression();
				left = BinaryOperatorNode.withChildren(token, left, right);
			}

		}
		return left;
	}
	private ParseNode parseTier4Expression() {
		if(!startsTier4Expression(nowReading)) {
			return syntaxErrorNode("Tier 5 (map reduce)");
		}

		ParseNode left = parseTier3Expression();

		while(nowReading.isLextant(Keyword.MAP, Keyword.REDUCE)) {
			Token token = nowReading;
			readToken();
			ParseNode right = parseTier3Expression();

			left = BinaryOperatorNode.withChildren(token, left, right);
		}
		return left;
	}

	private ParseNode parseTier3Expression() {
		if(!startsTier3Expression(nowReading)) {
			return syntaxErrorNode("Tier 3 Expression (unary)");
		}

		if(startsTier3ExpressionProper(nowReading)) {
			readToken();
			return UnaryOperatorNode.withChildren(previouslyRead, parseTier3Expression());
		}

		return parseTier2Expression();
	}

	private ParseNode parseTier2Expression() {
		if(!startsTier2Expression(nowReading)) {
			return syntaxErrorNode("Tier 2 Expression (array-index, function-invocation)");
		}

		ParseNode base = parseTier1Expression();

		while(nowReading.isLextant(Punctuator.OPEN_BRACKET, Punctuator.OPEN_PARANTHESES)) {

			//parse function invocation
			if(nowReading.isLextant(Punctuator.OPEN_PARANTHESES)) {
				Token functionInvocationToken = nowReading;
				readToken();

				List<ParseNode> argumentNodes = parseFunctionArguments();
				expect(Punctuator.CLOSE_PARANTHESES);

				base = FunctionInvocationNode.withChildren(functionInvocationToken, base, argumentNodes);
			}

			//parse index
			if(nowReading.isLextant(Punctuator.OPEN_BRACKET)) {
				Token indexOperator = nowReading;
				Token indexToken = LextantToken.artificial(indexOperator, Punctuator.ARRAY_INDEXING);

				readToken();
				ParseNode index = parseExpression();

				if(nowReading.isLextant(Punctuator.SEPARATOR)) {
					expect(Punctuator.SEPARATOR);
					ParseNode endIndex = parseExpression();
					expect(Punctuator.CLOSE_BRACKET);
					base = IndexNode.withChildren(indexToken, base, index, endIndex);
				}
				else {
					expect(Punctuator.CLOSE_BRACKET);
					base = IndexNode.withChildren(indexToken, base, index);
				}
			}

		}
		return base;
	}
	private List<ParseNode> parseFunctionArguments() {
		List<ParseNode> argumentNodes = new ArrayList<>();
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
		return argumentNodes;
	}
	private ParseNode parseTier1Expression() {
		if(!startsTier1Expression(nowReading)) {
			return syntaxErrorNode("highPrecedenceExpression");
		}

		if (nowReading.isLextant(Punctuator.OPEN_ANGLE)) {
			return parseLambda();
		} else if(nowReading.isLextant(Punctuator.OPEN_BRACKET)) {
			return parseSquareBracket();
		} else if(nowReading.isLextant(Punctuator.OPEN_PARANTHESES)) {
			return parenthesisExpression();
		} else if (nowReading.isLextant(Keyword.ALLOC)) {
			return parseAllocExpression();
		}
		return parseAtomicExpression();
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
		if(nowReading.isLextant(Punctuator.OPEN_ANGLE)) {
			ArrayList<Type> params = new ArrayList<>();
			Token token = nowReading;
			readToken();
			while(!nowReading.isLextant(Punctuator.CLOSE_ANGLE)) {
				Token paramToken = nowReading;
				ParseNode type = parseType();
				params.add(type.getType());
				if(!nowReading.isLextant(Punctuator.SEPARATOR, Punctuator.CLOSE_ANGLE)) {
					return syntaxErrorNode("parseType");
				}
				if(nowReading.isLextant(Punctuator.SEPARATOR)) {
					expect(Punctuator.SEPARATOR);
				}
			}
			expect(Punctuator.CLOSE_ANGLE);
			expect(Punctuator.RESULT_TYPE);
			ParseNode resultType = parseType();

			return TypeNode.with(token, params, resultType.getType());
		}

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


	// atomicExpression -> literal
	private ParseNode parseAtomicExpression() {
		if(!startsAtomicExpression(nowReading)) {
			return syntaxErrorNode("atomic expression");
		}
		return parseLiteral();
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

	private boolean startsTier10and9Expression(Token token) {
		return startsTier8Expression(token);
	}
	private boolean startsTier8Expression(Token token) {
		return startsTier7Expression(token);
	}
	private boolean startsTier7Expression(Token token) {
		return startsTier6Expression(token);
	}
	private boolean startsTier6Expression(Token token) {
		return startsTier5Expression(token);
	}
	private boolean startsTier5Expression(Token token) {
		return startsTier4Expression(token);
	}
	private boolean startsTier4Expression(Token token) {
		return startsTier3Expression(token);
	}
	private boolean startsTier3Expression(Token token) {
		return startsTier3ExpressionProper(token) || startsTier2Expression(token);
	}
		private boolean startsTier3ExpressionProper(Token token) {
			return token.isLextant(Punctuator.BOOLEAN_NOT, Keyword.CLONE, Keyword.LENGTH, Keyword.REVERSE, Keyword.ZIP);
		}
	private boolean startsTier2Expression(Token token) {
		return startsTier1Expression(token);
	}
	private boolean startsTier1Expression(Token token) {
		return startsAtomicExpression(token) || startsTier1ExpressionProper(token);
	}
		private boolean startsTier1ExpressionProper(Token token) {
			return token.isLextant(Punctuator.OPEN_BRACKET, Punctuator.OPEN_PARANTHESES, Punctuator.OPEN_ANGLE, Keyword.ALLOC);
		}
	private boolean startsAtomicExpression(Token token) {
		return startsLiteral(token);
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

