package com.evgeniy.spring.mvc.db.crud.dao;

import com.evgeniy.spring.mvc.db.crud.models.User;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements DAO<User, Long>{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(User entity) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.save(entity);
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(User entity) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.update(entity);
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }

    @Override
    public User searchById(Long id) {
        User user = null;
        try (Session session = sessionFactory.openSession()) {
            user = session.get(User.class, id);
            if (user != null) {
                return user;
            } else {
                System.out.println("User doesn't exist with provided Id..");
            }
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void deleteById(Long id) {
        try (Session session = sessionFactory.openSession()) {
            User user = searchById(id);
            if (user != null) {
                session.beginTransaction();
                session.delete(user);
                session.getTransaction().commit();
            } else {
                System.out.println("User doesn't exist with provided Id..");
            }
        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<User> searchAll() {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("from User", User.class).getResultList();
        }
    }
}
