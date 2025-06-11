package com.wellnessaxis.dimension.api.entity;

import com.wellnessaxis.dimension.api.entity.baseclass.BaseDimensionEntity;
import com.wellnessaxis.dimension.api.entity.baseclass.BaseNameEntity;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "conditions")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Condition extends BaseNameEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "condition_category_id")
    private Integer conditionCategoryId;
}
