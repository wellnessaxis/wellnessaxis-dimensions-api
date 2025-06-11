package com.wellnessaxis.dimensions.api.repository;

import com.wellnessaxis.dimensions.api.entity.Sleep;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface SleepRepository extends JpaRepository<Sleep, Integer> {
}
