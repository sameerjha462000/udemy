package org.ey;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Person {
    private String name;
    private Vehicle vehicle;

    @Autowired
    public Person(Vehicle vehicle){
        this.vehicle = vehicle;
    }
    public Vehicle getVehicle() {
        return vehicle;
    }

    @Override
    public String toString(){
        return "Hi, My name is " + this.name + " and my vehicle's name is " + this.vehicle.getName();
    }
}
