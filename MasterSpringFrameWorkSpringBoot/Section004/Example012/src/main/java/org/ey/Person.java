package org.ey;

public class Person {
    private String name;
    private Vehicle vehicle;

    /**
     * Setters
     */

    public void setName(String name) {
        this.name = name;
    }
    public void setVehicle(Vehicle vehicle) {
        this.vehicle = vehicle;
    }

    /**
     * Getters
     */

    public String getName() {
        return name;
    }
    public Vehicle getVehicle() {
        return vehicle;
    }


    @Override
    public String toString(){
        return "Hi, My name is " + this.name + " and my vehicle's name is " + this.vehicle.getName();
    }


}
