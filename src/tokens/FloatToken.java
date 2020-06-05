package tokens;

import inputHandler.TextLocation;

public class FloatToken extends TokenImp {
	protected Double value;
	
	protected FloatToken(TextLocation location, String lexeme) {
		super(location, lexeme);
	}
	protected void setValue(Double value) {
		this.value = value;
	}
	public Double getValue() {
		return value;
	}
	
	public static FloatToken make(TextLocation location, String lexeme) {
		FloatToken result = new FloatToken(location, lexeme);
		result.setValue(Double.parseDouble(lexeme));
		return result;
	}
	
	@Override
	protected String rawString() {
		return "float, " + value;
	}
}
