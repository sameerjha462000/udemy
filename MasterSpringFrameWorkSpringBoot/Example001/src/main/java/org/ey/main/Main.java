package org.ey.main;

import org.ey.beans.Pair;
import org.ey.config.ProjectConfig;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContextExtensionsKt;

public class Main {
    public static void main(String[] args) {
        var context = new AnnotationConfigApplicationContext(ProjectConfig.class);

        Pair p = context.getBean(Pair.class);

        System.out.println(p);
    }
}