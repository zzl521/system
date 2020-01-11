package com.xdl.entity;

public class table {

    int id;
    String name;
    String phone;
    String address;
    String bbs;
    public table() {
        super();
    }
    public table(String name, String phone, String address, String bbs ) {
        super();
        this.name=name;
        this.phone=phone;
        this.address=address;
        this.bbs=bbs;


    }
    public table(int id, String name, String phone, String address, String bbs ) {
        super();
        this.id=id;
        this.name=name;
        this.phone=phone;
        this.address=address;
        this.bbs=bbs;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBbs() {
        return bbs;
    }

    public void setBbs(String bbs) {
        this.bbs = bbs;
    }

    @Override
    public String toString() {
        return "table{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", bbs='" + bbs + '\'' +
                '}';
    }
}
