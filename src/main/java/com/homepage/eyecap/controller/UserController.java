package com.homepage.eyecap.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.homepage.eyecap.model.User;
import com.homepage.eyecap.service.UserService;


@Controller
public class UserController {
	@Autowired
	private UserService us;

	@RequestMapping("/joinForm")
	public String joinForm() {
		return "joinForm";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(User user, String birthday1, Model model) {
		try {
			user.setBirthday(Date.valueOf(birthday1));
			us.insert(user);
			model.addAttribute("user", user);
			return "userSuccess";
		} catch (Exception e) {
			System.out.println(e.getMessage());
			model.addAttribute("msg", "다시 입력하세요");
			model.addAttribute("user", user);
		}
		return "joinForm";
	}
}