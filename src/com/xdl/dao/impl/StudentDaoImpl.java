package com.xdl.dao.impl;
 
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate; 
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.xdl.dao.StudentsDao;
import com.xdl.entity.Students; 
@Repository
public class StudentDaoImpl implements StudentsDao {
		
	@Autowired
	JdbcTemplate jdbcTemplate;
		
 
	@Override
	//获取列表数据
	public List<Students> getStudents() {  
			String sql = "select * from students";
			RowMapper<Students> rowMapper=new BeanPropertyRowMapper<Students>(Students.class);
			List<Students> students = jdbcTemplate.query(sql, rowMapper);
			System.out.println(students);
			return students; 
	}
	//删除行数据
	
	@Override
	public int delStudents(int id) { 
		String sql = "delete from students where id=?";
		int result=jdbcTemplate.update(sql,id);
		return result;
	}

	@Override
	public Students getStudent(int id) {
		System.out.println("id="+id);
		String sql = "select * from students where id=?";
		RowMapper<Students> rowMapper=new BeanPropertyRowMapper<Students>(Students.class);
		Students students = jdbcTemplate.queryForObject(sql, rowMapper,id) ;
		System.out.println("Students:"+students); 
		return students;  
	}

	@Override
	public int editStudent(Students student) {
		String sql = "update students set name=?,password=?,phone=?,email=? where id=?";
		int result = jdbcTemplate.update(sql,student.getName(),student.getPassword(),student.getPhone(),student.getEmail(),student.getId());
		return result;
	}

	@Override
	public int addStudent(Students student) {
		String sql = "insert into students values (?,?,?,?,?)";
		int result =jdbcTemplate.update(sql,student.getId(),student.getName(),student.getPassword(),student.getPhone(),student.getEmail());
		return result;
	}

	@Override
	public List<Students> getStudentsCount(int page, int pageSize) {
		int start = (page-1)*pageSize;
		String sql = "select *from students limit "+start+" ,?";
		RowMapper<Students> rowMapper=new BeanPropertyRowMapper<Students>(Students.class);
		List<Students> students = jdbcTemplate.query(sql, rowMapper,pageSize); 
		return students; 
	}


	//验证登录
	@Override
	public Students  getUser(String name, String password) {
		RowMapper<Students> rowMapper=new BeanPropertyRowMapper<Students>(Students.class);
		String sql = "select * from students where name=? and password=?";
		Students students ;

		try {
			students= jdbcTemplate.queryForObject(sql, rowMapper, name, password);
			System.out.println(students);
		} catch (Exception e) {
			return null;
		}
		System.out.println("user:"+students);
		return students;
	}

	@Override
	public int regUser(String name, String password, String phone, String email) {
		String sql = "INSERT INTO students(name,password,phone,email) VALUES (?,?,?,?);";
		int result = 0;
		try {
			result = jdbcTemplate.update(sql, name, password,phone,email);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}


}
