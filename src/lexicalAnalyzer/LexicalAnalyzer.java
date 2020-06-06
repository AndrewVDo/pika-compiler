package lexicalAnalyzer;

import logging.PikaLogger;

import inputHandler.InputHandler;
import inputHandler.LocatedChar;
import inputHandler.LocatedCharStream;
import inputHandler.PushbackCharStream;
import inputHandler.TextLocation;
import tokens.CharacterToken;
import tokens.FloatToken;
import tokens.IdentifierToken;
import tokens.LextantToken;
import tokens.NullToken;
import tokens.IntegerToken;
import tokens.Token;

import static lexicalAnalyzer.PunctuatorScanningAids.*;

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
		else if(ch.isSign() || ch.isDigit() || (ch.isDecimal() && input.peek().isDigit())) {
			return scanNumber(ch);
		}
		else if(ch.isLowerCase()) {
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
		}
		
		StringBuffer buffer = new StringBuffer();
		buffer.append(first.getCharacter());
		
		LocatedChar character = input.next();
		if(!character.inCharacterEncodingRange()) {
			lexicalError(character);
		}
		buffer.append(character.getCharacter());
		
		LocatedChar end = input.next();
		if(!end.isCharacterStart()) {
			lexicalError(end);
		}
		buffer.append(end.getCharacter());
		
		return CharacterToken.make(character.getLocation(), buffer.toString());
	}

	private void scanComment(LocatedChar ch) {
		LocatedChar next = input.next();
		while(next.getCharacter() != '\n' && next.getCharacter() != '#') {
			next = input.next();
		}
		assert(next.getCharacter() == '\n' || next.getCharacter() == '#');
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
			if(input.peek().isWhitespace()) {
				return PunctuatorScanner.scan(firstChar, input);
			}
			buffer.append(currChar.getCharacter());
			currChar = input.next();
		}

		assert(currChar.isDigit() || currChar.isDecimal());

		if(currChar.isDigit()) {
			buffer.append(currChar.getCharacter());
			appendSubsequentDigits(buffer);

			currChar = input.next();
			assert(currChar.isDecimal() || currChar.isWhitespace());
			if(currChar.isWhitespace() || (currChar.isDecimal() && !input.peek().isDigit()) ) {
				input.pushback(currChar);
				return IntegerToken.make(firstChar.getLocation(), buffer.toString());
			}
		}

		// System.out.println("curr: " + currChar + " next: " + input.peek() + " first " + firstChar);
		assert(currChar.isDecimal() && input.peek().isDigit());

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
			}
			appendSubsequentDigits(buffer);
			currChar = input.next();
		}

		assert(currChar.isWhitespace() || currChar.isDecimal());
		input.pushback(currChar);
		// System.out.println("make a float: " + buffer.toString());
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
		StringBuffer buffer = new StringBuffer();
		buffer.append(firstChar.getCharacter());
		appendSubsequentLowercase(buffer);

		String lexeme = buffer.toString();
		if(Keyword.isAKeyword(lexeme)) {
			return LextantToken.make(firstChar.getLocation(), lexeme, Keyword.forLexeme(lexeme));
		}
		else {
			return IdentifierToken.make(firstChar.getLocation(), lexeme);
		}
	}
	private void appendSubsequentLowercase(StringBuffer buffer) {
		LocatedChar c = input.next();
		while(c.isLowerCase()) {
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
			return LextantToken.make(location, ">", Punctuator.GREATER);
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

	
}
