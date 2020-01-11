package com.yeyouluo.mybatis.druid.dao;

import java.util.List;

import com.yeyouluo.mybatis.druid.pojo.User;
//定义接口，接口方法的实现需要子类继承与接口类，并重写接口内方法。
public interface IUserDao {
	//CURD的基本操作
	public List<User> findAllUsers();
	public List<User> UpdataUsers();
	public List<User> InsertUser();
	public List<User> DeleteUser();

}
