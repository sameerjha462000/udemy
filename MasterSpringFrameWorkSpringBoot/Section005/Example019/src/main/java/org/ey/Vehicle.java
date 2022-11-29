package org.ey;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class Vehicle {
    private String name;

    public Vehicle(){
        System.out.println("A vehicle was created.");
    }

    public void setName(String name){this.name = name;}
    public String getName(){return this.name;}
}
