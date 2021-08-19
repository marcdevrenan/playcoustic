package code.com.appmarcilio;

import code.com.domain.controller.SongController;
import code.com.domain.controller.UserController;
import code.com.domain.service.SongService;
import code.com.domain.service.UserService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan(basePackageClasses = {SongController.class, SongService.class, UserController.class, UserService.class})
@EntityScan(basePackages = {"code.com.domain.model"})
@EnableJpaRepositories(basePackages = {"code.com.domain.repository"})
public class PlaycousticApplication {

    public static void main(String[] args) {
        SpringApplication.run(PlaycousticApplication.class, args);
    }

}
