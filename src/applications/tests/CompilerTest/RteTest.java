package applications.tests.CompilerTest;

import applications.PikaCompiler;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import java.util.stream.Stream;

import static applications.tests.CompilerTest.TestFinder.*;

public class RteTest extends CompilerTestFixture {

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("findTestFiles")
    public void MilestoneOneRte(String inputName, String outputName, String expectedName) throws Exception {
        PikaCompiler.compile(inputName);
        String programOutput = runEmulator(outputName);
        boolean findRunTimeError = programOutput.contains("Runtime error");

        assertTrue(findRunTimeError);
    }

    public static Stream<Arguments> findTestFiles() throws Exception {
        return findTestsByPrefix(PIKA_ONE, RTE_TEST);
    }

}
