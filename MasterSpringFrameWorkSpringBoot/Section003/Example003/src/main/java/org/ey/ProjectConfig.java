package org.ey;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ProjectConfig {

    /**
     * We can also give names to the beans using "name", "value" or simply passing name in the string
     */

    /**
     * This is the way we provide custom names to our beans
     */

    @Bean(name = "positive")
    Pair pairPos(){
        return new Pair(3, 4);
    }

    @Bean(value = "negative")
    Pair pairNeg(){
        return new Pair(-3, -4);
    }

    @Bean("zero")
    Pair pairZero(){
        return new Pair();
    }
}
