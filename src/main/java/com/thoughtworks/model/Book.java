package com.thoughtworks.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bookinfo")
public class Book {
	@Id
	private int id;
	private String bookurl;
	private String title;
	private String author;
	private String introduce;
	private String price;
	private String imageurl;

	public Book(){

	}
	public Book(String bookurl,String title,String author,String introduce,String price,String imageurl){
		this.bookurl=bookurl;
		this.title=title;
		this.author=author;
		this.introduce=introduce;
		this.price=price;
		this.imageurl=imageurl;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBookurl() {
		return bookurl;
	}

	public void setBookurl(String bookurl) {
		this.bookurl = bookurl;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getImageurl() {
		return imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
}
