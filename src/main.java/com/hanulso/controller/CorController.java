package com.hanulso.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hanulso.service.UserService;
import com.hanulso.domain.ProductVO;
import com.hanulso.service.ProductService;

@Controller
@RequestMapping("/coroperation/*")
public class CorController {

	@Autowired
	private UserService userService;

	@Autowired
	private ProductService productService;

	// username = 부동산 이름
	@GetMapping("/coroperation/cor_view.do")
	public void cor_view(String username, Model model) {
		// 이 부동산의 매물 수
		int pcnt = product_count(username);
		model.addAttribute("pcnt", pcnt);
		model.addAttribute("uvo", userService.user_select(username));
		model.addAttribute("cvo", userService.member_select(username));
		model.addAttribute("pList", productService.product_view_list(username));
	}

	/*
	 * ##### 아래는 임시로 추가해둔 파일입니다 ##### ##### 병합 후 삭제 예정 #####
	 */
	public int product_count(String username) {
		int pcnt = productService.product_count(username);
		return pcnt;
	}

	@GetMapping("/coroperation/cor_list.do")
	public void cor_list() {
	}

	@GetMapping("/coroperation/cor_list2.do")
	public void cor_list2() {
	}
}
