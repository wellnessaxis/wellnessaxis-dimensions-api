package com.wellnessaxis.dimension.api.repository;

import com.wellnessaxis.dimension.api.entity.Condition;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface ConditionRepository extends JpaRepository<Condition, Integer> {
}
