package com.petstore.tests;

import com.intuit.karate.junit5.Karate;

public class PetStoreTest {

    @Karate.Test
    Karate testPetStore() {
        return Karate.run("petstore").relativeTo(getClass());
    }
}
