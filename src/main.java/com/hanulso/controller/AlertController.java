package com.hanulso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/alert/*")
public class AlertController {
	
	@GetMapping("/alert_list.do")
	public void alert_list() {}
}
