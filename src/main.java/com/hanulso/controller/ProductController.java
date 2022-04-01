package com.hanulso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	@GetMapping("/product_view.do")
	public void product_view() {}
	
	@GetMapping("/product_write_backUp.do")
	public void product_write_backUp() {}
	
	@GetMapping("/product_write.do")
	public void product_write() {}
}
