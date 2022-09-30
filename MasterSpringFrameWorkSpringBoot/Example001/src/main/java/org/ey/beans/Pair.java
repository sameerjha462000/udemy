package org.ey.beans;

public class Pair {

    private int first;
    private int second;

    public Pair(){}
    public Pair(int first, int second){
        this.first = first;
        this.second = second;
    }

    public void setFirst(int first){
        this.first = first;
    }

    public void setSecond(int second){
        this.second = second;
    }

    public int getFirst(){
        return this.first;
    }

    public int getSecond(){
        return this.second;
    }

    @Override
    public String toString(){
        return "<" + first + ", " + second + ">";
    }
}
