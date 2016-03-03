package com.thoughtworks.dao;
import com.thoughtworks.model.Book;

import java.util.HashMap;
import java.util.List;

public interface BookDao {
	void deleteByPrimaryKey(Integer id);
	void insertAllField(Book book);
	List<Book> selectbooks(Integer id,String title,String author);
	void updatebook(Book book);

}