package karate;

import com.intuit.karate.junit5.Karate;

public class TestRunners {
    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:karate").relativeTo(getClass());
    }
}
