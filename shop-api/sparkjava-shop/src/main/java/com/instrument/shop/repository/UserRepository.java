package com.instrument.shop.repository;

import com.google.inject.ImplementedBy;
import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.User;
import com.instrument.shop.repository.impl.UserRepositoryImpl;

import java.util.Map;
import java.util.Optional;

@ImplementedBy(UserRepositoryImpl.class)
public interface UserRepository extends CrudRepository<Long, User> {
    PaginatedResponse<User> findAllByArchivedFalse(Map<String, String> filterData, Sort sort, PageRequest pageRequest);

    Optional<User> findByIdAndArchivedFalse(Long id);

//    Optional<User> findByUsername(String username);
//
//    Optional<User> findByUsernameAndArchivedFalse(String username);

    boolean existsByIdAndArchivedFalse(Long id);

    boolean existsByUsername(String username);

    boolean existsByEmail(String email);

//    void archive(User user);
//
//    void archiveById(Long id);
}
