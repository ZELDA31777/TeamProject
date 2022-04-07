package com.hanulso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanulso.domain.FavoriteVO;
import com.hanulso.domain.ProductVO;
import com.hanulso.service.FavoriteService;

@Controller
@RequestMapping("/favorite/*")
public class FavoriteCotroller {
	
	@Autowired
	private FavoriteService service;
	
	@GetMapping("/looked_room.do")
	public void looked_room(@RequestParam("username") String username, Model model) {
		List<ProductVO> list = service.favorite_list(username);
		model.addAttribute("list",list);
	}
	@GetMapping("/looked_room_non.do")
	public void looked_room() {
	}
	
	@RequestMapping(value="saveHeart",method=RequestMethod.POST)
	public @ResponseBody int heart(@ModelAttribute FavoriteVO fvo) {
		int result = service.insertHeart(fvo);
		return result;
	}
	
	
}
