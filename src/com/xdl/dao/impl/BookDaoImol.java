package com.xdl.dao.impl;

import com.xdl.dao.BooksDao;
import com.xdl.entity.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class BookDaoImol implements BooksDao {
    @Autowired
    JdbcTemplate jdbcTemplate;
    @Override
    public List<Books> getBooks() {
        String sql="select * from books";
        RowMapper<Books> rowMapper=new BeanPropertyRowMapper<Books>(Books.class);
        List<Books> books =jdbcTemplate.query(sql,rowMapper);
        System.out.println("user:"+books);
        return books;
    }

    @Override
    public List<Books> getBooksCount(int page, int pageSize) {

        int start = (page-1)*pageSize;
        String sql = "select *from books limit "+start+" ,?";
        RowMapper<Books> rowMapper=new BeanPropertyRowMapper<Books>(Books.class);
        List<Books> books = jdbcTemplate.query(sql, rowMapper,pageSize);
        return books;
    }

    @Override
    public int delBooks(int id) {

        String sql = "delete from books where id=?";
        int result=jdbcTemplate.update(sql,id);
        return result;
    }

    @Override
    public Books getBooks(int id) {
        System.out.println("id="+id);
        String sql = "select * from books where id=?";
        RowMapper<Books> rowMapper=new BeanPropertyRowMapper<Books>(Books.class);
        Books books= jdbcTemplate.queryForObject(sql, rowMapper,id) ;
        System.out.println("Books:"+books);
        return books;
    }

    @Override
    public int editBooks(Books books) {
        String sql = "update books set name=?,writer=?,price=?,company=?,picture=? where id=?";
        int result = jdbcTemplate.update(sql,books.getName(),books.getWriter(),books.getPrice(),books.getCompany(),books.getPrice(),books.getId());
        System.out.println(books);
        System.out.println("修改成功");
        return result;
    }

    @Override
    public int addBooks(Books books) {
        String sql = "insert into books values (?,?,?,?,?,?)";
        int result =jdbcTemplate.update(sql,books.getId(),books.getName(), books.getWriter(),books.getPrice(),books.getCompany(),books.getPrice());
        System.out.println("插入成功");
        return result;
    }



}
