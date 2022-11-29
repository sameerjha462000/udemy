package org.ey;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        var context = new AnnotationConfigApplicationContext(ProjectConfig.class);

        Pair p1 = context.getBean("positive", Pair.class);
        System.out.println(p1);

        Pair p2 = context.getBean("negative", Pair.class);
        System.out.println(p2);

        Pair p3 = context.getBean("zero", Pair.class);
        System.out.println(p3);
    }
}