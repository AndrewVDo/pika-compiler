package applications.tests;

import applications.PikaApplication;
import org.junit.jupiter.params.provider.Arguments;

import java.io.File;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Stream;

public class TestFileExplorer {
    public static final Pattern pattern = Pattern.compile("(.*)(good_|err_|rte_)(.*)");
    public static final List<String> DIR_EXEMPT = List.of("expected", "output");

    public List<Arguments> testParams;

    TestFileExplorer(String rootDir) throws Exception {
        testParams = new ArrayList<Arguments>();

        File[] files = new File(rootDir).listFiles();
        findFiles(files);
    }
    private void findFiles(File[] files) throws Exception {
        findFiles(files, "");
    }
    private void findFiles(File[] files, String subDir) throws Exception {
        for (File file : files) {
            if (DIR_EXEMPT.contains(file.getName())) {
                continue;
            }
            if (file.isDirectory()) {
                findFiles(file.listFiles(), subDir + file.getName() + "/");
            } else {
                String inputName = subDir + file.getName();
                String outputName = PikaApplication.outputFilename(inputName);
                testParams.add(Arguments.of(inputName, outputName));
            }
        }
    }

    public Stream<Arguments> getArgumentStream() {
        return testParams.stream();
    }

    public static final String getClassification(String filename) throws Exception {
        Matcher result = pattern.matcher(filename);
        if(!result.find() || result.group(2).isEmpty()) {
            throw new Exception("Could not identify test type for: " + filename);
        }

        return result.group(2);
    }
};
