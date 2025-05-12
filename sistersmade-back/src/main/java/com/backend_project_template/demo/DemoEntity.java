package com.backend_project_template.demo;

import com.backend_project_template.core.BaseEntity;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class DemoEntity extends BaseEntity {

  private String description;

  public DemoEntity(String description) {
    this.description = description;
  }
}
