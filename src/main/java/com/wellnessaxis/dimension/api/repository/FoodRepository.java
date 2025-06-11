package com.wellnessaxis.dimension.api.repository;

import com.wellnessaxis.dimension.api.entity.Food;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface FoodRepository extends JpaRepository<Food, Integer> {
}
