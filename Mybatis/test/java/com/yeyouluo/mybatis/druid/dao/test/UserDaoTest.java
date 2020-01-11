package com.yeyouluo.mybatis.druid.dao.test;

import java.util.List;

import com.yeyouluo.mybatis.druid.dao.IUserDao;
import com.yeyouluo.mybatis.druid.dao.impl.UserDao;
import com.yeyouluo.mybatis.druid.pojo.User;

public class UserDaoTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		IUserDao userDao = new UserDao();
		List<User> users= userDao.findAllUsers();
		//System.out.println(users);
		for(User user : users){
			System.out.println(user.toString());

		//userDao.DeleteUser();
		}
	}

}
