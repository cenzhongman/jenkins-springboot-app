package com.example;

import org.junit.Test;

import static org.junit.Assert.*;
import static org.junit.Assert.assertEquals;

/**
 * @author 岑忠满
 * @date 2018/9/4 16:42
 */
public class ControllerTest {

    @Test
    public void hello() {
        try {
            assertEquals("Hello World!", new Controller().hello());
        } catch (Exception e) {
            fail("Output is not " + "Hello World!");
        }
    }
}