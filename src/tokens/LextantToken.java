package tokens;

import inputHandler.TextLocation;
import lexicalAnalyzer.Lextant;

public final class LextantToken extends TokenImp {

	private Lextant lextant;
	
	private LextantToken(TextLocation location, String lexeme, Lextant lextant) {
		super(location, lexeme);
		this.lextant = lextant;
	}

    public static LextantToken artificial(Token locatorToken, Lextant lextant) {
		String lexeme = lextant.getLexeme();
		if(lexeme.equals("")) {
			lexeme = lextant.toString();
		}
		return new LextantToken(locatorToken.getLocation(), lexeme, lextant);
    }

    public Lextant getLextant() {
		return lextant;
	}
	public boolean isLextant(Lextant ...lextants) {
		for(Lextant lextant: lextants) {
			if(this.lextant == lextant)
				return true;
		}
		return false;
	}
	protected String rawString() {
		return lextant.toString();
	}
	
	
	public static LextantToken make(TextLocation location, String lexeme, Lextant lextant) {
		return new LextantToken(location, lexeme, lextant);
	}
}
