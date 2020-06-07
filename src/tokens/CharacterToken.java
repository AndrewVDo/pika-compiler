package tokens;

import inputHandler.TextLocation;

public class CharacterToken extends TokenImp {
	protected byte value;
	
	protected CharacterToken(TextLocation location, String lexeme) {
		super(location, lexeme);
	}
	protected void setValue(byte value) {
		this.value = value;
	}
	public int getValue() {
		return value;
	}
	
	public static CharacterToken make(TextLocation location, String lexeme) {
		CharacterToken result = new CharacterToken(location, lexeme);
		assert(lexeme.length() == 3);
		result.setValue((byte)lexeme.charAt(1));
		return result;
	}
	
	@Override
	protected String rawString() {
		return "character, " + value;
	}
}
