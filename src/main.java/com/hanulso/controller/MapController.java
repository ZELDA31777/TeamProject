package com.hanulso.controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.hanulso.domain.*;
import com.hanulso.service.*;
import com.hanulso.security.CustomUserDetails;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/map/*")
@Log4j
public class MapController {

	@Autowired
	private MapService service;

	@Autowired
	private FavoriteService favoriteservice;
	
	@Autowired
	private UserService userService;

	@GetMapping("/map_view.do")
	public void map_view(Model model) {
		List<ProductVO> list = service.map_view_list();
		model.addAttribute("list", list);
	}

	@GetMapping("/map_modal_view.do")
	public void map_modal_view(@RequestParam("pno") int pno, Model model) {
		ProductVO pvo = service.map_modal_view(pno);
		CorVO cvo = userService.member_select(pvo.getUsername());

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		// principal에 SecurityContextHolder의 값을 getContext로 불러오고, getAuthentication 현재 로그인 상태(비로그인 상태도 포함)
		// User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		// 위와 같은 형식도 가능하다고 합니다.

		if (!principal.toString().equals("anonymousUser")) {
			CustomUserDetails user = (CustomUserDetails) principal;
			log.info(user);
			FavoriteVO fvo = favoriteservice.likecheck(pno, user.getUsername());
			model.addAttribute("fvo", fvo);
			model.addAttribute("username", user.getUsername());
		}
		

		model.addAttribute("pvo", pvo);
		model.addAttribute("cvo", cvo);
		model.addAttribute("picList", pvo.getPicture().split("/"));
	}

	
	// json 형식으로 반환
	// [전체 방] 탭
	@PostMapping(value = "/getList0.do", produces = { org.springframework.http.MediaType.APPLICATION_JSON_UTF8_VALUE }) 
	@ResponseBody
	public MapListVO getList0(HttpServletRequest request) { // [전체 방] 목록 가져오기
		ProductSearchConditionVO pscvo = new ProductSearchConditionVO();

		String[] values;

		// type
		// 체크를 모두 해제한 경우에는 null로 받으므로 예외처리
		pscvo.setType(((values = request.getParameterValues("type")) != null)
				? Arrays.stream(values).mapToInt(Integer::parseInt).toArray()
				: null);
		// 보증금
		pscvo.setDeposit(Arrays.stream(request.getParameterValues("deposit")).mapToInt(Integer::parseInt).toArray());
		// 월세
		pscvo.setRent(Arrays.stream(request.getParameterValues("rent")).mapToInt(Integer::parseInt).toArray());
		// 관리비
		pscvo.setManage(Arrays.stream(request.getParameterValues("manage")).mapToInt(Integer::parseInt).toArray());
		// 방크기
		pscvo.setArea(Arrays.stream(request.getParameterValues("area")).mapToInt(Integer::parseInt).toArray());
		// 층수
		pscvo.setFloor(((values = request.getParameterValues("floor")) != null)
				? Arrays.stream(values).mapToInt(Integer::parseInt).toArray()
				: null);
		// 방수
		pscvo.setRoom(((values = request.getParameterValues("room")) != null)
				? Arrays.stream(values).mapToInt(Integer::parseInt).toArray()
				: null);

		// 욕실수
		pscvo.setShower(((values = request.getParameterValues("shower")) != null)
				? Arrays.stream(values).mapToInt(Integer::parseInt).toArray()
				: null);
		// 풀옵션
		pscvo.setFulloption(((values = request.getParameterValues("fulloption")) != null)
				? Arrays.stream(values).mapToInt(Integer::parseInt).toArray()
				: null);

		// 지역 설정에서 동을 선택 시 not null
		pscvo.setAddr2(request.getParameter("addr2"));
		
		return new MapListVO(service.getList0TopCor(pscvo),service.getList0(pscvo));
	}
	
	// [중개사무소] 탭
	@PostMapping(value = "/getList1.do", produces = { org.springframework.http.MediaType.APPLICATION_JSON_UTF8_VALUE })
	@ResponseBody
	public MapListVO getList1(HttpServletRequest request) {
		ProductSearchConditionVO pscvo = new ProductSearchConditionVO();
		
		// 지역 설정에서 동을 선택 시 not null
		pscvo.setAddr2(request.getParameter("addr2"));
		
		return new MapListVO(service.getList1(pscvo), null);
	}
}
