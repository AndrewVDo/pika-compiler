package tokens;

import inputHandler.Locator;
import inputHandler.TextLocation;
import lexicalAnalyzer.Lextant;

public interface Token extends Locator {
	public String getLexeme();
	public TextLocation getLocation();
	public String fullString();
	public boolean isLextant(Lextant ...lextants);
}

