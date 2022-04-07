package com.hanulso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.hanulso.domain.*;
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
	
	@PostMapping(value="/getList.do", 
			produces = {org.springframework.http.MediaType.APPLICATION_JSON_UTF8_VALUE}) // json 형식으로 결과값 반한
	public ResponseEntity<List<ProductVO>> getList(Criteria cri, @RequestParam("type[]") int[] type) {
		ProductSearchConditionVO pscvo = new ProductSearchConditionVO();
		pscvo.setType(type);
		System.out.println("---- pscvo ----");
		System.out.println(pscvo);
		return new ResponseEntity<List<ProductVO>>(service.getList(pscvo), HttpStatus.OK);
	}
}
