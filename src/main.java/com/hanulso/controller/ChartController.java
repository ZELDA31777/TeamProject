package com.hanulso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hanulso.domain.ChartVO;
import com.hanulso.domain.Criteria;
import com.hanulso.domain.PageVO;
import com.hanulso.domain.PremiumVO;
import com.hanulso.service.ChartService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ChartController {

	@Autowired
	private ChartService chartService;

	@GetMapping("/admin/manage/income.do")
	public String chart_list(Criteria cri, Model model) {

		List<ChartVO> uList = chartService.user_chart_list();

		List<ChartVO> mList = chartService.member_chart_list();

		List<ChartVO> pList = chartService.premium_chart_list();

		String uinfo = "";
		for (ChartVO chartVO : uList) {
			uinfo += chartVO.getUserno() + ",";
		}
		uinfo = "[" + uinfo.substring(0, uinfo.length() - 1) + "]";

		String minfo = "";
		for (ChartVO chartVO : mList) {
			minfo += chartVO.getMemberno() + ",";
		}
		minfo = "[" + minfo.substring(0, minfo.length() - 1) + "]";

		String pinfo = "";
		for (ChartVO chartVO : pList) {
			pinfo += chartVO.getPreno() + ",";
		}
		pinfo = "[" + pinfo.substring(0, pinfo.length() - 1) + "]";

		model.addAttribute("uinfo", uinfo);
		model.addAttribute("minfo", minfo);
		model.addAttribute("pinfo", pinfo);

		List<PremiumVO> list = chartService.chart_list(cri);
		int total = chartService.getTotalCount(cri);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageVO(cri, total));
		
		return "/admin/manage/income";
		
	}
}
