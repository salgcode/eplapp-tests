package com.github.starter;
import com.intuit.karate.junit5.Karate;

class ServicesTests {
    @Karate.Test
    Karate serviceTest() {return Karate.run("classpath:karate/kong/kongAdmin.feature");
}
}
