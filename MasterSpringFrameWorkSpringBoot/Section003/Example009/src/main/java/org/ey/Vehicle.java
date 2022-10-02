package org.ey;

import org.springframework.stereotype.Component;
import javax.annotation.PostConstruct;

@Component
public class Vehicle {
    private String name;

    Vehicle(){}
    Vehicle(String name){this.name = name;}

    void setName(String name){
        this.name = name;
    }

    String getName() {
        return this.name;
    }


    @PostConstruct
    void set(){
        this.name = "Ferrari";
    }
}
