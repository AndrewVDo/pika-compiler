package applications.tests;

import applications.NumberedFileLister;
import org.junit.Test;
import tests.FileFixturesTestCase;

import java.io.FileNotFoundException;
import java.io.PrintStream;

import static applications.tests.FixtureDefinitions.NUMBERED_FILE_EXPECTED_FILENAME;
import static applications.tests.FixtureDefinitions.NUMBERED_FILE_INPUT_FILENAME;

public class TestNumberedFileLister extends FileFixturesTestCase {

	
	@Test
	public void testListFile() throws Exception {
		String actualOutput =	listFileOutput(NUMBERED_FILE_INPUT_FILENAME);
		String expectedOutput = getContents(NUMBERED_FILE_EXPECTED_FILENAME);
		assertEquals(expectedOutput, actualOutput);
	}

	private String listFileOutput(String filename) throws Exception {
		return outputFor(new ListFileCommand(filename));
	}
	
	public class ListFileCommand implements Command {
		String filename;
		public ListFileCommand(String filename) {
			this.filename = filename;
		}

		public void run(PrintStream out) throws FileNotFoundException {
			NumberedFileLister.listFile(filename, out);
		}
	}


}
