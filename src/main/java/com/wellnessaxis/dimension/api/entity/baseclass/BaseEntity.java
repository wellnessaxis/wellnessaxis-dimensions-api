package com.wellnessaxis.dimension.api.entity.baseclass;

import jakarta.persistence.Column;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;

import java.time.LocalDateTime;

@Getter
@Setter
@MappedSuperclass
public class BaseEntity {
    @CreatedBy
    @Column(name = "created_by", nullable = false)
    protected Long createdBy;

    @CreatedDate
    @Column(name = "created_date", nullable = false, updatable = false)
    protected LocalDateTime createdDate;

    @LastModifiedBy
    @Column(name = "last_modified_by")
    protected Long lastModifiedBy;

    @LastModifiedDate
    @Column(name = "last_modified_date")
    protected LocalDateTime lastModifiedDate;

    @Column(name = "active", nullable = false)
    protected Boolean active;
}
