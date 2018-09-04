package com.example;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

import org.junit.jupiter.api.Test;

/**
 * @author 岑忠满
 * @date 2018/9/4 16:42
 */
public class ControllerTest {

    @Test
    public void hello() {
        try {
            assertEquals("Hello World!", new Controller().hello());
            System.out.println("Output is " + "Hello World!");
        } catch (Exception e) {
            fail("Output is not " + "Hello World!");
        }
    }
}