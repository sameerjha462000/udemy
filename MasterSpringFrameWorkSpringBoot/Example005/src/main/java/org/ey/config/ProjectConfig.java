package org.ey.config;

import org.ey.beans.Person;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @ComponentScan is used by the Spring container to search for classes that generate beans.
 */

@Configuration
@ComponentScan(basePackages = "org.ey.beans")
public class ProjectConfig {
    @Bean
    public Person person(){
        return new Person("Abhishek", 22);
    }
}
