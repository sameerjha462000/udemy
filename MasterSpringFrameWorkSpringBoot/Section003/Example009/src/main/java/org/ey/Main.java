package org.ey;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.function.Supplier;

public class Main {
    public static void main(String[] args) {
        var context = new AnnotationConfigApplicationContext(ProjectConfig.class);
        Vehicle v = context.getBean(Vehicle.class);

        System.out.println(v.getName());

        /**
         * Supplier is used to store the instance of a class.
         */
        Supplier<Person> s1 = () -> {
            Person p = new Person("Abhishek", 22);
            return p;
        };

        /**
         * This registers an instance of the class Person.
         * So this takes 3 parameters
         *  1. Bean name
         *  2. class name
         *  3. supplier containing the instance that we would like to inject inside the context.
         */
        context.registerBean("Abhishek", Person.class, s1);

        var p1 = context.getBean(Person.class);
        System.out.println(p1);


        /**
         * Now let us insert another person inside the context
         */

        Person mother = new Person("Bhoomika", 45);
        Supplier<Person> s2 = () -> mother;

        context.registerBean("Bhoomika", Person.class, s2);
        /**
         * This time we also need to pass the name of the bean as well as we already have a bean of person inside the spring context.
         */
        var p2 = context.getBean("Bhoomika",Person.class);

        System.out.println(p2);
    }
}