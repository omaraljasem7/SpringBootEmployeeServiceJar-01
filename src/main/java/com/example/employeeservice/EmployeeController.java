package com.example.employeeservice;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmployeeController {
    @GetMapping("/employee")
    public String getEmployee(){
        return new Employee(1,"Omar").toString();
    }
    @GetMapping("/")
    public String getHomePage(){
        return "Home Page";
    }
    @GetMapping("/about")
    public String getAboutPage(){
        return "About Page";
    }
}
