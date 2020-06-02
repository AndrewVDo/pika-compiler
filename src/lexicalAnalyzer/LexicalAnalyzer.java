package lexicalAnalyzer;

import logging.PikaLogger;

import inputHandler.InputHandler;
import inputHandler.LocatedChar;
import inputHandler.LocatedCharStream;
import inputHandler.PushbackCharStream;
import inputHandler.TextLocation;
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
		else if(isNumber(ch) > 0) {
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
		buffer.append(firstChar.getCharacter());
		appendSubsequentDigits(buffer);
		
		//check to see if what comes after is the fractional part of a float or an ending '.'
		LocatedChar decimalPoint = input.next();
		if(isNumber(decimalPoint) != 2) {
			input.pushback(decimalPoint);
			return IntegerToken.make(firstChar.getLocation(), buffer.toString());
		}

		//append decimal point with traling digits
		buffer.append(decimalPoint.getCharacter());
		appendSubsequentDigits(buffer);

		//check to see if there's an exponent
		LocatedChar expPoint = input.next();
		if(expPoint.getCharacter() == 'E') {
			buffer.append(expPoint);
			LocatedChar expValue = input.next();
			if(isNumber(expValue) != 1) {
				//E must be followed by a digit
				lexicalError(expValue);
			}
			buffer.append(expValue);
			appendSubsequentDigits(buffer);
		}

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

	private int isNumber(LocatedChar lc) {
		assert(
			lc.getLocation().getLineNumber() == input.peek().getLocation().getLineNumber() &&
			lc.getLocation().getPosition() + 1 == input.peek().getLocation().getPosition()
		);
		LocatedChar seq [] = {
			lc,
			input.next(),
			input.next(),
		};
		
		//0 - not a number
		//1 - (+|-)? [0..9]* 
		//2 - (+|-)? .[0..9]^+
		int answer = 0;

		if(	seq[0].isDigit() || 
			(seq[0].isSign() && seq[1].isDigit()) ) {
			answer = 1;
		}
		else if((seq[0].isDecimal() && seq[1].isDigit()) ||
				(seq[0].isSign() && seq[1].isDecimal() && seq[2].isDigit()) ) {
			answer = 2;
		}

		input.pushback(seq[2]);
		input.pushback(seq[1]);

		return answer;
	}
	
	
	//////////////////////////////////////////////////////////////////////////////
	// Error-reporting	

	private void lexicalError(LocatedChar ch) {
		PikaLogger log = PikaLogger.getLogger("compiler.lexicalAnalyzer");
		log.severe("Lexical error: invalid character " + ch);
	}

	
}
