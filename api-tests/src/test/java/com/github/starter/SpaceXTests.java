package com.github.starter;

import com.intuit.karate.junit5.Karate;

class SpaceXTests {

    @Karate.Test
    Karate statusTest() {
        return Karate.run("classpath:karate/spacex/status.feature");
    }

}

