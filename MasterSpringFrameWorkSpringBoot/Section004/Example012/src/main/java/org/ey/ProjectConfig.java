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
     * Here Spring(being smart) would automatically search if there is a bean which returns a Vehicle and would pass that as a parameter.
     *
     * Now, our only task is to only wire that passed bean with our person.
     */

    /**
     * Spring injects the Vehicle bean to the person bean using the dependency injection.
     */
    @Bean
    public Person person(Vehicle vehicle){
        Person p = new Person();
        p.setName("Abhishek");

        /**
         * This is the step where we are doing the wiring
         */
        p.setVehicle(vehicle);
        return p;
    }
}
