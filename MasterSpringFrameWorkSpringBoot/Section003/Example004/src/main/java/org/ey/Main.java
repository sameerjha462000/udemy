package org.ey;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        var context = new AnnotationConfigApplicationContext(ProjectConfig.class);

        /**
         * Since there are multiple beans of class Pair to chose from, so we chose the one having @Primary annotation
         */

        Pair p = context.getBean(Pair.class);
        System.out.println(p);
    }
}