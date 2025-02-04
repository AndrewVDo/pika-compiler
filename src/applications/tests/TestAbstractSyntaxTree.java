package applications.tests;

import applications.PikaAbstractSyntaxTree;
import org.junit.Test;
import parseTree.ParseTreePrinter;
import parseTree.ParseTreePrinter.Level;
import tests.FileFixturesTestCase;

import java.io.FileNotFoundException;
import java.io.PrintStream;

import static applications.tests.FixtureDefinitions.*;

public class TestAbstractSyntaxTree extends FileFixturesTestCase {

	
	@Test
	public void testAbstractSyntaxTreeFull() throws Exception {
		tokenPrinterSingleTest(Level.FULL, AST_EXPECTED_FULL_FILENAME);
	}
	@Test
	public void testAbstractSyntaxTreeTokenOnly() throws Exception {
		tokenPrinterSingleTest(Level.TOKEN_ONLY, AST_EXPECTED_TOKEN_ONLY_FILENAME);
	}
	
	public void tokenPrinterSingleTest(Level level, String string) throws Exception {
		ParseTreePrinter.setPrintLevel(level);
		String actualOutput =	tokenPrinterOutput(AST_INPUT_FILENAME);
		String expectedOutput = getContents(string);
		assertEquals(expectedOutput, actualOutput);
	}
	private String tokenPrinterOutput(String filename) throws Exception {
		return outputFor(new ASTCommand(filename));
	}
	
	public class ASTCommand implements Command {
		String filename;
		public ASTCommand(String filename) {
			this.filename = filename;
		}

		public void run(PrintStream out) throws FileNotFoundException {
			PikaAbstractSyntaxTree.parseFileToAST(filename, out);
		}
	}
}
