package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.*;
import com.example.demo.model.AccountRepository;
import com.example.demo.model.account;

@Controller
public class signup {

	@Autowired
	private AccountRepository account_rep;
	
	@RequestMapping("/signup")
	public String Index() {
		
		return "signup";
	}
	
	@RequestMapping(value = "/create",method=RequestMethod.POST)
	public String create(account newacc) {
		if(newacc.getName() != "" && newacc.getEmail() != "" && newacc.getUsername() != "" && newacc.getPassword() != "" && newacc.getRole() != "0") {
			account acc =new account();
			acc.setName(newacc.getName());
			acc.setEmail(newacc.getEmail());
			acc.setPhone(newacc.getPhone());
			acc.setUsername(newacc.getUsername());
			acc.setPassword(newacc.getPassword());
			acc.setRole(newacc.getRole());
			acc.setStatus(true);
			
			try {
				account_rep.save(acc);
				return "redirect:" + "/login";
			}catch(Exception e) {
				e.printStackTrace();
				return "redirect:" + "/signup";
			}
		}else {
			return "redirect:" + "/signup";
		}
	}
}
