package com.hanulso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/faq/*")
public class FaqController {
	
	@GetMapping("/faq_list.do")
	public void faq_list() {}
}
