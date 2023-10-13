package org.ey;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        var context = new AnnotationConfigApplicationContext(ProjectConfig.class);

        var p = context.getBean(Person.class);
        p.getVehicle().setName("Abhishek ki Gaadi");

        var vehicle = context.getBean(Vehicle.class);
        System.out.println(vehicle.getName()); // This also prints "Abhishek ki Gaadi"
    }
}