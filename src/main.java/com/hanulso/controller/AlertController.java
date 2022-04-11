package com.hanulso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hanulso.domain.Criteria;
import com.hanulso.domain.KnowledgeVO;
import com.hanulso.domain.PageVO;
import com.hanulso.service.AlertService;
import com.hanulso.service.NoticeService;

import lombok.Setter;

@Controller
public class AlertController {

	@Setter(onMethod_ = @Autowired)
	private AlertService service;

	@Setter(onMethod_ = @Autowired)
	private NoticeService noticeservice;

	@GetMapping("/alert/alert_list.do")
	public void alert_list(Criteria cri, Model model) {
		List<KnowledgeVO> list = noticeservice.notice_list(cri);
		int total = noticeservice.getTotalCount(cri);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageVO(cri, total));
	}
}
