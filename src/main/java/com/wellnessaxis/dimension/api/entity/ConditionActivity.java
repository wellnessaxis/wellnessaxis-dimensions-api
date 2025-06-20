package com.wellnessaxis.dimension.api.entity;

import com.wellnessaxis.dimension.api.entity.baseclass.BaseConditionMapEntity;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "condition_activities")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ConditionActivity extends BaseConditionMapEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "activity_id")
    private Integer activityId;

    @Column(name = "title", nullable = false)
    protected String title;

    @Column(name = "desc", nullable = false)
    protected String desc;

    @Column(name = "condition_id", nullable = false)
    protected String conditionId;

    @Column(name = "impact_level", nullable = false)
    protected Integer impactLevel;
}
