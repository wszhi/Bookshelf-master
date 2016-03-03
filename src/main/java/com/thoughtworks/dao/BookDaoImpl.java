package com.thoughtworks.dao;

import com.thoughtworks.model.Book;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import java.util.List;

/**
 * Created by Administrator on 2016/2/27.
 */
public class BookDaoImpl implements BookDao{
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }


    @Override
    public void deleteByPrimaryKey(Integer id) {
        String hql = "delete Book b where b.id=?";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setInteger(0, id);
        query.executeUpdate();
    }

    @Override
    public void insertAllField(Book book) {
        sessionFactory.getCurrentSession().save(book);
    }

    @Override
    public List<Book> selectbooks(Integer id,String title,String author) {
        if(id !=0){
            String hql = "from Book b where b.id=?";
            Query query = sessionFactory.getCurrentSession().createQuery(hql);
            query.setInteger(0, id);
            return query.list();
        }
        if(title !="" && author!=""){
            String hql = "from Book b where b.title like ? and b.author like ?";
            Query query = sessionFactory.getCurrentSession().createQuery(hql);
            query.setString(0,'%' + title + '%');
            query.setString(1,'%'+author+'%');
            return query.list();
        }
        if(title !=""){
            String hql = "from Book b where b.title like ?";
            Query query = sessionFactory.getCurrentSession().createQuery(hql);
            query.setString(0,'%'+title+'%');
            return query.list();
        }
        if(author!=""){
            String hql = "from Book b where b.author like ?";
            Query query = sessionFactory.getCurrentSession().createQuery(hql);
            query.setString(0,'%'+author+'%');
            return query.list();
        }
        String hql = "from Book ";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
    }
    @Override
    public void updatebook(Book book) {
        String hql = "update Book b set b.bookurl=?,b.title=?,b.author=?,b.introduce=?,b.price=?,b.imageurl=? where b.id=?";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setString(0,book.getBookurl());
        query.setString(1,book.getTitle());
        query.setString(2,book.getAuthor());
        query.setString(3,book.getIntroduce());
        query.setString(4,book.getPrice());
        query.setString(5,book.getImageurl());
        query.setInteger(6, book.getId());

        query.executeUpdate();
    }
}
