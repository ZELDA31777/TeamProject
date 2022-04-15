package com.hanulso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.ChartVO;
import com.hanulso.domain.Criteria;
import com.hanulso.domain.PremiumVO;
import com.hanulso.mapper.ChartMapper;

@Service
public class ChartServiceImpl implements ChartService{
	
	@Autowired
	private ChartMapper mapper;
	
	@Override
	public List<ChartVO> user_chart_list() {
		return mapper.user_chart_list();
	}
	
	@Override
	public List<ChartVO> member_chart_list() {
		return mapper.member_chart_list();
	}
	
	@Override
	public List<ChartVO> premium_chart_list() {
		return mapper.premium_chart_list();
	}
	
	@Override
	public List<PremiumVO> chart_list(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.chart_list(cri);
	}
	
	@Override
	public int getTotalCount(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotalCount(cri);
	}

}
