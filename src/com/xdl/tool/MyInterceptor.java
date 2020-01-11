package com.xdl.tool;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.xdl.entity.User;

public class MyInterceptor extends HandlerInterceptorAdapter{
	 public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if(user==null){
			response.sendRedirect(request.getContextPath()+"/jsp/login.jsp");
			System.out.println(request.getContextPath()+"/jsp/login.jsp");
			return false;
		}
		return true;
	 }
}
