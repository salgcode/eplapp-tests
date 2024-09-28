package com.github.starter;

import com.intuit.karate.junit5.Karate;

class EplTests {


    @Karate.Test
    Karate eplListTest() {
        return Karate.run("classpath:karate/epl/epl.feature");
    }

    @Karate.Test
    Karate eplWinner1994() {
        return Karate.run("classpath:karate/epl/eplWinner1994.feature");
    }
    @Karate.Test
    Karate eplWinner2012() {
        return Karate.run("classpath:karate/epl/eplWinner_2012.feature");
    }
    @Karate.Test
    Karate mostGoals() {
        return Karate.run("classpath:karate/epl/most-goals.feature");
    }
    @Karate.Test
    Karate winner1995() {
        return Karate.run("classpath:karate/epl/eplWinners.feature");
    }
    @Karate.Test
    Karate winner1999() {
        return Karate.run("classpath:karate/epl/eplWinners.feature");
    }

    }



