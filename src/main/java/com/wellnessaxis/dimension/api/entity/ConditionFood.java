package com.wellnessaxis.dimension.api.entity;

import com.wellnessaxis.dimension.api.entity.baseclass.BaseConditionMapEntity;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "condition_food")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ConditionFood extends BaseConditionMapEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "food_id")
    private Integer foodId;
}
