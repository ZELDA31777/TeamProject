package com.hanulso.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hanulso.domain.CorVO;
import com.hanulso.domain.UserVO;
import com.hanulso.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {

	@Autowired
	private UserService service;
	
	@Autowired
	private PasswordEncoder pwencoder;
	
	@GetMapping("/user/user_login.do")
	public void user_login() {}

	@GetMapping("/user/user_register.do")
	public void user_register() {}
	
	@GetMapping("/user/user_register_cor.do")
	public void user_register_cor() {}
	
	@GetMapping("user/user_choose.do")
	public void user_choose() {}
	
	@PostMapping("/user/user_register_pro.do")
	public String user_register_pro(UserVO uvo,RedirectAttributes rttr) {
		String inputPass = pwencoder.encode(uvo.getPassword());
		uvo.setPassword(inputPass);
		service.userRegister(uvo);
		return "redirect:/";
	}
	
	@PostMapping("/user/user_register_cor_pro.do")
	public String user_register_cor_pro(UserVO uvo, CorVO cvo, RedirectAttributes rttr) {
		String inputPass = pwencoder.encode(uvo.getPassword());
		uvo.setPassword(inputPass);
		service.corRegister(uvo, cvo);
		return "redirect:/";
	}
	
}
