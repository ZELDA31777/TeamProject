package com.hanulso.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hanulso.domain.FavoriteVO;
import com.hanulso.service.FavoriteService;

@Controller
@RequestMapping("/favorite/*")
public class FavoriteCotroller {
	
	@Autowired
	private FavoriteService service;
	
	@GetMapping("/looked_room.do")
	public void looked_room() {}
	
	public void favorite_insert(FavoriteVO fvo) {
		service.favorite_insert(fvo);
	}
}
