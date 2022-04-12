package com.hanulso.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hanulso.domain.FavoriteVO;
import com.hanulso.domain.JusoVO;
import com.hanulso.domain.UserVO;
import com.hanulso.security.CustomUserDetails;
import com.hanulso.service.IndexService;
import com.hanulso.service.UserService;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private IndexService service;
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home(Locale locale, Model model) {
		model.addAttribute("tip", service.main_tip_list());
		model.addAttribute("top", service.main_top_list());
//		model.addAttribute("arr",avgCal());
		return "index";
	}
	
	@RequestMapping("/include/jusoPopup.do")
	public void jusoPopup(JusoVO jusovo) {
		
	}
	
	// 해당 페이지에 접근 권한이 없을경우 표시
	@RequestMapping("/no_auth")
	public void no_auth() {}
	
	
}
