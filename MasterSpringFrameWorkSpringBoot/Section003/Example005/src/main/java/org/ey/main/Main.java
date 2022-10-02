package org.ey.main;

import org.ey.beans.Person;
import org.ey.beans.Vehicle;
import org.ey.config.ProjectConfig;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        var context = new AnnotationConfigApplicationContext(ProjectConfig.class);

        Vehicle v = context.getBean(Vehicle.class);

        v.printHello();

        var person = context.getBean(Person.class);

        System.out.println(person);
    }
}