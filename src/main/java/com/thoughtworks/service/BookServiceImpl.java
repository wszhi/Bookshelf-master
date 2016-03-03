package com.thoughtworks.service;

import com.thoughtworks.dao.BookDao;
import com.thoughtworks.model.Book;

import java.util.List;

/**
 * Created by Administrator on 2016/2/27.
 */
public class BookServiceImpl implements BookService {
    private BookDao bookDao;

    public BookDao getBookDao() {
        return bookDao;
    }
    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }


    @Override
    public void deleteByPrimaryKey(Integer id) {
        bookDao.deleteByPrimaryKey(id);
    }

    @Override
    public void insertAllField(Book book) {
        bookDao.insertAllField(book);
    }
    @Override
    public List<Book> selectbooks(Integer id, String title, String author) {
        return bookDao.selectbooks(id, title, author);
    }
    @Override
    public void updatebook(Book book) {
        bookDao.updatebook(book);
    }
}
