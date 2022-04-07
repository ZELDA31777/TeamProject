package com.hanulso.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hanulso.domain.JusoVO;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "index";
	}
	
	@RequestMapping("/include/jusoPopup.do")
	public void jusoPopup(JusoVO jusovo) {
		
	}
	
	// 해당 페이지에 접근 권한이 없을경우 표시
	@RequestMapping("/no_auth")
	public void no_auth() {}
}
