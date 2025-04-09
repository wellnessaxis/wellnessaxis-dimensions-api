package com.wellnessaxis.api.repository;

import com.wellnessaxis.api.entity.Food;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface FoodRepository extends JpaRepository<Food, Integer> {
}
