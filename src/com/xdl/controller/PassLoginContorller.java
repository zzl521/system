package com.xdl.controller;

import com.xdl.entity.Books;
import com.xdl.entity.Students;
import com.xdl.entity.table;
import com.xdl.service.BookService;
import com.xdl.service.StudentsService;
import com.xdl.service.tableService;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("Pass/")
public class PassLoginContorller {

    @Autowired
    StudentsService studentsService;
    @Autowired
    tableService tbService;
    @Autowired
    BookService bookService;

    @ResponseBody
    @RequestMapping(value = "getUser")
    public Map<String, String> getUser(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

        Map<String, String> data = new HashMap<String, String>();

        try {
            System.out.println(1);

            String name = request.getParameter("name");
            String password = request.getParameter("password");
            password = DigestUtils.md5Hex(password); //md5不会影响sql执行的解雇
            System.out.println("username:" + name);
            System.out.println("password:" + password);
            Students students = studentsService.login(name, password);
            List<Books> book=bookService.getBooks();
            session.setAttribute("books",book);
            String sID=request.getSession().getId();
            Cookie cookie =new Cookie("books",sID);
            cookie.setMaxAge(60*60*24*7);
            response.addCookie(cookie);
            System.out.println("user:" + students);
            if (students != null) {
                if (students.getName().equals(name) || students.getPassword().equals(password)) {
                    //登陆成功
                    session.setAttribute("user", students);
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                    data.put("msg", "1");
                }
            } else {
                response.setContentType("text/html;charset=UTF-8");
                //登录失败
                response.sendRedirect("/WebSafty/LoginError.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }


    @ResponseBody
    @RequestMapping(value = "regUser")
    public Map<String, String> regUser(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
        Map<String, String> data = new HashMap<String, String>();
        try {
            System.out.println(1);
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            password = DigestUtils.md5Hex(password);
            System.out.println("username:" + name);
            System.out.println("password:" + password);
            int result = studentsService.regUser(name, password, phone, email);
            System.out.println("result:" + result);
            if(result==1) //result==1表示执行sal成功!
            {
                response.sendRedirect("/WebSafty/regUserSuccessful.jsp");
            }
            else
            {
                response.sendRedirect("/WebSafty/404.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


}




