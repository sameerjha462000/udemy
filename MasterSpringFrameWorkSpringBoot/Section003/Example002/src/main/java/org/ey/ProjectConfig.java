package org.ey;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

@Configuration
public class ProjectConfig {

    @Bean
    Pair pairPos(){
        return new Pair(3, 4);
    }

    @Bean
    Pair pairNeg(){
        return new Pair(-3, -4);
    }

    @Bean
    Pair pairZero(){
        return new Pair(0, 0);
    }

}
