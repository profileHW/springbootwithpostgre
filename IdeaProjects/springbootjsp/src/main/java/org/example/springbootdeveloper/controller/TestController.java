package org.example.springbootdeveloper.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class TestController {

    @RequestMapping("/test")
    public ModelAndView test1() throws Exception{
        ModelAndView mav = new ModelAndView("testJSP");
        mav.addObject("name", "JSP");

        List<String> testList = new ArrayList<String>();
        testList.add("a");
        testList.add("b");
        testList.add("c");

        mav.addObject("list", testList);
        return mav;
    }
    /*
    @GetMapping("/testJSP")
    public String testJSP(Model model) {
        List<String> testList = new ArrayList<String>();
        testList.add("a");
        testList.add("b");
        testList.add("c");
        model.addAttribute("list", testList);
        model.addAttribute("name", "JSP");
        return "testJSP";
    }*/
}
