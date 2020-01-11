package com.xdl.controller;

import com.xdl.entity.table;
import com.xdl.service.tableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("table/")
public class TableController {
    @Autowired
    tableService tbService;
    @ResponseBody
    @RequestMapping(value = "addTable")
    public Map<String,String> addTable(table tb) throws IOException {
        int result = tbService.addTable(tb);
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
    @RequestMapping(value = "del")
    public Map<String,String> Table(int id) throws IOException{
        int result = tbService.delTable(id);
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
    @RequestMapping(value = "editTable")
    public Map<String,String> editTable(table tb) throws IOException{
        int result = tbService.editTable(tb);
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
    public String editBooks(int id, int toolSceneId, HttpServletRequest request) throws IOException{
        System.out.println("seach:");
        System.out.println("toolSceneId="+toolSceneId);
        table tb = tbService.geTable(id);
        request.setAttribute("TB", tb);
        return "studentEdit";
    }
    @ResponseBody
    @RequestMapping(value = "table")
    public Map<String,Object> showTable(int page, int limit) throws IOException{
        List<table> tables = tbService.getTable();
        List<table> table = tbService.getTableCount(page,limit);

        Map<String,Object> tableData =new HashMap<String,Object>();
        tableData.put("code", 0);
        tableData.put("msg", "");
        tableData.put("count", tables.size());
        tableData.put("data", table);
        //System.out.println("tableData:"+tableData);
        return tableData;

    }

    @ResponseBody
    @RequestMapping(value = "reliable")
    public Map<String, String> reliable(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
        Map<String, String> data = new HashMap<String, String>();
        try {
            System.out.println(1);
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String bbs = request.getParameter("bbs");
            System.out.println("接收到表单数据"+name+" "+phone+" "+address+" "+bbs);
            int result = tbService.regTable(name, phone, address, bbs);
            System.out.println("result:" + result);
            if (result==1)
            {
                response.sendRedirect("/Alipay/index.jsp");
//                request.getRequestDispatcher("/Alipay/index.jsp").forward(request, response);
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
