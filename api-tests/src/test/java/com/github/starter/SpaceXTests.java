package com.github.starter;

import com.intuit.karate.junit5.Karate;

class SpaceXTests {

    @Karate.Test
    Karate statusTest() {
        return Karate.run("classpath:karate/spacex/status.feature");
    }

    @Karate.Test
    Karate spaceXC112Test(){ return  Karate.run("classpath:karate/spacex/spacex-C112.feature");}

    @Karate.Test
    Karate spaceXRoadsterTest(){ return  Karate.run("classpath:karate/spacex/roadster.feature");}

}

