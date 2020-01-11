package com.xdl.dao.impl;

import com.xdl.dao.tableDao;
import com.xdl.entity.table;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class TableDaoImol implements tableDao {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<table> getTable() {
        String sql="select * from tables";
        RowMapper<table> rowMapper=new BeanPropertyRowMapper<table>(table.class);
        List<table> tables =jdbcTemplate.query(sql,rowMapper);
        System.out.println("user:"+tables);
        return tables;
    }

    @Override
    public List<table> getTableCount(int page, int pageSize) {
        int start = (page-1)*pageSize;
        String sql = "select *from tables limit "+start+" ,?";
        RowMapper<table> rowMapper=new BeanPropertyRowMapper<table>(table.class);
        List<table> tables = jdbcTemplate.query(sql, rowMapper,pageSize);
        return tables;
    }

    @Override
    public int delTable(int id) {
        String sql = "delete from tables where id=?";
        int result=jdbcTemplate.update(sql,id);
        return result;
    }

    @Override
    public table getTable(int id) {
        System.out.println("id="+id);
        String sql = "select * from tables where id=?";
        RowMapper<table> rowMapper=new BeanPropertyRowMapper<table>(table.class);
        table tables= jdbcTemplate.queryForObject(sql, rowMapper,id) ;
        System.out.println("tables:"+tables);
        return tables;
    }

    @Override
    public int editTable(table tb) {
        String sql = "update tables set name=?,phone=?,address=?,bbs=? where id=?";
        int result = jdbcTemplate.update(sql,tb.getName(),tb.getPhone(),tb.getAddress(),tb.getBbs(),tb.getId());
        System.out.println(tb);
        System.out.println("修改成功");
        return result;
    }

    @Override
    public int addTable(table tb) {
        String sql = "insert into tables values (?,?,?,?,?)";
        int result =jdbcTemplate.update(sql,tb.getId(),tb.getName(),tb.getPhone(),tb.getAddress(),tb.getBbs());
        System.out.println("插入成功");
        return result;
    }

    @Override
    public int regTable(String name, String phone, String address, String bbs) {
        String sql = "insert into tables(name,phone,address,bbs) values (?,?,?,?);";
        int result = 0;
        try {
            result = jdbcTemplate.update(sql, name,phone,address,bbs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
