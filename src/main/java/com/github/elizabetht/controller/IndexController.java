package com.github.elizabetht.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class IndexController {

	 @RequestMapping(method=RequestMethod.GET)
    public String hello(){
    	System.out.println("index");
        return "index";
    }
}