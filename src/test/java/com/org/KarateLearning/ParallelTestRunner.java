package com.org.KarateLearning;


import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit4.Karate;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.net.URL;
import java.net.URLClassLoader;
import java.util.Map;
import java.util.Properties;

import static org.junit.Assert.assertTrue;

//@RunWith(Karate.class)
//@KarateOptions(features="src/test/java/features")
public class ParallelTestRunner {
    @Test
    public void parallel() {
        Results res = Runner.path("classpath:features").tags("~@ignore").parallel(5);

        assertTrue(res.getErrorMessages(),res.getFailCount()==0);


}}
