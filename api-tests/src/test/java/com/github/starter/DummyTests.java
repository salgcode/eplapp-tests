package com.github.starter;

import com.intuit.karate.junit5.Karate;

class DummyTests {

    @Karate.Test
    Karate dummyTest() {
        return Karate.run("classpath:karate/placeholder.feature");
    }

}

