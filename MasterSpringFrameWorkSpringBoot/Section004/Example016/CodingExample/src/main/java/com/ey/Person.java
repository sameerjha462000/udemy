package com.ey;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

public class Person {
    private String name;
    private final Vehicle vehicle;

    /*
        1. This would not work as there are multiple beans of Vehicle class. So Here we cannot decide
          on the basis of the class.
     */

//    @Autowired
//    public Person(Vehicle vehicle){
//        this.vehicle = vehicle;
//    }


    /*
        2. Now since the bean could not be selected on the basis of class, So we select the bean on the basis of
         parameter name
     */

//    @Autowired
//    public Person(Vehicle vehicle1){
//        /**
//         * This would select the bean whose name is "vehicle1".
//         */
//        this.vehicle = vehicle1;
//    }

    /*
        3. Now here since the parameter name does not match with the name of any bean, so the bean which is
          having @Primary annotation would be selected.
     */

//    @Autowired
//    public Person(Vehicle vehicle){
//        /**
//         * Since here parameter name does not match with the name of any bean therefore the "vehicle3" would be
//         * selected as it has @Primary annotation.
//         */
//        this.vehicle = vehicle;
//    }

    /*
        4. If the parameter name/field that we use while configuring autowiring annotation is not matching with any
        of the bean names and even Primary bean is not configured, then Spring will look if @Qualifier annotation is used
        with the bean name matching with Spring context bean names.
     */

    @Autowired
    public Person(@Qualifier("Vehicle2") Vehicle vehicle){
        /**
         * Since in @Qualifier annotation, "Vehicle2" has been mentioned. So, the bean with the name "Vehicle2" would
         * be selected.
         */
        this.vehicle = vehicle;
    }
}
