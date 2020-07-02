package lexicalAnalyzer;

import tokens.LextantToken;
import tokens.Token;


public enum Punctuator implements Lextant {
	ADD("+"),
	SUBTRACT("-"),
	MULTIPLY("*"),
	DIVIDE("/"),

	GREATER(">"),
	LESSER("<"),
	GREATEREQUAL(">="),
	LESSEREQUAL("<="),
	EQUAL("=="),
	NOTEQUAL("!="),
	
	ASSIGN(":="),
	SEPARATOR(","),
	SPACE(";"),
	TERMINATOR("."), 
	OPEN_BRACE("{"),
	CLOSE_BRACE("}"),
	NULL_PUNCTUATOR(""),
	
	OPEN_BRACKET("["),
	CLOSE_BRACKET("]"),
	DIVIDE_CAST("|"),
	
	OPEN_PARANTHESES("("),
	CLOSE_PARANTHESES(")"),

	BOOLEAN_AND("&&"),
	BOOLEAN_OR("||"),
	BOOLEAN_NOT("!"),

	ARRAY_INDEXING(""),
	ARRAY_INIT(""),

	RAT_OP1("//"),
	EXPRESS_OVER("///"),
	RATIONALIZE("////")
	;

	private String lexeme;
	private Token prototype;
	
	private Punctuator(String lexeme) {
		this.lexeme = lexeme;
		this.prototype = LextantToken.make(null, lexeme, this);
	}
	public String getLexeme() {
		return lexeme;
	}
	public Token prototype() {
		return prototype;
	}
	
	
	public static Punctuator forLexeme(String lexeme) {
		for(Punctuator punctuator: values()) {
			if(punctuator.lexeme.equals(lexeme)) {
				return punctuator;
			}
		}
		return NULL_PUNCTUATOR;
	}
	
/*
	//   the following hashtable lookup can replace the implementation of forLexeme above. It is faster but less clear. 
	private static LexemeMap<Punctuator> lexemeToPunctuator = new LexemeMap<Punctuator>(values(), NULL_PUNCTUATOR);
	public static Punctuator forLexeme(String lexeme) {
		   return lexemeToPunctuator.forLexeme(lexeme);
	}
*/
	
}


