package com.xdl.service;

import com.xdl.dao.BooksDao;
import com.xdl.entity.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BookService {
    @Autowired
    BooksDao booksDao;
    public List<Books> getBooks() {

        return booksDao.getBooks();
    }
    public int delbooks(int id){

        return booksDao.delBooks(id);
    }

    public Books getbook(int id) {

        return booksDao.getBooks(id);
    }

    public int editbooks(Books books) {
        return booksDao.editBooks(books);
    }

    public int addbooks(Books books) {
        return booksDao.addBooks(books);
    }

    public List<Books> getBooksCount(int page, int pageSize) {

        return booksDao.getBooksCount(page,pageSize);
    }
}
