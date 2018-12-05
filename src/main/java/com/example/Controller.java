package com.example;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 岑忠满
 * @date 2018/9/4 16:37
 */
@RestController
public class Controller {
    @RequestMapping("/hello")
    public String hello() {
        return "Hello World 123!";
    }
}