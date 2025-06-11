package com.wellnessaxis.dimension.api.entity;

import com.wellnessaxis.dimension.api.entity.baseclass.BaseNameEntity;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "dimensions")
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
