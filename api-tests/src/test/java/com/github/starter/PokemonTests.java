package com.github.starter;

import com.intuit.karate.junit5.Karate;

class PokemonTests {

    @Karate.Test
    Karate pokemonTest() {
        return Karate.run("classpath:karate/pokemon/pokemon.feature");
    }

}

