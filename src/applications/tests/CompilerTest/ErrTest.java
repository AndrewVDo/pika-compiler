package applications.tests.CompilerTest;

import applications.PikaCompiler;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import java.util.stream.Stream;

import static applications.tests.CompilerTest.TestFinder.*;

public class ErrTest extends NoExitTestFixture {

    @Test
    public void testDummy() {}

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("findPikaOneErr")
    public void testMilestoneOneErr(String inputName, String outputName, String expectedName) throws Exception {
        try {
            setUp();
            PikaCompiler.compile(inputName);
        }
        catch(ExitException e) {
            return;
        }
        fail("Compiler should have exited");
    }

    public static Stream<Arguments> findPikaOneErr() throws Exception {
        return findTestsByPrefix(PIKA_ONE, ERR_TEST);
    }

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}, expectedName={2}")
    @MethodSource("findPikaTwoErr")
    public void testMilestoneTwoErr(String inputName, String outputName, String expectedName) throws Exception {
        try {
            setUp();
            PikaCompiler.compile(inputName);
        }
        catch(ExitException e) {
            return;
        }
        fail("Compiler should have exited");
    }

    public static Stream<Arguments> findPikaTwoErr() throws Exception {
        return findTestsByPrefix(PIKA_TWO, ERR_TEST);
    }

}
