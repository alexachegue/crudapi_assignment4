package com.csc340.crudapi.butterfly;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Provides database transactions.
 */
@Repository
public interface ButterflyRepository extends JpaRepository<Butterfly, Integer> {

    @Query(value = "select * from butterfly where breed = :breed", nativeQuery = true)
    List<Butterfly> getButterflyByBreed(@Param("breed") String breed);

    @Query(value = "select * from butterfly b where b.name like %?1%", nativeQuery = true)
    List<Butterfly> getButterflyByNameSearch(String name);
}
