package tests.runners;


import com.intuit.karate.junit5.Karate;

public class TestRunner {

    @Karate.Test
    Karate runTest() {
        return Karate.run("classpath:tests")
                .outputCucumberJson(true)
                .karateEnv("qa");
    }


}
