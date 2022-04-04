package com.hanulso.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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

	@GetMapping("/user_login.do")
	public void user_login_form() {}
	
	@ResponseBody
	@RequestMapping(value="/kakaoLogin.do", method = RequestMethod.GET, produces = "application/json")
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Exception{
		System.out.println("#########" + code);
		
		String access_Token = service.getAccessToken(code);
		System.out.println("###access_Token#### : " + access_Token);
		
		HashMap<String, Object> userInfo = service.getUserInfo(access_Token);
		System.out.println("###access_Token### : " + access_Token);
		System.out.println("###nickname### : " + userInfo.get("nickname"));
		System.out.println("###email### : " + userInfo.get("email"));
		
		return "redirect:/";
	}
	
	@GetMapping("/user_register.do")
	public void user_register() {}
	
	@GetMapping("/user_register_cor.do")
	public void user_register_cor() {}
	
	@GetMapping("/user_choose.do")
	public void user_choose() {}
	
	@PostMapping("/user_register_pro.do")
	public String user_register_pro(UserVO uvo,RedirectAttributes rttr) {
		String inputPass = pwencoder.encode(uvo.getPassword());
		uvo.setPassword(inputPass);
		service.userRegister(uvo);
		return "redirect:/";
	}
	
	@PostMapping("/user_register_cor_pro.do")
	public String user_register_cor_pro(UserVO uvo, CorVO cvo, RedirectAttributes rttr) {
		String inputPass = pwencoder.encode(uvo.getPassword());
		uvo.setPassword(inputPass);
		service.corRegister(uvo, cvo);
		return "redirect:/";
	}
	
}
