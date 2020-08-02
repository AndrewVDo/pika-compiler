package applications.tests.CompilerTest;

import applications.PikaCompiler;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import java.util.stream.Stream;

import static applications.tests.CompilerTest.TestFinder.ERR_TEST;
import static applications.tests.CompilerTest.TestFinder.findTestsByPrefix;

public class ErrTest extends NoExitTestFixture {

    @Test
    public void testDummy() {}

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("findPikaOneErr")
    public void testErrM1(String inputName, String outputName, String expectedName) throws Exception {
        runErrTest(inputName);
    }
    public static Stream<Arguments> findPikaOneErr() throws Exception {
        return findTestsByPrefix(PIKA_ONE, ERR_TEST);
    }

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("findPikaTwoErr")
    public void testErrM2(String inputName, String outputName, String expectedName) throws Exception {
        runErrTest(inputName);
    }
    public static Stream<Arguments> findPikaTwoErr() throws Exception {
        return findTestsByPrefix(PIKA_TWO, ERR_TEST);
    }

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("findPika3Err")
    public void testErrM3(String inputName, String outputName, String expectedName) throws Exception {
        runErrTest(inputName);
    }
    public static Stream<Arguments> findPika3Err() throws Exception {
        return findTestsByPrefix(PIKA_THREE, ERR_TEST);
    }

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("findPika4Err")
    public void testErrM4(String inputName, String outputName, String expectedName) throws Exception {
        runErrTest(inputName);
    }
    public static Stream<Arguments> findPika4Err() throws Exception {
        return findTestsByPrefix(PIKA_FOUR, ERR_TEST);
    }

    private void runErrTest(String inputName) {
        try {
            setUp();
            PikaCompiler.compile(inputName);
        }
        catch(ExitException e) {
            return;
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        fail("Compiler did not exit");
    }
}
