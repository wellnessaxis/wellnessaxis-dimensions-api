package com.wellnessaxis.dimension.api.entity;

import com.wellnessaxis.dimension.api.entity.baseclass.BaseDimensionEntity;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "food")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Food extends BaseDimensionEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
}
