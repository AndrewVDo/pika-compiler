package applications.tests.CompilerTest;

import applications.PikaCompiler;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import java.util.stream.Stream;

import static applications.tests.CompilerTest.TestFinder.*;

public class RteTest extends CompilerTestFixture {

    @Test
    public void testDummy() {}

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("findMilestoneOneFiles")
    public void testMilestoneOneRte(String inputName, String outputName, String expectedName) throws Exception {
        PikaCompiler.compile(inputName);
        String programOutput = runEmulator(outputName);
        boolean findRunTimeError = programOutput.contains("Runtime error");

        assertTrue(findRunTimeError);
    }

    public static Stream<Arguments> findMilestoneOneFiles() throws Exception {
        return findTestsByPrefix(PIKA_ONE, RTE_TEST);
    }

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("findMilestoneTwoFiles")
    public void testMilestoneTwoRte(String inputName, String outputName, String expectedName) throws Exception {
        PikaCompiler.compile(inputName);
        String programOutput = runEmulator(outputName);
        boolean findRunTimeError = programOutput.contains("Runtime error");

        assertTrue(findRunTimeError);
    }

    public static Stream<Arguments> findMilestoneTwoFiles() throws Exception {
        return findTestsByPrefix(PIKA_TWO, RTE_TEST);
    }

}
