package com.org.KarateLearning;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;


public class junit5Runner_Test {

    @Karate.Test
    Karate testSample() {
        return Karate.run("functional/getUserDetails").relativeTo(getClass());
    }

    @Karate.Test
    Karate testTags() {
        return Karate.run("tags").tags("@second").relativeTo(getClass());
    }

    @Karate.Test
    Karate testFullPath() {
        return Karate.run("classpath:karate/tags.feature").tags("@first");
    }

    @Karate.Test
    Karate runAll() {
        return Karate.run("src/test/java/features");
    }

    @Test
    void testParallel()
    {
     Results results = Runner.path("classpath:features").tags("~@ignore").parallel(10);
     assertEquals(0, results.getFailCount(), results.getErrorMessages());

    }

}
