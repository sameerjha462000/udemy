package org.ey;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class Main {
    public static void main(String[] args) {
        var context = new ClassPathXmlApplicationContext("beans.xml");

        Pair pos = context.getBean("positive", Pair.class);
        System.out.println(pos);
    }
}