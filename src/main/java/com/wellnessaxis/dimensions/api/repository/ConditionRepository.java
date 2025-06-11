package com.wellnessaxis.dimensions.api.repository;

import com.wellnessaxis.dimensions.api.entity.Condition;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface ConditionRepository extends JpaRepository<Condition, Integer> {
}
