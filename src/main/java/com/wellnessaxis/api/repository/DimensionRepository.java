package com.wellnessaxis.api.repository;

import com.wellnessaxis.api.entity.Dimension;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface DimensionRepository extends JpaRepository<Dimension, Integer> {
}
