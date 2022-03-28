package com.hanulso.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hanulso.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {

	@Autowired
	private UserService service;
	
	@GetMapping("/user/user_login.do")
	public void user_login() {}

	@GetMapping("/user/user_register.do")
	public void user_register() {}
	
	@GetMapping("/user/user_register_cor.do")
	public void user_register_cor() {}
	
	@GetMapping("user/user_choose.do")
	public void user_choose() {}
	
}
