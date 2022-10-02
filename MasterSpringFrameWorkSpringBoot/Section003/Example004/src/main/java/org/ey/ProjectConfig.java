package org.ey;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

@Configuration
public class ProjectConfig {


    /**
     * In case of confusion, this bean would be given the highest priority.
     */
    @Bean(name = "positive")
    @Primary
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
