package applications.tests.CompilerTest;

import applications.PikaCompiler;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import java.util.stream.Stream;

import static applications.tests.CompilerTest.TestFinder.*;

public class GoodTest extends CompilerTestFixture{

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("findTestFiles")
    public void testMilestoneOneGood(String inputName, String outputName, String expectedName) throws Exception {

        PikaCompiler.compile(inputName);
        String programOutput = runEmulator(outputName);
        String expectedOutput = "";

        try {
            expectedOutput = getContents(expectedName);
        } catch (Exception e) {
            warnUserNoExpectedFile(programOutput, expectedName);
            fail("Could not find expected output");
        }

        assertEquals(expectedOutput, programOutput);
        System.out.println(programOutput);
    }

    public static Stream<Arguments> findTestFiles() throws Exception {
        return findTestsByPrefix(PIKA_ONE, GOOD_TEST);
    }

}
