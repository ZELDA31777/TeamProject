package com.hanulso.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin/*")
public class AdminController {
/*
 * ##### 하위폴더가 존재해서 컨트롤러 오류 남으로 1:1 직접 매핑 걸어줄것 ! ##### 
 */
	@GetMapping("/manage/admin_cor_list.do")
	public void cor_list() {}
	
	@GetMapping("/manage/admin_user_list.do")
	public void user_list() {}
	
}
