package com.org.KarateLearning;


import com.intuit.karate.Results;
import com.intuit.karate.Runner;


import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


public class junit5Runner_Test {


    @Test
    public void testParallel() {

        System.setProperty("karate.env", "test"); // ensure reset if other tests (e.g. mock) had set env in CI
        Results results = Runner.path("classpath:/com/org/KarateLearning/Tests")
                .outputCucumberJson(true)
                .tags("~@ignore").parallel(5);
        generateReport(results.getReportDir());
        //assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }


    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target/karate-reports"), "KarateLearning");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }



    // This is to run a feature with respect to current file location
    // No need to add .feature
    // System will add .feature to your file. In below example test.feature it will make and run
    @Karate.Test
    Karate testSample() {
        return Karate.run("tests/UI/test").relativeTo(getClass());
    }

    // here also no need to add .feature
    // add tags function and add tag to it
    @Karate.Test
    Karate testTags() {
        return Karate.run("tests/UI/test").tags("@second").relativeTo(getClass());
    }

    // Using .feature is mandatory here
    // You have to addd little more since classpath will not bring till current(this file) location
    // so you need to even add com/org/ as well

    @Karate.Test
    Karate testFullPath() {
        return Karate.run("classpath:com/org/KarateLearning/tests/UI/test.feature").tags("@first");
    }

    // KarateEnv variable tells to read configuration from which config file
    // So if we mention it as test then it will serch for karate-config-test.js
    @Karate.Test
    Karate testSystemProperty() {
        return Karate.run("classpath:com/org/KarateLearning/tests/UI/test.feature")
                .tags("@second")
                .karateEnv("test")

               // yet to decode its usage
                .systemProperty("foo", "bar");
    }


    // To run everything in the project which is down at current folder level
    // This will not run everything in parallel though
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }


    // using for now
    @Karate.Test
    Karate testingpurpose() {
        return Karate.run("classpath:com/org/KarateLearning/tests/UI/screenshot.feature");
    }


}
