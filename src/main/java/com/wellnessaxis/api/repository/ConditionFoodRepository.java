package com.wellnessaxis.api.repository;

import com.wellnessaxis.api.entity.ConditionFood;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface ConditionFoodRepository extends JpaRepository<ConditionFood, Integer> {
}
