package org.ey;

public class Vehicle {
    private String name;

    public Vehicle(){
        System.out.println("I was created by the God.");
    }

    public void setName(String name){this.name = name;}
    public String getName(){return this.name;}
}
