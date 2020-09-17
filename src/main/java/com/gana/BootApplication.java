package com.gana;

import com.ctrip.framework.apollo.spring.annotation.EnableApolloConfig;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan("com.gana")
@SpringBootApplication
@EnableApolloConfig
public class BootApplication {

    public static void main(String[] args) {
        SpringApplication.run(BootApplication.class,args);
    }
    
    
}
