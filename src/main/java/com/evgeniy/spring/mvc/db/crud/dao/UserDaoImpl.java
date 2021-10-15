package com.evgeniy.spring.mvc.db.crud.dao;

import com.evgeniy.spring.mvc.db.crud.models.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
public class UserDaoImpl implements DAO<User, Long>{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(User entity) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(entity);
    }

    @Override
    public User searchById(Long id) {
        Session currentSession = sessionFactory.getCurrentSession();
        User user = currentSession.get(User.class, id);
        return user;
    }

    @Override
    public void deleteById(Long id) {
        Session session = sessionFactory.getCurrentSession();
        User user = session.byId(User.class).load(id);
        session.delete(user);
    }

    @Override
    public List<User> searchAll() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery<User> cq = cb.createQuery(User.class);
        Root<User> root = cq.from(User.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        return query.getResultList();
    }
}
