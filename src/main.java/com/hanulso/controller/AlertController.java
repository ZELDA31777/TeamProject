package com.hanulso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hanulso.domain.KnowledgeVO;
import com.hanulso.service.AlertService;

import lombok.Setter;

@Controller
public class AlertController {
	
	@Setter(onMethod_ = @Autowired)
	private AlertService service;
	
	@GetMapping("/alert/alert_list.do")
	public void alert_list(Model model) {
		List<KnowledgeVO> list = service.notice_list();
		model.addAttribute("list", list);
	}
}
