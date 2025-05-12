package com.backend_project_template;

import com.backend_project_template.config.InitLogger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class BackendProjectTemplateApplication {

  public static void main(String[] args) {
    ApplicationContext context = SpringApplication.run(BackendProjectTemplateApplication.class, args);
    InitLogger logger = new InitLogger();
    logger.logCurrentEnvironment(context);
  }
}
