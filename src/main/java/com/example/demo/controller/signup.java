package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class signup {

	@RequestMapping("/Signup")
	public String Index() {
		
		return "signup";
	}
}
