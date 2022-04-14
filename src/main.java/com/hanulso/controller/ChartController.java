package com.hanulso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hanulso.domain.ChartVO;
import com.hanulso.service.ChartService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ChartController {

	@Autowired
	private ChartService chartService;
	
	@GetMapping("/admin/manage/income.do")
	public void chart_list(Model model) {
		
		List<ChartVO> uList = chartService.user_chart_list();
		List<ChartVO> mList = chartService.member_chart_list();
		List<ChartVO> pList = chartService.premium_chart_list();
		
		for (ChartVO chartVO : uList) {
			log.info(chartVO.getDdate());
			log.info(chartVO.getUserno());
		}
		
		for (ChartVO chartVO : mList) {
			log.info(chartVO.getDdate());
			log.info(chartVO.getMemberno());
		}
		
		for (ChartVO chartVO : pList) {
			log.info(chartVO.getDdate());
			log.info(chartVO.getPreno());
		}

		model.addAttribute("uList", uList);
		model.addAttribute("mList", mList);
		model.addAttribute("pList", pList);
		
	}
	
}
