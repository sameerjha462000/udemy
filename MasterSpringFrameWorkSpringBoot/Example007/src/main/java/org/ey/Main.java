package org.ey;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        /**
         * As soon as we create the context, the beans are automatically created.
         */
        var context = new AnnotationConfigApplicationContext(ProjectConfig.class);


    }
}