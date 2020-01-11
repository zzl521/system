package com.xdl.entity;

public class Books {
    int id;
  String name;
  String writer;
 String price;
 String company;
 String picture;

    public Books() {
        super();
    }
    public Books(String name, String writer, String price, String company,String picture ) {
        super();
      this.name=name;
      this.writer=writer;
      this.price=price;
      this.company=company;
      this.picture=picture;

    }
    public Books(int id, String name, String writer, String price, String company,String picture ) {
        super();
        this.id=id;
        this.name=name;
        this.writer=writer;
        this.price=price;
        this.company=company;
        this.picture=picture;
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

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "Books{" +
                "id=" + id +
                ", booknmae='" + name + '\'' +
                ", writer='" + writer + '\'' +
                ", price='" + price + '\'' +
                ", peruse='" + company + '\'' +
                ", picture='" + picture + '\'' +
                '}';
    }
}
