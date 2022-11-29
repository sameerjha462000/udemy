package org.ey;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Person {
    private String name;
    @Autowired
    private Vehicle vehicle;

    /**
     * The reason why I commented out Setters and Getters is because I wanted to check if @Autowired uses
     * getters and setters.
     */

    /**
     * Setters
     */

//    public void setName(String name) {
//        this.name = name;
//    }
//    public void setVehicle(Vehicle vehicle) {
//        this.vehicle = vehicle;
//    }

    /**
     * Getters
     */

//    public String getName() {
//        return name;
//    }
    public Vehicle getVehicle() {
        return vehicle;
    }


    @Override
    public String toString(){
        return "Hi, My name is " + this.name + " and my vehicle's name is " + this.vehicle.getName();
    }


}
