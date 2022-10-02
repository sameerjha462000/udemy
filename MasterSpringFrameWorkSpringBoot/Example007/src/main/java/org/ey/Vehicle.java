package org.ey;

import org.springframework.stereotype.Component;
import javax.annotation.PostConstruct;

@Component
public class Vehicle {
    private String name;

    Vehicle(){System.out.println("Vehicle Created");}
    Vehicle(String name){this.name = name;}

    public void setName(String name){
        this.name = name;
    }

    public String getName(){
        return this.name;
    }

    @PostConstruct
    public void msg(){
        System.out.println("I was called just after the creation of the Vehicle bean.");
    }



}
