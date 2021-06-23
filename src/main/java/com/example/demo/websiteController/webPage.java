package com.example.demo.websiteController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class webPage {

	@RequestMapping("/Index")
	public  String Index() {
		
		return "web-homepage";
	}
}
