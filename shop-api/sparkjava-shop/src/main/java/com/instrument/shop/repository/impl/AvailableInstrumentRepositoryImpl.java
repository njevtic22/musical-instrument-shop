package com.instrument.shop.repository.impl;

import com.instrument.shop.core.pagination.PageRequest;
import com.instrument.shop.core.pagination.PaginatedResponse;
import com.instrument.shop.core.pagination.Sort;
import com.instrument.shop.model.AvailableInstrument;
import com.instrument.shop.repository.AvailableInstrumentRepository;
import com.instrument.shop.repository.RepositoryUtil;
import com.instrument.shop.util.JpqlUtil;
import jakarta.inject.Inject;
import jakarta.inject.Singleton;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@Singleton
public class AvailableInstrumentRepositoryImpl implements AvailableInstrumentRepository {
    private final EntityManagerFactory emf;
    private final RepositoryUtil repoUtil;
    private final JpqlUtil jpqlUtil;

    @Inject
    public AvailableInstrumentRepositoryImpl(EntityManagerFactory emf, RepositoryUtil repoUtil, JpqlUtil jpqlUtil) {
        this.emf = emf;
        this.repoUtil = repoUtil;
        this.jpqlUtil = jpqlUtil;
    }

    @Override
    public AvailableInstrument save(AvailableInstrument instrument) {
        EntityManager em = emf.createEntityManager();
        AvailableInstrument saved = repoUtil.save(em, instrument);
//        em.close();
        return saved;
    }

    @Override
    public List<AvailableInstrument> saveAll(Iterable<AvailableInstrument> instruments) {
        EntityManager em = emf.createEntityManager();
        List<AvailableInstrument> saved = repoUtil.saveAll(em, instruments);
        em.close();
        return saved;
    }

    @Override
    public PaginatedResponse<AvailableInstrument> findAllByArchivedFalse(Map<String, Object> filterData, Sort sort, PageRequest pageRequest) {
        String filterPart = jpqlUtil.getValidAInstrumentFilter(filterData, "i");
        String orderBy = getValidOrderBy(sort);
        String jpq = "select i from AvailableInstrument i where i.archived = false" + filterPart + orderBy;
        String countQuery = "select count(*) from AvailableInstrument i where i.archived = false" + filterPart;

        EntityManager em = emf.createEntityManager();
        PaginatedResponse<AvailableInstrument> allInstruments = repoUtil.findAll(
                em,
                jpq,
                countQuery,
                AvailableInstrument.class,
                !filterPart.isEmpty(),
                filterData,
                pageRequest
        );
//        em.close();
        return allInstruments;
    }

    @Override
    public Optional<AvailableInstrument> findByIdAndArchivedFalse(Long id) {
        String jpq = "select i from AvailableInstrument i where i.archived = false and i.id = ?1";
        EntityManager em = emf.createEntityManager();
        Optional<AvailableInstrument> found = repoUtil.findByUniqueProperty(em, jpq, AvailableInstrument.class, id);
//        em.close();
        return found;
    }

    @Override
    public boolean existsByIdAndArchivedFalse(Long id) {
        String jpq = "select case when(count(*) = 1) then true else false end from AvailableInstrument i where i.archived = false and i.id = ?1";
        EntityManager em = emf.createEntityManager();
        boolean exists = repoUtil.existsByUniqueProperty(em, jpq, id);
        em.close();
        return exists;
    }

    @Override
    public boolean existsByCode(String code) {
        String jpq = "select case when (count(*) = 1) then true else false end from AvailableInstrument i where i.code = ?1";
        EntityManager em = emf.createEntityManager();
        boolean exists = repoUtil.existsByUniqueProperty(em, jpq, code);
        em.close();
        return exists;
    }

    @Override
    public int archive(AvailableInstrument instrument) {
        return archiveById(instrument.getId());
    }

    @Override
    public int archiveById(Long id) {
        String jpq = "update AvailableInstrument i set i.archived = true where i.id = ?1";
        EntityManager em = emf.createEntityManager();
        int rowsAffected = repoUtil.updateByUniqueProperty(em, jpq, id, "available instruments", "archive by id");
        em.close();
        return rowsAffected;
    }

    private String getValidOrderBy(Sort sort) {
        String sortStr = sort.toString();
        if (sortStr.contains("type")) {
            sortStr = sortStr.replaceAll("type", "type.name");
        }
        return jpqlUtil.getValidOrderBy(sortStr);
    }
}
