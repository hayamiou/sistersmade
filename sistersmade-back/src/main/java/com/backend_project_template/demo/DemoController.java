package com.backend_project_template.demo;

import com.backend_project_template.core.ApiResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

  @GetMapping("/")
  public ResponseEntity<ApiResponse<String[]>> sayHello() {
    String[] greetings = { "Hello", "Bonjour", "Sabaidi", "Ia ora na" };
    ApiResponse<String[]> response = new ApiResponse<>("Data fetched successfully", greetings);
    return ResponseEntity.status(HttpStatus.OK).body(response);
  }
}
