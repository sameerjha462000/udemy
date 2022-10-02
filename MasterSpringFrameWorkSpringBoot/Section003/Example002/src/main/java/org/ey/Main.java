package org.ey;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContextExtensionsKt;

public class Main {
    public static void main(String[] args) {
        var context = new AnnotationConfigApplicationContext(ProjectConfig.class);

        /**
         * When there are multiple beans returning the instance of the same class, then we have an ambiguity.
         * In this case, we should also mention the name of the method from which we want to have the instance.
         */

        /**
         * Note that the following would not work
         * Pair p = context.getBean(Pair.class);
         * This would give us an error NoUniqueBeanDefinitionFound
         */
        Pair p1 = context.getBean("pairPos", Pair.class);
        System.out.println(p1);

        Pair p2 = context.getBean("pairNeg", Pair.class);
        System.out.println(p2);

        Pair p3 = context.getBean("pairZero", Pair.class);
        System.out.println(p3);
    }
}