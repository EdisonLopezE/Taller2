package com.bank;

public class User {

	private int key;
    private String name;
    private int id;
    private double money;


    public User(int key, String name, int id, double money){
        this.key = key;
        this.name = name;
        this.id = id;
        this.money = money;
    }
    public int getKey() {
        return key;
    }
    public void setKey(int key) {
        this.key = key;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public double getMoney() {
        return money;
    }
    public void setMoney(double money) {
        this.money = money;
    }

    @Override
    public String toString() {
        return "User [key="+key+", name=" + name + ", id=" + id + ", money=" + money + "]";
    }

}
