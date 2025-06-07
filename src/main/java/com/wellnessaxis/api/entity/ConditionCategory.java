package com.wellnessaxis.api.entity;

import com.wellnessaxis.api.entity.baseclass.BaseEntity;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "condition_categories", schema = "dimension")
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
