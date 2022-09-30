package org.ey.config;

import org.ey.beans.*;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

@Configuration
public class ProjectConfig {

    /**
     * A bean is an object in the spring context
     * To mark a bean, We use @Bean annotation. This helps us spring to load the object into the IOC container
     * This annotation is used before a method.
     * The method on which this annotation is applied must return an Instance of a class
     */
    @Bean
    public Pair pair(){
        Pair p = new Pair(3,4);
        return p;
    }

}
