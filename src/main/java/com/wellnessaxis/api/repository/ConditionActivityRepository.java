package com.wellnessaxis.api.repository;

import com.wellnessaxis.api.entity.ConditionActivity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface ConditionActivityRepository extends JpaRepository<ConditionActivity, Integer> {
}
