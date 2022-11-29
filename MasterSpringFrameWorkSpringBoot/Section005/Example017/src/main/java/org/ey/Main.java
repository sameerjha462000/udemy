package org.ey;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        var context = new AnnotationConfigApplicationContext(ProjectConfig.class);

        Vehicle v1 = context.getBean(Vehicle.class);
        Vehicle v2 = context.getBean(Vehicle.class);

        System.out.println(v1 == v2); // true as by default we have singleton scope and that returns only 1 instance per bean.
    }
}