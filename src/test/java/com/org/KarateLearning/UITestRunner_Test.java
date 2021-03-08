package com.org.KarateLearning;

import com.intuit.karate.junit5.Karate;

public class UITestRunner_Test {

    @Karate.Test
    Karate testSample() {
        return Karate.run("functional/UI/newPOC").relativeTo(getClass());
    }


}
