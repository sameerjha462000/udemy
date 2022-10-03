package org.ey;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ProjectConfig {

    @Bean
    public Vehicle vehicle(){
        Vehicle v = new Vehicle();
        v.setName("Ferrari");
        return v;
    }

    /**
     * We are calling vehicle() method from the person(), This would wire them both.
     * Although, this is a very bad way of wiring the beans -- never ever use it in the production code.
     */
    @Bean
    public Person person(){
        Person p = new Person("Abhishek", vehicle());
        return p;
    }

}
