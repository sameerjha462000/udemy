package org.ey;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;

@Configuration
public class ProjectConfig {
    @Bean
    public Vehicle vehicle(){
        return new Vehicle();
    }


    /**
     * Since we used @Lazy here so bean of Person would not be created until and unless the application
     * would try to fetch the bean.
     */
    @Bean
    @Lazy
    public Person person(){
        return new Person();
    }
}
