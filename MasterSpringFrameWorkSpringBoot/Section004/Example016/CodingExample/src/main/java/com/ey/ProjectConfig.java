package com.ey;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

@Configuration
@ComponentScan(basePackages = "com.ey")
public class ProjectConfig {

    @Bean
    public Vehicle vehicle1(){
        Vehicle v = new Vehicle();
        v.setName("Honda");
        return v;
    }

    @Bean
    public Vehicle vehicle2(){
        Vehicle v = new Vehicle();
        v.setName("Toyota");
        return v;
    }

    @Bean
    @Primary
    public Vehicle vehicle3(){
        Vehicle v = new Vehicle();
        v.setName("Ferrari");
        return v;
    }
}
