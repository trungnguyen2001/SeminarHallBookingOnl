package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.model.account;
import com.example.demo.repository.accountRepository;
import com.example.demo.util.Mappings;
import com.example.demo.util.ViewNames;

@Controller
public class login {
	@Autowired
	private accountRepository account_rep;

	@RequestMapping(Mappings.LOGIN)
	public String Index() {

		return ViewNames.LOGIN;
	}

	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String signin(account newacc) {
		List<account> acc = account_rep.findAll();
		for (int i = 0; i < acc.size(); i++) {
			String username = newacc.getUsername();
			String password = newacc.getPassword();
			if (acc.get(i).getUsername().equals(username)) {
				if (acc.get(i).getPassword().equals(password)) {
					
					if (acc.get(i).getRole().equals("Admin")) {
						{
							return "redirect:" + Mappings.HOMEPAGE;
						}
					}
					else if (acc.get(i).getRole().equals("Member")) {

						{
							return "redirect:" + Mappings.HOMEPAGE_MEMBER+"?id="+acc.get(i).getId();
						}
					} else if (acc.get(i).getRole().equals("User")) {
						{
							return "redirect:" + Mappings.HOMEPAGE_USER+"?id="+acc.get(i).getId();
						}
					}
				}
			}
		}
		return "redirect:" + Mappings.LOGIN;
	}
}
