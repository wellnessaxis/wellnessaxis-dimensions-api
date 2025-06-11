package com.wellnessaxis.dimension.api.entity;

import com.wellnessaxis.dimension.api.entity.baseclass.BaseEntity;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "condition_categories")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ConditionCategory extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "title", nullable = false)
    protected String title;

    @Column(name = "desc", nullable = false)
    protected String desc;
}
