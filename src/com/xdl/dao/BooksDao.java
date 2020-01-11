package com.xdl.dao;

import com.xdl.entity.Books;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface BooksDao {
    public List<Books> getBooks();
    public List<Books> getBooksCount(int page, int pageSize);

    int delBooks(int id);

    public Books getBooks(int id);

    public int editBooks(Books books);

    public int addBooks(Books book);


}
