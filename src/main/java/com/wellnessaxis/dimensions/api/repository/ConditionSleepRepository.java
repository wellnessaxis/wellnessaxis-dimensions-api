package com.wellnessaxis.dimensions.api.repository;

import com.wellnessaxis.dimensions.api.entity.ConditionSleep;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface ConditionSleepRepository extends JpaRepository<ConditionSleep, Integer> {
}
