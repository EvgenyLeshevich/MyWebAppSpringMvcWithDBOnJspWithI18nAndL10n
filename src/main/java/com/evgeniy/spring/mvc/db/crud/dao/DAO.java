package com.evgeniy.spring.mvc.db.crud.dao;

import com.evgeniy.spring.mvc.db.crud.models.User;

import java.io.Serializable;
import java.util.List;

public interface DAO <T, Id extends Serializable>{
    public void add(T entity);

    public void update(T entity);

    public T searchById(Id id);

    public void deleteById(Id id);

    public List<T> searchAll();
}
