package org.ey;

public class Vehicle {
    private String name;

    /**
     * Constructors
     */
    public Vehicle(){
        System.out.println("Vehicle was created by Spring");
    }

    /**
     * Getters
     */

    public String getName(){return this.name;}

    /**
     * Setters
     */
    public void setName(String name){
        this.name = name;
    }
}
