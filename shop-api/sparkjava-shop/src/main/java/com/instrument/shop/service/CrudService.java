package com.instrument.shop.service;

import java.util.List;

public interface CrudService<ID, T> {
    T add(T entity);

    List<T> getAll();
}
