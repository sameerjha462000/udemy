package org.ey.beans;

public class Person {
    private String name;
    private int age;

    Person(){

    }

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    /**
     * Setters
     */

    public void setName(String name){
        this.name = name;
    }

    public void setAge(int age){
        this.age = age;
    }

    /**
     * Getters
     */

    public String getName(){
        return this.name;
    }

    public int getAge(){
        return this.age;
    }

    @Override
    public String toString(){
        return "Hi, My name is " + this.name + " and I am " + this.age + " yrs old.";
    }

}
