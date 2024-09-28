package com.github.starter;
import com.intuit.karate.junit5.Karate;

class RoutesTest {
    @Karate.Test
    Karate spaceXRoute() {return Karate.run("classpath:karate/kong/spacexRoute.feature");
    }
    @Karate.Test
    Karate appRoute() {return Karate.run("classpath:karate/kong/appRouteTest.feature");
    }
    @Karate.Test
    Karate appUiRoute() {return Karate.run("classpath:karate/kong/uiRoutes.feature");
    }

}

