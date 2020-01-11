package com.xdl.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.xdl.dao.UserDao;
import com.xdl.entity.User;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	

	 
	@Override
	public User getUserName(String username) { 
		
		RowMapper<User> rowMapper=new BeanPropertyRowMapper<>(User.class);
		String sql = "select * from user where username=?";
		User user;
		try { 
			user  = jdbcTemplate.queryForObject(sql, rowMapper, username);
			System.out.println("user:"+user);
		} catch (Exception e) {
			return null;
		}
		System.out.println("user:"+user);
		return user;
	}
	
	public User getUser(String username, String password) { 
		RowMapper<User> rowMapper=new BeanPropertyRowMapper<>(User.class);
		String sql = "select * from user where username=? and password=?";
		User user;
		try {
			user = jdbcTemplate.queryForObject(sql, rowMapper, username, password);
		} catch (Exception e) {
			return null;
		}
		System.out.println("user:"+user);
		return user;
	}
 
	@Override
	public int regUser(String username, String password) {
		String sql = "INSERT INTO user(username,password) VALUES (?,?);";
		int result = 0;
		try {
		    result = jdbcTemplate.update(sql, username, password);
		} catch (Exception e) {
			return 0;
		}
		System.out.println("result:"+result);
		return result;
	}
	
	
	public int changePwd(String username, String password,String repassword) {  
		String sql = "update user set password=? where username=? and password=?";
		int result = 0;
		try {
		    result = jdbcTemplate.update(sql,repassword, username, password);
		} catch (Exception e) {
			return 0;
		}
		System.out.println("result:"+result);
		return result;
	}

	@Override
	public int uploadPic(String picUrl, String username) {
		String sql = "update user set picture=? where username=?";
		int result = 0;
		try {
		    result = jdbcTemplate.update(sql,picUrl, username);
		} catch (Exception e) {
			return 0;
		}
		System.out.println("result:"+result);
		return result;
	}

	@Override
	public User editUser(User user) {
		String sql = "update user set sex=?,phone=?,email=? where username=?";
		int result = 0;
		try {
		    result = jdbcTemplate.update(sql,user.getSex(), user.getPhone(),user.getEmail(),user.getUsername());
		} catch (Exception e) {
			result = 0;
		}
		User newUser = null;
		if(result>0) {
			RowMapper<User> rowMapper=new BeanPropertyRowMapper<>(User.class);
			String sql1 = "select * from user where username=?";
			
			try {
				newUser = jdbcTemplate.queryForObject(sql1, rowMapper, user.getUsername());
			} catch (Exception e) {
				return null;
			}
			System.out.println("newUser"+newUser);
			return newUser;
		}
		System.out.println("result:"+result);
		return newUser;
	}

	

	
}
