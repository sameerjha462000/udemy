package org.ey;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
//@Scope(BeanDefinition.SCOPE_SINGLETON) // We could have also avoided this as this is default
public class Vehicle {

    private String name;

    public void setName(String name){this.name = name;}
    public String getName(){return this.name;}
}
