package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.ChartVO;

public interface ChartService {

	public List<ChartVO> user_chart_list();
	
	public List<ChartVO> member_chart_list();
	
	public List<ChartVO> premium_chart_list();
}
