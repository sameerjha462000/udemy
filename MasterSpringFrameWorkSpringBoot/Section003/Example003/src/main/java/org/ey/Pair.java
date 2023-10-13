package org.ey;

public class Pair {
    private int first;
    private int second;

    Pair(){}
    Pair(int first, int second){
        this.first = first;
        this.second = second;
    }

    @Override
    public String toString() {
        return "<" + this.first + ", " + this.second + ">";
    }
}
