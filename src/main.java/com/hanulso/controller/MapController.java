package com.hanulso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@GetMapping("/map_modal_view.do")
	public void map_modal_view (@RequestParam("pno") int pno, Model model) {
		ProductVO pvo = service.map_modal_view(pno);
		model.addAttribute("pvo", pvo);
		model.addAttribute("picList", pvo.getPicture().split("/"));
	}
}
