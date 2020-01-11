package com.yeyouluo.mybatis.druid.pojo;
//创建Pojo类
public class User {

    private String UserName;
    //用户名
    private  String PassWord;
    //密码
    public String Email;
    //电子邮箱
    public String TelePhone;
    //电话号码
    public int Boss;
    //内置属性，用与判断是否为超级管理员的依据

//以下生成get ， set方法 用于数据过滤
    public String getUserName() {
        return UserName;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }

    public String getPassWord() {
        return PassWord;
    }

    public void setPassWord(String passWord) {
        PassWord = passWord;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getTelePhone() {
        return TelePhone;
    }

    public void setTelePhone(String telePhone) {
        TelePhone = telePhone;
    }

    public int getBoss() {
        return Boss;
    }

    public void setBoss(int boss) {
        Boss = boss;
    }


    @Override
    public String toString() {
        return "User{" +
                "UserName='" + UserName + '\'' +
                ", PassWord='" + PassWord + '\'' +
                ", Email='" + Email + '\'' +
                ", TelePhone='" + TelePhone + '\'' +
                ", Boss=" + Boss +
                '}';
    }

}
