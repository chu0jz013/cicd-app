package com.example.demo;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * HelloController
 */

@Controller
public class HelloController {

    @RequestMapping("/hello")
    public void hello(HttpServletResponse resp) throws IOException {
        resp.getWriter().println("<h1 style=\"color:blue\">Hello, World!</h1>");
    }

}