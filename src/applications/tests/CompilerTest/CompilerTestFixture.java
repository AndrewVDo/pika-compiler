package applications.tests.CompilerTest;

import applications.PikaCompiler;

import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import tests.FileFixturesTestCase;

import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.Scanner;


public class CompilerTestFixture extends FileFixturesTestCase {
    public static final String PIKA_ONE = "input/pika-1/";

    protected String CompilerOutput(String filename) throws Exception {
        return outputFor(new CompilerCommand(filename));
    };

    protected static void warnUserNoExpectedFile(String programOutput, String expectedName) throws Exception {
        System.out.println("ASMEmulator.exe produced the output : ");
        System.out.println(programOutput.toString());
        System.out.println("There is currently no " + expectedName + " file, you can save this output as expected output");
    };

    protected static String runEmulator(String asmFilename) throws Exception {
        Process process = new ProcessBuilder("ASM_Emulator/ASMEmu.exe", asmFilename).start();
        InputStream inputStream = process.getInputStream();
        Scanner sc = new Scanner(inputStream);
        StringBuffer sb = new StringBuffer();
        while(sc.hasNextLine()) {
            sb.append(sc.nextLine());
            sb.append("\r\n");
        }
        return sb.toString();
    };

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
