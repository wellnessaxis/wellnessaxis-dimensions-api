package com.wellnessaxis.dimension.api.entity;

import com.wellnessaxis.dimension.api.entity.baseclass.BaseEntity;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "dimensions")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Dimension extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "name", nullable = false)
    protected String name;

    @Column(name = "desc", nullable = false)
    protected String desc;
}
