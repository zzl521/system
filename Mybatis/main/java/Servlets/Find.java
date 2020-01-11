package Servlets;

import com.yeyouluo.mybatis.druid.dao.IUserDao;
import com.yeyouluo.mybatis.druid.dao.impl.UserDao;
import com.yeyouluo.mybatis.druid.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet("/Find")
public class Find extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
       response.setCharacterEncoding("utf-8");
       response.setContentType("application/json; charset=utf-8");
     //  String id=request.getParameter("pno");
        IUserDao userDao = new UserDao();
        String data = "{";
        List<User> users= userDao.findAllUsers();
        for (int i=0;i<users.size();i++)
        {
            data +="\":"+"\""+users.get(i);
        }
        data = data.substring(0, data.length()-1);
        data += "}";
        System.out.println(data);
        response.getWriter().write(data);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
