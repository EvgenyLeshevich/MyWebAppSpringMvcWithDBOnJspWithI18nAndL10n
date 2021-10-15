package com.evgeniy.spring.mvc.db.crud.service;

import java.io.Serializable;
import java.util.List;

public interface Services <T, Id extends Serializable>{
    public void add(T entity);

    public T searchById(Id id);

    public void deleteById(Id id);

    public List<T> searchAll();
}