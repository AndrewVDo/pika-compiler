package tokens;

import inputHandler.TextLocation;
import parseTree.ParseNode;

public class StringToken extends TokenImp {
	protected String value;
	
	protected StringToken(TextLocation location, String lexeme) {
		super(location, lexeme);
	}
	protected void setValue(String value) {
		this.value = value;
	}
	public String getValue() {
		return value;
	}
	
	public static StringToken make(TextLocation location, String lexeme) {
		StringToken stringToken = new StringToken(location, lexeme);

		stringToken.setValue(lexeme);
		return stringToken;
	}

	public static StringToken make(Token token, String lexeme, String value) {
		TextLocation location = token.getLocation();
		StringToken stringToken = new StringToken(location, lexeme);

		stringToken.setValue(value);
		return stringToken;
	}
	
	@Override
	protected String rawString() {
		return "string, " + value;
	}
}
