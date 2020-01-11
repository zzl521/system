package com.xdl.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
 
import com.xdl.entity.User;
import com.xdl.service.UserService;
import com.xdl.tool.VerifyCodeTool;
 
@Controller
@RequestMapping("layuiadmin/")
public class UserController {

	@Autowired
	UserService userService;
	
	@ResponseBody
	@RequestMapping(value = "getUserName")
	public Map<String,String> regUser(String username, HttpServletRequest request, HttpServletResponse response,HttpSession session){
	
		User user = userService.getUserName(username);
		System.out.println("getUserName "+user);
		Map<String,String> data =new HashMap<String,String>();
	 	if(user==null){ 
	 		data.put("code", "0");
		}else{  
			data.put("code", "1");
		}  
	 	System.out.println("data "+data);
        return data;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "regUser")
	public Map<String,String> regUser(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException{
		Map<String,String> data = new HashMap<String,String>(); 
		 try{
			System.out.println(1);
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String agreement = request.getParameter("agreement");
			password = DigestUtils.md5Hex(password);
			System.out.println("username:"+username);
			System.out.println("password:"+password);
			String code = request.getParameter("vercode");
			String cnt = session.getAttribute("code").toString();
			System.out.println("cnt:"+cnt);
			System.out.println(code.equals(cnt));
			if(code.equals(cnt)){
				if (agreement == null){ 
					data.put("msg", "2");
				}else{
					int result = userService.regUser(username,password);
					System.out.println("result:"+result); 
					if(result==0){  
						data.put("msg", "0");
					}else{
						data.put("msg", "1");
					}
				} 
			}else{
				data.put("msg", "3");
			} 
		}catch(Exception e){
			data.put("msg", "0");
		}
		 System.out.println("data:"+data);
		return data;
	}
	

	
	@ResponseBody
	@RequestMapping(value = "editUser")
	public Map<String,String> editUser(User user, HttpServletRequest request, HttpServletResponse response,HttpSession session){
	
		User newUser = userService.editUser(user);
		Map<String,String> data =new HashMap<String,String>();
	 	if(newUser!=null){
	 		session.setAttribute("user", newUser);
	 		data.put("msg", "1");
		}else{  
			data.put("msg", "0");
		}  
        return data;
	}
	
	@ResponseBody
	@RequestMapping(value = "uploadPic")
	public Map<String,String> uploadPic(String picUrl, HttpServletRequest request, HttpServletResponse response,HttpSession session){
		User sessionUser = (User) session.getAttribute("user");
		String username = sessionUser.getUsername();
		String fileName = null;
			DiskFileItemFactory fileItemFactory =new DiskFileItemFactory();
			ServletFileUpload sfu = new ServletFileUpload(fileItemFactory);
			try {
				List<FileItem> items = sfu.parseRequest(request);
				for (FileItem item : items) {
					if (item.isFormField()) {
						System.out.println(item.getFieldName()+":"+item.getString());
					} else {
						System.out.println(item.getFieldName());
						String realPath = request.getServletContext().getRealPath("data");
						System.out.println(realPath); 
						fileName = System.currentTimeMillis()+"_"+item.getName();
						File file =new File(realPath+File.separator+fileName);
						item.write(file);  
						//request.setAttribute("picture", "data"+"/"+fileName);
					}
				} 
			} catch (Exception e) {
				 e.printStackTrace();
			}
		picUrl = "data/"+fileName;
		int result = userService.uploadPic(picUrl, username);
		Map<String,String> data =new HashMap<String,String>();
	 	if(result>0){
	 		data.put("msg", "1");
		}else{  
			data.put("msg", "0");
		}  
    return data;
	}
	 
	@ResponseBody
	@RequestMapping(value = "getOldPwd")
	public Map<String,String> getOldPwd(String oldpwd, HttpSession session, HttpServletResponse response) throws IOException{
		User sessionUser = (User) session.getAttribute("user");
		String username = sessionUser.getUsername();
		oldpwd = DigestUtils.md5Hex(oldpwd); 
		User user = userService.getOldPwd(username,oldpwd);
		
		Map<String,String> data =new HashMap<String,String>();
		 	if(user!=null){
		 		data.put("msg", "1");
			}else{  
				data.put("msg", "0");
			}  
	    return data;
	  
	}
	
	@ResponseBody
	@RequestMapping(value = "changePwd")
	public Map<String,String> changePwd( String oldPassword,String repassword, HttpSession session) throws IOException{
		User sessionUser = (User) session.getAttribute("user");
		String username = sessionUser.getUsername();
		oldPassword = DigestUtils.md5Hex(oldPassword);
		repassword = DigestUtils.md5Hex(repassword); 
		int result = userService.changePwd(username,oldPassword,repassword);
		Map<String,String> data =new HashMap<String,String>();
	 	if(result>0){
	 		data.put("msg", "0"); 
		}else{  
			data.put("msg", "1");
		}  
	 	return data; 
	}
	
	
	
	@RequestMapping(value = "loginout")
	public String userLoginOut(HttpSession session){
        session.invalidate(); 
        return "login";
	}
	
	@ResponseBody
	@RequestMapping(value = "login")
	public Map<String,String> userLogin(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException{
		Map<String,String> data = new HashMap<String,String>(); 
		try{
			System.out.println(1);
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String remember = request.getParameter("remember");
			password = DigestUtils.md5Hex(password);
			System.out.println("username:"+username);
			System.out.println("password:"+password);
			String code = request.getParameter("vercode");
			String cnt = session.getAttribute("code").toString();
			System.out.println("cnt:"+cnt);
			System.out.println(code.equals(cnt));
			
			if(code.equals(cnt)){
				User user = userService.login(username,password);
				System.out.println("user:"+user); 
				if(!user.getUsername().equals(username) || !user.getPassword().equals(password)){  
					data.put("msg", "2");
				}else{
					 
					if (remember != null) {
						String flag=request.getParameter("remember");
						System.out.println("flag:"+flag);
						if(flag!= null){
						//把对象存入cookie中
						Cookie cookieName=new Cookie("username", username);
						Cookie cookiePassword=new Cookie("password", password);
						System.out.println("request.getContextPath()"+request.getContextPath());
						cookieName.setPath(request.getContextPath());	
						cookiePassword.setPath(request.getContextPath());	
						cookieName.setMaxAge(60*60);//只保存一分钟 
						cookiePassword.setMaxAge(60*60);//只保存一分钟 
						response.addCookie(cookieName);
						response.addCookie(cookiePassword);
						}	else{
							 Cookie cookies[] = request.getCookies();
							if (cookies != null) {
								for (int i = 0; i < cookies.length; i++) {
									cookies[i].setValue("");
								cookies[i].setMaxAge(0);
								response.addCookie(cookies[i]);}
							}
						}
					}	 
					//登录成功
					session.setAttribute("user", user);
					data.put("msg", "1");
				}
			}else{
				data.put("msg", "3");
			} 
		}catch(Exception e){
			data.put("msg", "2");
		}
		return data;
	}

	@RequestMapping("verifyCode")
	public void verifyCode(HttpServletResponse response, HttpSession session) throws Exception {
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("image/jpeg");

		String verifyCode = VerifyCodeTool.generateVerifyCode(4);
		session.setAttribute("code", verifyCode);
		VerifyCodeTool.outputImage(105, 46, response.getOutputStream(), verifyCode);
	}
	 
	
}
