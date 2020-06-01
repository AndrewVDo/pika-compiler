package applications.tests;

public class FixtureDefinitions {
	public static final String FIXTURE_DIRECTORY = "src/applications/tests/fixtures/";
	public static final String MILESTONE_1_DIRECTORY = "src/applications/tests/fixtures/milestone-1/";
	
	public static final String NUMBERED_FILE_INPUT_FILENAME     = FIXTURE_DIRECTORY + "sampleFile.txt";
	public static final String NUMBERED_FILE_EXPECTED_FILENAME  = FIXTURE_DIRECTORY + "sampleFileListing.txt";
	
	public static final String TOKEN_PRINTER_INPUT_FILENAME     = FIXTURE_DIRECTORY + "coinTest.pika";
	public static final String TOKEN_PRINTER_EXPECTED_FILENAME  = FIXTURE_DIRECTORY + "coinTestTokens.txt";
	
	public static final String AST_INPUT_FILENAME               = FIXTURE_DIRECTORY + "coinTest.pika";
	public static final String AST_EXPECTED_FULL_FILENAME       = FIXTURE_DIRECTORY + "coinTestAST.txt";
	public static final String AST_EXPECTED_TOKEN_ONLY_FILENAME = FIXTURE_DIRECTORY + "coinTestTokenOnlyAST.txt";

	public static final String SEMANTIC_INPUT_FILENAME          = FIXTURE_DIRECTORY + "coinTest.pika";
	public static final String SEMANTIC_EXPECTED_FILENAME       = FIXTURE_DIRECTORY + "coinTestSemantics.txt";
	
	public static final String MILESTONE_1_TESTS_INPUT []				= {
			MILESTONE_1_DIRECTORY + "commentTest.pika",
			
	};
	
	public static final String MILESTONE_1_TESTS_EXPECTED []			= {
			MILESTONE_1_DIRECTORY + "commentTestTokens.txt",
	};
}
