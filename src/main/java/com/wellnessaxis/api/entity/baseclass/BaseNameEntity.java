package com.wellnessaxis.api.entity.baseclass;

import jakarta.persistence.Column;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@MappedSuperclass
public class BaseNameEntity extends BaseEntity{
    @Column(name = "name", nullable = false)
    protected String name;

    @Column(name = "desc", nullable = false)
    protected String desc;
}
