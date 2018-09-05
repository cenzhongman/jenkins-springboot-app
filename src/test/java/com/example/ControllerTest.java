package com.example;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

import org.junit.jupiter.api.Test;

import java.io.ByteArrayOutputStream;

/**
 * @author 岑忠满
 * @date 2018/9/4 16:42
 */
public class ControllerTest {
    private final ByteArrayOutputStream outContent = new ByteArrayOutputStream();

    @Test
    public void hello() {
        String hello = new Controller().hello();
        System.out.println(hello);
        try {
            assertEquals("Hello World!", hello, outContent.toString());
        } catch (Exception e) {
            fail("Output is not " + "Hello World!");
        }
    }
}