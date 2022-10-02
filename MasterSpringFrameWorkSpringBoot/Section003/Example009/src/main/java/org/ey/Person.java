package org.ey;

/**
 * I have not registered it inside the bean as I will register it during the runtime.
 */
@SuppressWarnings("unused")
public class Person {
    private String name;
    private int age;

    /**
     * Constructor
     */

    Person(){}
    Person(String name, int age){
        this.name = name;
        this.age = age;
    }
    Person(Person other){
        this.name = other.name;
        this.age = other.age;
    }

    /**
     * Setters
     */

    void setName(String name){
        this.name = name;
    }

    void setAge(int age){
        this.age = age;
    }

    /**
     * Getters
     */

    String getName(){return this.name;}
    int getAge(){return this.age;}

    /**
     * toString() method
     */

    public String toString(){
        return "Hi, My name is " + this.name + " and I am " + this.age + " yrs old.";
    }
}
