package com.hanulso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hanulso.domain.ProductVO;
import com.hanulso.service.MapService;

@Controller
@RequestMapping("/map/*")
public class MapController {
	
	@Autowired
	private MapService service;
	
	@GetMapping("/map_view.do")
	public void map_view(Model model) {
		List<ProductVO> list = service.map_view_list();
		model.addAttribute("list",list);
	}
}
