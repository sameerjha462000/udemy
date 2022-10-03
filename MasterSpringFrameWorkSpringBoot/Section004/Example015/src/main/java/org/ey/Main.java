package org.ey;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        var context = new AnnotationConfigApplicationContext(ProjectConfig.class);

        var person = context.getBean(Person.class);
        var vehicle = context.getBean(Vehicle.class);

        System.out.println(person.getVehicle() == vehicle); // true
    }
}