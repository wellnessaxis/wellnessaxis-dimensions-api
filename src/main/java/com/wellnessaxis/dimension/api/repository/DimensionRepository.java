package com.wellnessaxis.dimension.api.repository;

import com.wellnessaxis.dimension.api.entity.Dimension;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface DimensionRepository extends JpaRepository<Dimension, Integer> {
}
