package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.example.demo.model.account;
import com.example.demo.repository.accountRepository;
import com.example.demo.util.Mappings;
import com.example.demo.util.ViewNames;

@Controller
public class signup {
	@Autowired
	accountRepository accrep;

	@RequestMapping(Mappings.SIGNUP)
	public String Index() {

		return ViewNames.SIGNUP;
	}

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String create(account newacc) {
		if (newacc.getName() != "" && newacc.getEmail() != "" && newacc.getUsername() != ""
				&& newacc.getPassword() != "") {
			account acc = new account();
			acc.setName(newacc.getName());
			acc.setEmail(newacc.getEmail());
			acc.setPhone(newacc.getPhone());
			acc.setUsername(newacc.getUsername());
			acc.setPassword(newacc.getPassword());
			acc.setRole("User");
			acc.setStatus(true);

			try {
				accrep.save(acc);
				return "redirect:" + "/Login";
			} catch (Exception e) {
				e.printStackTrace();
				return "redirect:" + "/Signup";
			}
		} else {
			return "redirect:" + "/Login";
		}
	}
}
