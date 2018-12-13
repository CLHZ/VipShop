package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VipController {

    @RequestMapping("/index.htm")
    public String index(){
         return "right";
     }

    @RequestMapping("/w.htm")
    public String w(){
        return "women";
    }
}
