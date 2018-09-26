package com.test.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * Author: fanqiuhang
 * Date: 2018/9/25 11:10
 */
@Controller
public class MyController {

    @RequestMapping(value = "test")
    public String index(){
        return "/test/test.html";
    }
}
