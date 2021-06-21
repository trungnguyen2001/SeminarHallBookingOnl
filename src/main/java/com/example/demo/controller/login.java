package com.example.demo.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.model.*;
@Controller
public class login {
	@Autowired
	private AccountRepository account_rep;
	
	@RequestMapping("/login")
	public String Index() {
		return "login";
	}
	
	@RequestMapping(value = "/signin",method=RequestMethod.POST)
	public String signin(account newacc) {
		List<account> acc = account_rep.findAll();
		for(int i = 0; i < acc.size(); i++) {
			String username = newacc.getUsername();
			String password = newacc.getPassword();
			if(acc.get(i).getUsername().equals(username)) {
				if(acc.get(i).getPassword().equals(password)) {
					return "redirect:HomePage";
				}
			}
		}
		return "redirect:login";
	}
}
