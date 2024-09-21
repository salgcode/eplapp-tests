package com.github.starter;

import com.intuit.karate.junit5.Karate;

class EplTests {


    @Karate.Test
    Karate eplListTest() {
        return Karate.run("classpath:karate/epl/epl.feature");
    }

}

