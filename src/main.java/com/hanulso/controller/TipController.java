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
import com.hanulso.service.TipService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/tip/*")
public class TipController {
	
	@Setter(onMethod_ = @Autowired)
	private TipService service;
	
	@GetMapping("/tip_list.do")
	public String tip_list(Criteria cri, Model model) {
		List<KnowledgeVO> list = service.tip_list(cri);
		int total = service.getTotalCount(cri);
		model.addAttribute("list",list);
		model.addAttribute("pageMaker", new PageVO(cri, total));
		return "/tip/tip_list";
	}
	
	@GetMapping("/tip_write.do")
	public void tip_write_form() {}
	
	@PostMapping("/tip_write_pro.do")
	public String tip_write(KnowledgeVO vo) {
		service.tip_write(vo);
		return "redirect:/tip/tip_list.do";
	}
	
	@GetMapping({"/tip_view.do","/tip_modify.do"})
	public void tip_view(@RequestParam("tip_no") int tip_no, Model model) {
		model.addAttribute("vo", service.tip_view(tip_no));
	}
	
	@GetMapping("/tip_delete.do")
	public String tip_delete(@RequestParam("tip_no") int tip_no) {
		service.tip_delete(tip_no);
		return "redirect:/tip/tip_list.do";
	}
	
	@PostMapping("/tip_modify_pro.do") 
	public String tip_modify(KnowledgeVO vo) {
		service.tip_modify(vo);
		return "redirect:/tip/tip_list.do";
	}
	
	

}
