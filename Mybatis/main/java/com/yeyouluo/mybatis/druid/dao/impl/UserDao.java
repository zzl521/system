package com.yeyouluo.mybatis.druid.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yeyouluo.mybatis.druid.dao.IUserDao;
import com.yeyouluo.mybatis.druid.pojo.User;
import com.yeyouluo.mybatis.druid.utils.MyBatisUtil;

public class UserDao implements IUserDao {

	private static final String namespace = "com.yeyouluo.mybatis.druid.dao.userDao.";
	
	@Override
	public List<User> findAllUsers() {
		List<User> users = null;
		//创建泛型链表，类型User，数据为空
		SqlSession session = MyBatisUtil.getSession();
		//获取 MyBatisUtil连接池，并建立会话。
		try {
			users = session.selectList(namespace + "findAllUsers", User.class);
			//这里selectLlist当中参数来源于Xml配置文件。
			//注意：此处有陷阱，如果做了更新、插入或删除操作，必须使用：
			//session.commit();
		} catch (Exception e) {
			//捕获异常，该异常类型为Object，可抓取所有类型异常
			e.printStackTrace();
		}finally{
			MyBatisUtil.closeSession(session);
			//在finally当中，通常是关闭连接，但数据库连接池依然存在，只是将连接放回了池子
		}
		return users;
	}

	@Override
	public List<User> UpdataUsers() {
		List<User> users=null;
		SqlSession session =MyBatisUtil.getSession();
		try {
			users=session.selectList(namespace+"DeleteUser",User.class);
			session.commit();

		}catch (Exception e)
		{
			e.printStackTrace();
		}
		finally {
			MyBatisUtil.closeSession(session);
		}
		return null;
	}

	@Override
	public List<User> InsertUser() {
		return null;
	}

	@Override
	public List<User> DeleteUser() {
		List<User> users=null;
		SqlSession session =MyBatisUtil.getSession();
		try {
			users=session.selectList(namespace+"DeleteUser",User.class);
			//session.commit();

		}catch (Exception e)
		{
			e.printStackTrace();
		}
		finally {
			MyBatisUtil.closeSession(session);
		}
		return users;

	}

}
