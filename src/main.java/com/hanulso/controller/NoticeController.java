package com.hanulso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hanulso.domain.Criteria;
import com.hanulso.domain.KnowledgeVO;
import com.hanulso.domain.PageVO;
import com.hanulso.service.NoticeService;

import lombok.Setter;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Setter(onMethod_ = @Autowired)
	private NoticeService service;
	
	@GetMapping("/notice_list.do")
	public String notice_list(Criteria cri, Model model) {
		List<KnowledgeVO> list = service.notice_list(cri);
		int total = service.getTotalCount(cri);
		model.addAttribute("list",list);
		model.addAttribute("pageMaker", new PageVO(cri, total));
		return "/notice/notice_list";
	}
	
	@GetMapping("/notice_write.do")
	public void notice_write_form() {}
	
	@PostMapping("/notice_write_pro.do")
	public String notice_write(KnowledgeVO vo) {
		service.notice_write(vo);
		return "redirect:/notice/notice_list.do";
	}
	
	@GetMapping({"/notice_view.do","/notice_modify"})
	public void notice_view(@RequestParam("notice_no") int notice_no, Model model) {
		model.addAttribute("vo", service.notice_view(notice_no));
	}
	
	@GetMapping("/notice_delete.do")
	public String notice_delete(@RequestParam("notice_no") int notice_no) {
		service.notice_delete(notice_no);
		return "redirect:/notice/notice_list.do";
	}
	
	@PostMapping("/notice_modify_pro.do") 
	public String notice_modify(KnowledgeVO vo) {
		service.notice_modify(vo);
		return "redirect:/notice/notice_list.do";
	}
	
	

}
