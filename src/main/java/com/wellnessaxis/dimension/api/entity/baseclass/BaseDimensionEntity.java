package com.wellnessaxis.dimension.api.entity.baseclass;

import jakarta.persistence.Column;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@MappedSuperclass
public class BaseDimensionEntity extends BaseNameEntity {
    @Column(name = "dimension_id", nullable = false)
    protected String dimensionId;
}
