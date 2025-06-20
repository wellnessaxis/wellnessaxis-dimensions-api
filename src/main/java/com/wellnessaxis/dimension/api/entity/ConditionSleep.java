package com.wellnessaxis.dimension.api.entity;

import com.wellnessaxis.dimension.api.entity.baseclass.BaseConditionMapEntity;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "condition_sleep")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ConditionSleep extends BaseConditionMapEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "sleep_id")
    private Integer sleepId;

    @Column(name = "title", nullable = false)
    protected String title;

    @Column(name = "desc", nullable = false)
    protected String desc;

    @Column(name = "condition_id", nullable = false)
    protected String conditionId;

    @Column(name = "impact_level", nullable = false)
    protected Integer impactLevel;
}
