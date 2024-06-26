package com.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MyController {
@RequestMapping("/")
    public String showFirstView(){
        return "first-view";
    }
    @RequestMapping("/askDetails")
    public String askEmploeeDetails(){
    return "ask-emp-details-view";
    }
//    @RequestMapping("showDetails")
//    public String showEmpDetails() {
//        return "show-emp-details-view";
//    }

    @RequestMapping("/showDetails")
    public String showEmpDetails(HttpServletRequest request, Model model) {
        String empName = request.getParameter("employeeName");
        empName = "Mr. "+empName;
        model.addAttribute("nameAttribute",empName);
        model.addAttribute("description","instruktor");
        return "show-emp-details-view";
    }
}
