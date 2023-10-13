package org.ey;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {

        var context = new AnnotationConfigApplicationContext(ProjectConfig.class);

        /**
         * Since we have used a PROTOTYPE SCOPE, so everytime we access bean a new instance would be created.
         */

        Vehicle v1 = context.getBean(Vehicle.class);
        Vehicle v2 = context.getBean(Vehicle.class);

        System.out.println(v1 == v2); // false
    }
}