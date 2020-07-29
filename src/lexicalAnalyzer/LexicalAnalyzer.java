package lexicalAnalyzer;

import inputHandler.*;
import logging.PikaLogger;
import tokens.*;

import static lexicalAnalyzer.PunctuatorScanningAids.isPunctuatorStartingCharacter;

public class LexicalAnalyzer extends ScannerImp implements Scanner {
	public static LexicalAnalyzer make(String filename) {
		InputHandler handler = InputHandler.fromFilename(filename);
		PushbackCharStream charStream = PushbackCharStream.make(handler);
		return new LexicalAnalyzer(charStream);
	}

	public LexicalAnalyzer(PushbackCharStream input) {
		super(input);
	}

	
	//////////////////////////////////////////////////////////////////////////////
	// Token-finding main dispatch	

	@Override
	protected Token findNextToken() {
		LocatedChar ch = nextNonWhitespaceChar();
		
		if(ch.isComment()) {
			scanComment(ch);
			return findNextToken();
		}
		else if(ch.isCharacterStart()) {
			return scanCharacter(ch);
		}
		else if(ch.isStringStart()) {
			return scanString(ch);
		}
		else if(ch.isSign() || ch.isDigit() || (ch.isDecimal() && input.peek().isDigit())) {
			return scanNumber(ch);
		}
		else if(ch.isLowerCase() || ch.isUpperCase()) {
			return scanIdentifier(ch);
		}
		else if(isPunctuatorStart(ch)) {
			return PunctuatorScanner.scan(ch, input);
		}
		else if(isEndOfInput(ch)) {
			return NullToken.make(ch.getLocation());
		}
		else {
			lexicalError(ch);
			return findNextToken();
		}
	}

	private Token scanCharacter(LocatedChar first) {	
		if(!first.isCharacterStart()) {
			lexicalError(first);
			return NullToken.make(first.getLocation());
		}
		
		StringBuffer buffer = new StringBuffer();
		buffer.append(first.getCharacter());
		
		LocatedChar character = input.next();
		if(!character.inCharacterEncodingRange()) {
			lexicalError(character);
			return NullToken.make(first.getLocation());
		}
		buffer.append(character.getCharacter());
		
		LocatedChar end = input.next();
		if(!end.isCharacterStart()) {
			lexicalError(end);
			return NullToken.make(first.getLocation());
		}
		buffer.append(end.getCharacter());
		
		return CharacterToken.make(character.getLocation(), buffer.toString());
	}
	
	private Token scanString(LocatedChar first) {
		if(!first.isStringStart()) {
			lexicalError(first);
			return NullToken.make(first.getLocation());
		}
		StringBuffer buffer = new StringBuffer();
		LocatedChar next = input.next();
		while(next.getCharacter() != '\n' && next.getCharacter() != '\"') {
			buffer.append(next.getCharacter());
			next = input.next();
		}
		
		//no ending " found
		if(next.getCharacter() != '\"') {
			lexicalError(next);
			return NullToken.make(next.getLocation());
		}
		
		return StringToken.make(first.getLocation(), buffer.toString());
	}

	private void scanComment(LocatedChar ch) {
		LocatedChar next = input.next();
		while(next.getCharacter() != '\n' && next.getCharacter() != '#') {
			next = input.next();
		}
		if(next.getCharacter() != '\n' && next.getCharacter() != '#') {
			lexicalError(next);
		}
		return; 
	}

	private LocatedChar nextNonWhitespaceChar() {
		LocatedChar ch = input.next();
		while(ch.isWhitespace()) {
			ch = input.next();
		}
		return ch;
	}
	
	
	//////////////////////////////////////////////////////////////////////////////
	// Integer lexical analysis	

	private Token scanNumber(LocatedChar firstChar) {
		StringBuffer buffer = new StringBuffer();
		LocatedChar currChar = firstChar;

		if(currChar.isSign()) {
			if(input.peek().isWhitespace() || input.peek().isSign() || input.peek().getCharacter() == '>') {
				return PunctuatorScanner.scan(firstChar, input);
			}
			buffer.append(currChar.getCharacter());
			currChar = input.next();
		}

		if(!currChar.isDigit() && !currChar.isDecimal()) {
			lexicalError(currChar);
		}

		if(currChar.isDigit()) {
			buffer.append(currChar.getCharacter());
			appendSubsequentDigits(buffer);

			currChar = input.next();
			
			if(!currChar.isDecimal() || (currChar.isDecimal() && !input.peek().isDigit()) ) {
				input.pushback(currChar);
				return IntegerToken.make(firstChar.getLocation(), buffer.toString());
			}
		}

		if(!currChar.isDecimal() && !input.peek().isDigit()) {
			lexicalError(currChar);
		}

		buffer.append(currChar.getCharacter());
		appendSubsequentDigits(buffer);
		currChar = input.next();

		if(currChar.getCharacter() == 'E') {
			buffer.append(currChar.getCharacter());
			
			if(input.peek().isSign()) {
				currChar = input.next();
				buffer.append(currChar.getCharacter());
			}
			
			if(!input.peek().isDigit()) {
				lexicalError(input.peek());
				return NullToken.make(firstChar.getLocation());
			}
			appendSubsequentDigits(buffer);
			currChar = input.next();
		}

		input.pushback(currChar);
		return FloatToken.make(firstChar.getLocation(), buffer.toString());
	}

	private void appendSubsequentDigits(StringBuffer buffer) {
		LocatedChar c = input.next();
		while(c.isDigit()) {
			buffer.append(c.getCharacter());
			c = input.next();
		}
		input.pushback(c);
	}
	
	
	//////////////////////////////////////////////////////////////////////////////
	// Identifier and keyword lexical analysis	

	private Token scanIdentifier(LocatedChar firstChar) {
		if(!firstChar.isLowerCase() && !firstChar.isUpperCase()) {
			lexicalError(firstChar);
		}
		
		StringBuffer buffer = new StringBuffer();
		buffer.append(firstChar.getCharacter());
		appendIdentifierChars(buffer);

		String lexeme = buffer.toString();
		
		if(lexeme.length() > 32) {
			lexicalErrorIdentifierLength(firstChar);
		}
		
		if(Keyword.isAKeyword(lexeme)) {
			return LextantToken.make(firstChar.getLocation(), lexeme, Keyword.forLexeme(lexeme));
		}
		else {
			return IdentifierToken.make(firstChar.getLocation(), lexeme);
		}
	}
	private void appendIdentifierChars(StringBuffer buffer) {
		LocatedChar c = input.next();
		while(c.isLowerCase() || c.isUpperCase() || c.isNonLeadingIdentifierChars()) {
			buffer.append(c.getCharacter());
			c = input.next();
		}
		input.pushback(c);
	}
	
	
	//////////////////////////////////////////////////////////////////////////////
	// Punctuator lexical analysis	
	// old method left in to show a simple scanning method.
	// current method is the algorithm object PunctuatorScanner.java

	@SuppressWarnings("unused")
	private Token oldScanPunctuator(LocatedChar ch) {
		TextLocation location = ch.getLocation();
		
		switch(ch.getCharacter()) {
		case '*':
			return LextantToken.make(location, "*", Punctuator.MULTIPLY);
		case '+':
			return LextantToken.make(location, "+", Punctuator.ADD);
		case '>':
			return LextantToken.make(location, ">", Punctuator.CLOSE_ANGLE);
		case ':':
			if(ch.getCharacter()=='=') {
				return LextantToken.make(location, ":=", Punctuator.ASSIGN);
			}
			else {
				throw new IllegalArgumentException("found : not followed by = in scanOperator");
			}
		case ',':
			return LextantToken.make(location, ",", Punctuator.SEPARATOR);
		case ';':
			return LextantToken.make(location, ";", Punctuator.TERMINATOR);
		default:
			throw new IllegalArgumentException("bad LocatedChar " + ch + "in scanOperator");
		}
	}

	

	//////////////////////////////////////////////////////////////////////////////
	// Character-classification routines specific to Pika scanning.	

	private boolean isPunctuatorStart(LocatedChar lc) {
		char c = lc.getCharacter();
		return isPunctuatorStartingCharacter(c);
	}

	private boolean isEndOfInput(LocatedChar lc) {
		return lc == LocatedCharStream.FLAG_END_OF_INPUT;
	}
	
	
	//////////////////////////////////////////////////////////////////////////////
	// Error-reporting	

	private void lexicalError(LocatedChar ch) {
		PikaLogger log = PikaLogger.getLogger("compiler.lexicalAnalyzer");
		log.severe("Lexical error: invalid character " + ch);
	}
	private void lexicalErrorIdentifierLength(LocatedChar ch) {
		PikaLogger log = PikaLogger.getLogger("compiler.lexicalAnalyzer");
		log.severe("Lexical error: identifer exceeded 32 character limit " + ch);
	}

	
}
