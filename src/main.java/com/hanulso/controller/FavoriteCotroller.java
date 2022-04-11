package com.hanulso.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
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
import com.hanulso.security.CustomUserDetails;
import com.hanulso.service.FavoriteService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/favorite/*")
public class FavoriteCotroller {

	@Autowired
	private FavoriteService service;

	@GetMapping("/looked_room.do")
	public void looked_room(@RequestParam("username") String username, Model model) {
		List<ProductVO> list = service.favorite_list(username);
		model.addAttribute("list", list);
	}

	@GetMapping("/looked_room_non.do")
	public void looked_room() {
	}

	@RequestMapping(value = "saveHeart", method = RequestMethod.POST)
	public @ResponseBody int heart(@ModelAttribute FavoriteVO fvo) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		// principal에 SecurityContextHolder의 값을 getContext로 불러오고, getAuthentication 현재
		// 로그인 상태(비로그인 상태도 포함)
		// User user = (User)
		// SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		// 위와 같은 형식도 가능하다고 합니다.
		log.info(fvo);
		int result = -1;
		if (!principal.toString().equals("anonymousUser")) {
			CustomUserDetails user = (CustomUserDetails) principal;
			result = service.insertHeart(fvo);
		}
		return result;
	}

}
