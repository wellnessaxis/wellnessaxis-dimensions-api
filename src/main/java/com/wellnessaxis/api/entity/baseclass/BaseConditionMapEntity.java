package com.wellnessaxis.api.entity.baseclass;

import jakarta.persistence.Column;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@MappedSuperclass
public class BaseConditionMapEntity extends BaseEntity {
    @Column(name = "condition_id", nullable = false)
    protected String conditionId;

    @Column(name = "title", nullable = false)
    protected String title;

    @Column(name = "desc", nullable = false)
    protected String desc;
}