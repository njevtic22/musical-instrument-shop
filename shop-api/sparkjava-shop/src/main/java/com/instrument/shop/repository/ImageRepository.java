package com.instrument.shop.repository;

import com.google.inject.ImplementedBy;
import com.instrument.shop.model.Image;
import com.instrument.shop.repository.impl.ImageRepositoryImpl;

import java.util.List;

@ImplementedBy(ImageRepositoryImpl.class)
public interface ImageRepository {
    List<Image> saveAll(Iterable<Image> images);

    List<Image> findAllByIdAndArchivedFalse(Iterable<Long> ids);

    boolean existsByIdAndArchivedFalse(Long id);

    int archive(Image image);

    int archiveById(Long id);
}
