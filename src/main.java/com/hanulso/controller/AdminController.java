package com.hanulso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hanulso.domain.CorInfoVO;
import com.hanulso.domain.Criteria;
import com.hanulso.domain.PageVO;
import com.hanulso.service.AdminService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
/*
 * ##### 하위폴더가 존재해서 컨트롤러 오류 남으로 1:1 직접 매핑 걸어줄것 ! ##### 
 */
	@Autowired
	private AdminService service;
	
	@GetMapping("/manage/admin_user_list.do")
	public void user_list() {}
	
	@GetMapping("/manage/admin_cor_list.do")
	public String cor_list(Criteria cri, Model model) {
		List<CorInfoVO> r_list = service.coruser_list_date(cri);
		List<CorInfoVO> n_list = service.coruser_list_name(cri);
		int total = service.getTotalCount(cri);
		model.addAttribute("r_list", r_list);
		model.addAttribute("n_list", n_list);
		model.addAttribute("pageMaker", new PageVO(cri, total));
		return "/admin/manage/admin_cor_list";
	}
}
