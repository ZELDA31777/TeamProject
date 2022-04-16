package com.hanulso.controller;

import java.util.*;

import javax.servlet.http.*;

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

import com.hanulso.domain.*;
import com.hanulso.security.CustomUserDetails;
import com.hanulso.service.*;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/favorite/*")
public class FavoriteCotroller {

	@Autowired
	private FavoriteService service;
	
	@Autowired
	private ProductService productService;

	@GetMapping("/looked_room.do")
	public void looked_room(@RequestParam("username") String username, HttpServletRequest request, HttpServletResponse response,Model model) {
		List<ProductVO> list = service.favorite_list(username);
		model.addAttribute("list", list);
		
		// 쿠기에 저장된 매물 정보를 담을 리스트
		List <ProductVO> clist = new ArrayList<ProductVO>();
		Cookie[] cookies = request.getCookies();
		for (Cookie c:cookies) {
			if (c.getName().startsWith("OnePickRecentViewPno-")) {
				int pno = Integer.parseInt(c.getValue());
				ProductVO pvo = productService.product_view(pno);
				if (pvo == null) {
					c.setMaxAge(0);
					response.addCookie(c);
				} else clist.add(pvo);
			}
		}
		model.addAttribute("clist", clist);
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
