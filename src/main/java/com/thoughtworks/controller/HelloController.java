package com.thoughtworks.controller;

import com.thoughtworks.model.Book;
import com.thoughtworks.service.BookService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/")
public class HelloController {
    @Resource
    private BookService bookService;
    @RequestMapping("/morebooksonline")
    public String morebooksonline(){
        return "bookonline";
    }
    @RequestMapping("/showBook")
    public String searchbook(Model model,Book book){
        model.addAttribute("books",bookService.selectbooks(book.getId(),book.getTitle(),book.getAuthor()));
        return "hello";
    }
    @RequestMapping(value ="index")
    public String hello(Model model) {
        model.addAttribute("books", bookService.selectbooks(0,"",""));
        return "hello";
    }
    @RequestMapping(value ="updatebook")
    public String updatebook(Model model,Book book) {
        bookService.updatebook(book);
        model.addAttribute("books", bookService.selectbooks(0,"",""));
        return "hello";
    }
    @RequestMapping(value ="addbook")
    public String addbook(Model model,Book book) {
        bookService.insertAllField(book);
        model.addAttribute("books", bookService.selectbooks(0,"",""));
        return "hello";
    }
    @RequestMapping(value ="addbooks")
    public String addbookonline(Model model,String bookurl,String title,String author,String introduce,String price,String imageurl) {
        Book book=new Book(bookurl,title,author,introduce,price,imageurl);
        System.out.println("***********"+book.getBookurl());
        bookService.insertAllField(book);
        model.addAttribute("books", bookService.selectbooks(0,"",""));
        return "hello";
    }
    @RequestMapping(value ="delbook")
    public String hello(String id,Model model) {
        int ids=Integer.parseInt(id);
        bookService.deleteByPrimaryKey(ids);
        model.addAttribute("books", bookService.selectbooks(0,"",""));
        return "hello";
    }


}
