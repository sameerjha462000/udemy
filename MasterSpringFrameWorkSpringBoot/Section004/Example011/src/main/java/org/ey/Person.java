package org.ey;


public class Person {
    private String name;
    private Vehicle vehicle;

    /**
     * Constructors
     */
    Person(){}
    Person(String name, Vehicle vehicle){
        this.name = name;
        this.vehicle = vehicle;
    }
    Person(Person other){
        this.name = other.name;
        this.vehicle = other.vehicle;
    }

    /**
     * Setters
     */
    public void setName(String name){
        this.name = name;
    }
    public void setVehicle(Vehicle vehicle){
        this.vehicle = vehicle;
    }

    /**
     * Getters
     */

    public String getName(){return this.name;}
    public Vehicle getVehicle(){return this.vehicle;}

    @Override
    public String toString(){
        return "Hi, My name is " + this.name + " and my vehicle's name is " + this.vehicle.getName();
    }
}
