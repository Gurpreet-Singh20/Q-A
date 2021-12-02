package com.forum.StackOverflowClone.controllers;

import com.forum.StackOverflowClone.models.Question;
import com.forum.StackOverflowClone.models.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserController {
//    @RequestMapping("/login")
//    public String login(Model model){
//        model.addAttribute("user",new User());
//        return "test.html";

        @GetMapping("/login")
        public String dashboard(Model model){
            model.addAttribute("user",new User());
            return "test";
        }
    }

