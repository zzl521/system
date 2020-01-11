package com.xdl.service;
 

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service;

import com.xdl.dao.UserDao;
import com.xdl.entity.User;

@Service
public class UserService {
	@Autowired
	UserDao userDao;
	
	 
	public User getUserName(String username) {  
		return userDao.getUserName(username);
	}
	
	public User login(String username, String password) {  
		return userDao.getUser(username, password);
	}

	 

	public User getOldPwd(String username, String oldpwd) { 
		return userDao.getUser(username, oldpwd);
	}



	public int changePwd(String username, String oldPassword, String repassword) {
		 
		return userDao.changePwd(username,oldPassword,repassword);
	}



	public int uploadPic(String picUrl, String username) {
		// TODO Auto-generated method stub
		return  userDao.uploadPic(picUrl, username);
	}



	public User editUser(User user) {
		 
		return userDao.editUser(user);
	}

	public int regUser(String username, String password) { 
		return userDao.regUser(username, password) ;
	}



	 

}
