package applications.tests.CompilerTest;

import applications.PikaCompiler;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.stream.Stream;

import static applications.tests.CompilerTest.TestFinder.GOOD_TEST;
import static applications.tests.CompilerTest.TestFinder.findTestsByPrefix;

public class GoodTest extends CompilerTestFixture{

    @Test
    public void testDummy() {}

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("pika1data")
    public void testGoodM1(String inputName, String outputName, String expectedName) {
        runGoodTest(inputName, outputName, expectedName);
    }
    public static Stream<Arguments> pika1data() throws Exception {
        return findTestsByPrefix(PIKA_ONE, GOOD_TEST);
    }

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("pika2data")
    public void testGoodM2(String inputName, String outputName, String expectedName) {
        runGoodTest(inputName, outputName, expectedName);
    }
    public static Stream<Arguments> pika2data() throws Exception {
        return findTestsByPrefix(PIKA_TWO, GOOD_TEST);
    }

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("pika3data")
    public void testGoodM3(String inputName, String outputName, String expectedName) {
        runGoodTest(inputName, outputName, expectedName);
    }
    public static Stream<Arguments> pika3data() throws Exception {
        return findTestsByPrefix(PIKA_THREE, GOOD_TEST);
    }

    private void runGoodTest(String inputName, String outputName, String expectedName) {
        String programOutput = "";
        String expectedOutput = "";

        try {
            PikaCompiler.compile(inputName);
            programOutput = runEmulator(outputName);
        } catch (Exception e) {
            fail("Exception Caught");
        }

        try {
            expectedOutput = getContents(expectedName);
        } catch (Exception e) {
            warnUserNoExpectedFile(programOutput, expectedName);
            fail("Could not find expected output");
        }

        assertEquals(programOutput, expectedOutput);
        System.out.println(programOutput);
    }

    private void createExpected(String programOutput, String expectedName) {
        try {
            File expectedFile = new File(expectedName);
            if (expectedFile.createNewFile()) {
                System.out.println("Expected output created");
            }
            else {
                System.out.println("File already exists");
            }

            FileWriter expectedWriter = new FileWriter(expectedName);
            expectedWriter.write(programOutput);
            expectedWriter.close();
            System.out.println("Expected results written to file");
        }
        catch(IOException e) {
            System.out.println("IOException error");
            e.printStackTrace();
        }
    }

}
