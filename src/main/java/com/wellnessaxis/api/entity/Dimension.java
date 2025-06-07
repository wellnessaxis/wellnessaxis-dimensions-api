package com.wellnessaxis.api.entity;

import com.wellnessaxis.api.entity.baseclass.BaseDimensionEntity;
import com.wellnessaxis.api.entity.baseclass.BaseNameEntity;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "dimensions", schema = "dimension")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Dimension extends BaseNameEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
}
