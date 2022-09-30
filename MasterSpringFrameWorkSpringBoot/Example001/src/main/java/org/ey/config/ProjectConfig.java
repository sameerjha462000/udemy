package org.ey.config;

import org.ey.beans.*;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

@Configuration
public class ProjectConfig {

    /**
     * A bean is an object in the spring context
     * To mark a POJO as bean we use the @Bean annotation. This is written over a method which returns
     * an instance of a class.
     */
    @Bean
    public Pair pair(){
        Pair p = new Pair(3,4);
        return p;
    }

}
