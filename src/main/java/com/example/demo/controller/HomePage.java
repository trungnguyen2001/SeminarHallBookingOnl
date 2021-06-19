package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomePage {
	
	@RequestMapping("/HomePage")
	public String Index() {
		return "Index";
	}
}
