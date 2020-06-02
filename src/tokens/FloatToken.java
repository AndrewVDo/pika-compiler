package tokens;

import inputHandler.TextLocation;

public class FloatToken extends TokenImp {
	protected Float value;
	
	protected FloatToken(TextLocation location, String lexeme) {
		super(location, lexeme);
	}
	protected void setValue(Float value) {
		this.value = value;
	}
	public Float getValue() {
		return value;
	}
	
	public static FloatToken make(TextLocation location, String lexeme) {
		FloatToken result = new FloatToken(location, lexeme);
		result.setValue(Float.parseFloat(lexeme));
		return result;
	}
	
	@Override
	protected String rawString() {
		return "float, " + value;
	}
}
