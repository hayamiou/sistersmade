package com.backend_project_template.core;

import java.time.LocalDateTime;

public record ApiResponse<T>(String message, T payload, LocalDateTime timestamp) {
  public ApiResponse(String message, T payload) {
    this(message, payload, LocalDateTime.now());
  }
}
