package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.ChartVO;
import com.hanulso.domain.Criteria;
import com.hanulso.domain.KnowledgeVO;
import com.hanulso.domain.PremiumVO;

public interface ChartService {

	public List<ChartVO> user_chart_list();
	
	public List<ChartVO> member_chart_list();
	
	public List<ChartVO> premium_chart_list();

	public List<PremiumVO> chart_list(Criteria cri);
	
	public int getTotalCount(Criteria cri);
}
