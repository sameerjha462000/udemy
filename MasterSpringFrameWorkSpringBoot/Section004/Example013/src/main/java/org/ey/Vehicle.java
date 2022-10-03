package org.ey;

import org.springframework.stereotype.Component;

@Component
public class Vehicle {
    private String name;

    /**
     * Setter
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * Getter
     */
    public String getName() {
        return name;
    }
}
