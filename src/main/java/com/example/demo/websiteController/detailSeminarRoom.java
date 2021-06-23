package com.example.demo.websiteController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class detailSeminarRoom {

	@RequestMapping("/detail-room")
	public String Index() {
		return "detail-room";
	}
}
