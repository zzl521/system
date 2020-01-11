package com.yeyouluo.mybatis.druid.utils;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtil {
	private static final String configFile = "mybatis-config.xml";
	//这里定义的configfile是存在于resource文件下的xml文件，该文件主要作用是Mybatis加载durid连接池配置文件，我理解的就是整合吧
	/**
	 * 创建连接
	 */
	public static SqlSession getSession() {
		SqlSession session = null;
		//创建sqlsession对象
		try {
			InputStream is = Resources.getResourceAsStream(configFile);
			//inputStream,IO流，应该是读取配置文件内容
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			//SqlSessionFactory是创建SqlSession的工厂，这俩个类都是Mybatis的核心对象
			session = factory.openSession();
			//打开
		} catch (Exception e) {
			e.printStackTrace();
		}
		return session;
		//返回session 连接
	}

	public static void closeSession(SqlSession session) {
		session.close();
		//关闭连接
	}

	public static void main(String[] args) {
		//到这一步写了一个测试类，测试是否能够得到连接，目的为了减少bug的积累
		SqlSession session = MyBatisUtil.getSession();
		System.out.println(session);
		session.close();
	}
}
