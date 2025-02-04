package inputHandler;

/** Value object for holding a character and its location in the input text.
 *  Contains delegates to select character operations.
 *
 */
public class LocatedChar implements Locator {
	Character character;
	TextLocation location;

	public LocatedChar(Character character, TextLocation location) {
		super();
		this.character = character;
		this.location = location;
	}


	//////////////////////////////////////////////////////////////////////////////
	// getters

	public Character getCharacter() {
		return character;
	}
	public TextLocation getLocation() {
		return location;
	}
	public boolean isChar(char c) {
		return character == c;
	}



	//////////////////////////////////////////////////////////////////////////////
	// toString

	public String toString() {
		return "(" + charString() + ", " + location + ")";
	}
	private String charString() {
		if(Character.isWhitespace(character)) {
			int i = character;
			return String.format("'\\%d'", i);
		}
		else {
			return character.toString();
		}
	}


	//////////////////////////////////////////////////////////////////////////////
	// delegates

	public boolean isLowerCase() {
		return Character.isLowerCase(character) || (character == '_');
	}
	public boolean isUpperCase() {
		return Character.isUpperCase(character);
	}
	public boolean isNonLeadingIdentifierChars() {
		return Character.isDigit(character) || character == '$';
	}
	public boolean isDigit() {
		return Character.isDigit(character);
	}
	public boolean isWhitespace() {
		return Character.isWhitespace(character);
	}
	public boolean isComment() {
		return character == '#';
	}
	public boolean isSign() {
		return (character == '+' || character == '-');
	}
	public boolean isDecimal() {
		return character == '.';
	}
	public boolean isCharacterStart() {
		return character == '^';
	}
	public boolean inCharacterEncodingRange() {
		return ((int)character >= 32 && (int)character <= 126);
	}
	public boolean isStringStart() {
		return character == '"';
	}

}