package org.ey;

public class Pair {
    private int first;
    private int second;

    /**
     * Constructor
     */
    Pair(){
        // System.out.println(1);
    }
    Pair(int first, int second){
        // System.out.println(2);
        this.first = first;
        this.second = second;
    }
    Pair(Pair other){
        // System.out.println(3);
        this.first = other.first;
        this.second = other.second;
    }

    /**
     * Setters
     */

    public void setFirst(int first){
        // System.out.println(4);
        this.first = first;}
    public void setSecond(int second){
        // System.out.println(5);
        this.second = second;}

    /**
     * Getters
     */

    public int getFirst(){return this.first;}
    public int getSecond(){return this.second;}

    /**
     * toString()
     */
    public String toString(){
        return "<" + this.first + ", " + this.second + ">";
    }
}
