package applications.tests;

import static applications.tests.FixtureDefinitions.TOKEN_PRINTER_EXPECTED_FILENAME;
import static applications.tests.FixtureDefinitions.TOKEN_PRINTER_INPUT_FILENAME;

import static applications.tests.FixtureDefinitions.MILESTONE_1_TESTS_INPUT;
import static applications.tests.FixtureDefinitions.MILESTONE_1_TESTS_EXPECTED;

import java.io.FileNotFoundException;
import java.io.PrintStream;

import org.junit.Test;

import tests.FileFixturesTestCase;
import tokens.Tokens;
import applications.PikaTokenPrinter;

public class TestTokenPrinter extends FileFixturesTestCase {

	@Test
	public void testTokenPrinter() throws Exception {
		String actualOutput =	tokenPrinterOutput(TOKEN_PRINTER_INPUT_FILENAME);
		String expectedOutput = getContents(TOKEN_PRINTER_EXPECTED_FILENAME);
		assertEquals(expectedOutput, actualOutput);
	}
	
	@Test
	public void testMilestoneOne() throws Exception {
		assertEquals(
				MILESTONE_1_TESTS_INPUT.length,
				MILESTONE_1_TESTS_EXPECTED.length
			);
		for(int i=0; i<MILESTONE_1_TESTS_INPUT.length ; i++) {
			String actualOutput = tokenPrinterOutput(MILESTONE_1_TESTS_INPUT[i]);
			String expectedOutput = getContents(MILESTONE_1_TESTS_EXPECTED[i]);
			assertEquals(expectedOutput, actualOutput);
		}
	}

	private String tokenPrinterOutput(String filename) throws Exception {
		return outputFor(new TokenPrinterCommand(filename));
	}
	
	public class TokenPrinterCommand implements Command {
		String filename;
		public TokenPrinterCommand(String filename) {
			this.filename = filename;
		}

		public void run(PrintStream out) throws FileNotFoundException {
			Tokens.setPrintLevel(Tokens.Level.TYPE_AND_VALUE);
			PikaTokenPrinter.scanFile(filename, out);
		}
	}
}
