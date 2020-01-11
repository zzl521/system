package com.xdl.controller;

import com.xdl.entity.Books;
import com.xdl.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("books/")
public class BooksController {
    @Autowired
    BookService bookService;
    @ResponseBody
    @RequestMapping(value = "addBook")
    public Map<String,String> addStudent(Books books) throws IOException {
        int result = bookService.addbooks(books);
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
    public Map<String,String> Books(int id) throws IOException{
        int result = bookService.delbooks(id);
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
    @RequestMapping(value = "editBooks")
    public Map<String,String> editBooks(Books books) throws IOException{
        int result = bookService.editbooks(books);
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
        Books books = bookService.getbook(id);
        request.setAttribute("Books", books);
        return "studentEdit";
    }
@ResponseBody
@RequestMapping(value = "book")
public Map<String,Object> showbooks(int page, int limit) throws IOException{
    List<Books> Books = bookService.getBooks();
    List<Books> Book = bookService.getBooksCount(page,limit);

    Map<String,Object> tableData =new HashMap<String,Object>();
    tableData.put("code", 0);
    tableData.put("msg", "");
    tableData.put("count", Books.size());
    tableData.put("data", Book);
    //System.out.println("tableData:"+tableData);
    return tableData;

}
}
