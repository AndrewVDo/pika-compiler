package applications.tests.CompilerTest;

import applications.PikaApplication;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.provider.Arguments;

import java.io.File;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Stream;

import static applications.tests.CompilerTest.CompilerTestFixture.PIKA_ONE;

public class TestFinder {
    private static final List<String> DIR_EXEMPT = List.of("expected", "output");

    public static final String GOOD_TEST = "good_";
    public static final String ERR_TEST = "err_";
    public static final String RTE_TEST = "rte_";


    public static final Stream<Arguments> findTestsByPrefix(String rootDir, String prefix) throws Exception{
        File[] files = new File(rootDir).listFiles();
        String expectedDir = rootDir + "expected/";
        Pattern pattern = Pattern.compile("(" + prefix + ")(.*)");

        ArrayList<Arguments> testFileNames = findFiles(files, rootDir, expectedDir, pattern);
        return testFileNames.stream();
    }
    private static final ArrayList<Arguments> findFiles(File[] files, String subDir, String expectedDir, Pattern pattern) throws Exception {
        ArrayList<Arguments> result = new ArrayList<Arguments>();

        for (File file : files) {
            System.out.println(file.getName());
            if (DIR_EXEMPT.contains(file.getName())) {
                continue;
            }
            if (file.isDirectory()) {
                ArrayList<Arguments> subDirectoryResults = findFiles(
                    file.listFiles(),
                    subDir + file.getName() + "/",
                    expectedDir + file.getName() + "/",
                    pattern
                );
                result.addAll(subDirectoryResults);
            }
            if(matchPrefix(file.getName(), pattern) == false) {
                continue;
            }
            else {
                String inputName = subDir + file.getName();
                String outputName = PikaApplication.outputFilename(inputName);
                String expectedName = expectedDir + file.getName();
                result.add(Arguments.of(inputName, outputName, expectedName));
            }
        }
        return result;
    }
    private static final boolean matchPrefix(String filename, Pattern pattern) throws Exception {
        Matcher result = pattern.matcher(filename);
        if(!result.find() || result.group(2).isEmpty()) {
            return false;
        }
        return true;
    }
};
