package com.hanulso.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.hanulso.domain.ProductSearchConditionVO;
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
	
	
	@PostMapping(value="/getList.do",
			produces = {org.springframework.http.MediaType.APPLICATION_JSON_UTF8_VALUE}) // json 형식으로 결과값 반한
	@ResponseBody
	public List<ProductVO> getList( HttpServletRequest request) {
		ProductSearchConditionVO pscvo = new ProductSearchConditionVO();
		
		String[] values;
		
		// type 
		// 체크를 모두 해제한 경우에는 null로 받으므로 예외처리
		pscvo.setType( ((values=request.getParameterValues("type")) != null)?Arrays.stream(values).mapToInt(Integer::parseInt).toArray():null);
		pscvo.setManage( Arrays.stream(request.getParameterValues("manage")).mapToInt(Integer::parseInt).toArray());
		
		// 지역 설정에서 동을 선택
		pscvo.setDong(request.getParameter("dong"));
		
		return service.getList(pscvo);
	}
}
