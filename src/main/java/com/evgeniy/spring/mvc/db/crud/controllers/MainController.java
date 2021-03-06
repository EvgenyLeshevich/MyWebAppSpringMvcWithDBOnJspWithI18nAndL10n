package com.evgeniy.spring.mvc.db.crud.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

    @GetMapping("/")
    public String greeting(Model model) {
        model.addAttribute("title", "Home Page");
        return "home";
    }

    @GetMapping("/test")
    public String test() {
        return "test";
    }
}
