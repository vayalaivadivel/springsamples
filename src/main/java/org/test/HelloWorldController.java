/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.test;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author dell
 */
@Controller
public class HelloWorldController {

    @Autowired
    ServletContext context;

    @Autowired
    HttpSession session;

    @GetMapping("/")
    public String welcome(Model model) {
        model.addAttribute("message", "Welcome to my first web application"); //Defalut scope is request
        context.setAttribute("appMessage", "Application scope test message");
        session.setAttribute("sessionMessage", "Session scope test message");
        return "index";
    }
}
