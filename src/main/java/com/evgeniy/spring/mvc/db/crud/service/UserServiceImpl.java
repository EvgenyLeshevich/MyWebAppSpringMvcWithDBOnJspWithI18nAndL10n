package com.evgeniy.spring.mvc.db.crud.service;

import com.evgeniy.spring.mvc.db.crud.dao.DAO;
import com.evgeniy.spring.mvc.db.crud.dao.UserDaoImpl;
import com.evgeniy.spring.mvc.db.crud.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class UserServiceImpl implements Services<User, Long> {

    @Autowired
    private DAO dao;

    @Override
    @Transactional
    public void add(User entity) {
        dao.add(entity);
    }

    @Override
    @Transactional
    public User searchById(Long id) {
        return (User) dao.searchById(id);
    }

    @Override
    @Transactional
    public void deleteById(Long id) {
        dao.deleteById(id);
    }

    @Override
    @Transactional
    public List<User> searchAll() {
        return dao.searchAll();
    }
}
