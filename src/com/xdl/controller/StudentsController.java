package com.xdl.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.xdl.entity.Students;
import com.xdl.service.StudentsService;

@Controller
@RequestMapping("students/")
public class StudentsController {
	
	@Autowired
	StudentsService studentsService;

	@ResponseBody
	@RequestMapping(value = "addStudent")
	public Map<String,String> addStudent(Students student) throws IOException{
		int result = studentsService.addStudent(student);
		Map<String,String> data =new HashMap<String,String>();
		if(result>0){
			data.put("msg", "1"); 
		}else{
			data.put("msg", "0"); 
		}
		
		 System.out.println("data:"+data);
	    return data;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "editStudent")
	public Map<String,String> editStudent(Students student) throws IOException{
		int result = studentsService.editStudent(student);
		Map<String,String> data =new HashMap<String,String>();
		if(result>0){
			data.put("msg", "1"); 
		}else{
			data.put("msg", "0"); 
		}
		
		System.out.println("data:"+data);
	    return data;
	}
	@RequestMapping(value = "search")
	public String editStudents(int id,int toolSceneId,HttpServletRequest request) throws IOException{
		System.out.println("seach:");
		System.out.println("toolSceneId="+toolSceneId);
		Students student = studentsService.getStudent(id);
		request.setAttribute("student", student);
		return "studentEdit";
	}
	@ResponseBody
	@RequestMapping(value = "del")
	public Map<String,String> delStudents(int id) throws IOException{
		int result = studentsService.delStudents(id);
		Map<String,String> data =new HashMap<String,String>();
		if(result>0){
			data.put("msg", "0"); 
		}else{
			data.put("msg", "1"); 
		}
		
		//System.out.println("data:"+data);
	    return data;
	}
	
	@ResponseBody
	@RequestMapping(value = "students")
	public Map<String,Object> showStudents(int page, int limit) throws IOException{
		List<Students> students = studentsService.getStudents();
		List<Students> student = studentsService.getStudentsCount(page,limit); 
		
		Map<String,Object> tableData =new HashMap<String,Object>();
		tableData.put("code", 0);
		tableData.put("msg", "");
		tableData.put("count", students.size());
		tableData.put("data", student);
		//System.out.println("tableData:"+tableData);
	    return tableData;
		 
	    }
}
