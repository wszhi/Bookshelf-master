package com.thoughtworks.service;

import java.util.HashMap;
import java.util.List;

import com.thoughtworks.model.Book;

public interface BookService {
	void deleteByPrimaryKey(Integer id);
	void insertAllField(Book book);
	List<Book> selectbooks(Integer id,String title,String author);
	void updatebook(Book book);
}  