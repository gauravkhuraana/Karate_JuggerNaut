package com.org.KarateLearning;

import com.intuit.karate.junit5.Karate;

public class junit5Runner {

    @Karate.Test
    Karate testSample() {
        return Karate.run("features/getUserDetails").relativeTo(getClass());
    }

    @Karate.Test
    Karate testTags() {
        return Karate.run("tags").tags("@second").relativeTo(getClass());
    }

    @Karate.Test
    Karate testFullPath() {
        return Karate.run("classpath:karate/tags.feature").tags("@first");
    }
}
