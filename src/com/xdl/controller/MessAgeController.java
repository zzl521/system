package com.xdl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static com.Message.PhoneCode.getPhonemsg;

@Controller
@RequestMapping("Mes/")
public class MessAgeController {
    @ResponseBody
    @RequestMapping(value = "getCode")
    public void getCode(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {

        String telephone=request.getParameter("phoneNumber");
        String get=getPhonemsg(telephone);
        if (get.equals("true")){
            System.out.println(1);
            response.sendRedirect("http://z.ahdy.top/");
        }else {
            System.out.println(0);
            response.sendRedirect("/WebSafty/404.jsp");
        }
    }

}
