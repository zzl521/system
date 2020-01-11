package com.xdl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xdl.dao.StudentsDao;
import com.xdl.entity.Students;
@Service
public class StudentsService {
		@Autowired
		StudentsDao studentsDao;
		
		public List<Students> getStudents() { 
			 
			return studentsDao.getStudents();
		}
	public Students login(String username, String password) {
		return studentsDao.getUser(username, password);
	}
		public int delStudents(int id){

			return studentsDao.delStudents(id);
		}

		public Students getStudent(int id) { 

			return studentsDao.getStudent(id);
		}

		public int editStudent(Students student) {
			return studentsDao.editStudent(student);
		}

		public int addStudent(Students student) { 
			return studentsDao.addStudent(student);
		}

		public List<Students> getStudentsCount(int page, int pageSize) {
			
			return studentsDao.getStudentsCount(page, pageSize);
		}
		public int regUser(String name,String password,String phone,String email){
			return studentsDao.regUser(name,password,phone,email);
		}
}
