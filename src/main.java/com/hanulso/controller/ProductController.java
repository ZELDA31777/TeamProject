package com.hanulso.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hanulso.domain.ProductVO;
import com.hanulso.service.ProductService;

@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	@Autowired
	private ProductService service;
	
	@GetMapping("/product_view.do")
	public void product_view(@RequestParam("pno") int pno, Model model ) {
		model.addAttribute("pvo", service.product_view(pno));
	}
	
	@GetMapping("/product_write_backUp.do")
	public void product_write_backUp() {}
	
	@GetMapping("/product_write.do")
	public void product_write() {}
	
	@GetMapping("/product_write3.do")
	public void product_write3() {}
	
	@PostMapping("/product_write_pro.do")
	public String product_write_pro(ProductVO pvo) {
		System.out.println(pvo);
		service.product_insert(pvo);
		return "redirect:/";
	}
	
}
