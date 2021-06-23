package com.example.demo.websiteController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class bookingRoom {
	
	@RequestMapping("booking-room")
	public String Index() {
		return "booking-room";
	}
}
