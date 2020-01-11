package com.xdl.dao;

import com.xdl.entity.table;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface tableDao {
    public List<table> getTable();
    public List<table> getTableCount(int page, int pageSize);

    int delTable(int id);

    public table getTable(int id);

    public int editTable(table tb);

    public int addTable(table tb);
    public int regTable(String name, String phone,String address,String bbs);

}
