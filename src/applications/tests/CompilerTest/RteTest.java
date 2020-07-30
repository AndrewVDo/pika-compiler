package applications.tests.CompilerTest;

import applications.PikaCompiler;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import java.util.stream.Stream;

import static applications.tests.CompilerTest.TestFinder.RTE_TEST;
import static applications.tests.CompilerTest.TestFinder.findTestsByPrefix;

public class RteTest extends CompilerTestFixture {

    @Test
    public void testDummy() {}

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("findMilestoneOneFiles")
    public void testRteM1(String inputName, String outputName, String expectedName) {
        runRteTest(inputName, outputName);
    }
    public static Stream<Arguments> findMilestoneOneFiles() throws Exception {
        return findTestsByPrefix(PIKA_ONE, RTE_TEST);
    }

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("findMilestoneTwoFiles")
    public void testRteM2(String inputName, String outputName, String expectedName) {
        runRteTest(inputName, outputName);
    }
    public static Stream<Arguments> findMilestoneTwoFiles() throws Exception {
        return findTestsByPrefix(PIKA_TWO, RTE_TEST);
    }

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("findMilestone3Files")
    public void testRteM3(String inputName, String outputName, String expectedName) {
        runRteTest(inputName, outputName);
    }
    public static Stream<Arguments> findMilestone3Files() throws Exception {
        return findTestsByPrefix(PIKA_THREE, RTE_TEST);
    }

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("findMilestone4Files")
    public void testRteM4(String inputName, String outputName, String expectedName) {
        runRteTest(inputName, outputName);
    }
    public static Stream<Arguments> findMilestone4Files() throws Exception {
        return findTestsByPrefix(PIKA_FOUR, RTE_TEST);
    }

    private void runRteTest(String inputName, String outputName) {
        String programOutput = "";
        try {
            PikaCompiler.compile(inputName);
            programOutput = runEmulator(outputName);
        } catch(Exception e) {
            fail("Caught Exception");
        }

        boolean findRunTimeError = programOutput.contains("Runtime error");
        assertTrue(findRunTimeError);
    }

}
