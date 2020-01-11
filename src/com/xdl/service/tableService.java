package com.xdl.service;

import com.xdl.dao.tableDao;
import com.xdl.entity.table;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class tableService {
    @Autowired
    tableDao tbDao;
    public List<table> getTable() {

        return tbDao.getTable();
    }
    public int delTable(int id){

        return tbDao.delTable(id);
    }

    public table geTable(int id) {

        return tbDao.getTable(id);
    }

    public int editTable(table tb) {
        return tbDao.editTable(tb);
    }

    public int addTable(table tb) {
        return tbDao.addTable(tb);
    }

    public List<table> getTableCount(int page, int pageSize) {

        return tbDao.getTableCount(page,pageSize);
    }
    public int regTable(String name,String phone,String address,String bbs){
        return tbDao.regTable(name,phone,address,bbs);
    }
}
