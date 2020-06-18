package applications.tests;

import applications.PikaCompiler;
import org.junit.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import tests.FileFixturesTestCase;

import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.util.stream.Stream;

public class CompilerTest extends FileFixturesTestCase {
    public static final String PIKA_ONE = "input/pika-1/";

    @Test
    public void testOne() {
        //avoid error
    }

    @ParameterizedTest(name = "Run {index}: inputName={0}, outputName={1}")
    @MethodSource("testParams")
    public void testTwo(String inputName, String outputName) throws Exception{
        System.out.println(inputName + " --> " + outputName);
    }

    public static Stream<Arguments> testParams() throws Exception {
        return new TestFileExplorer(PIKA_ONE).getArgumentStream();
    };

    private String CompilerOutput(String filename) throws Exception {
        return outputFor(new CompilerCommand(filename));
    }

    public class CompilerCommand implements Command {
        String filename;
        public CompilerCommand(String filename) {
            this.filename = filename;
        }

        public void run(PrintStream out) throws FileNotFoundException {
            PikaCompiler.compile(filename);
        }
    }
}
