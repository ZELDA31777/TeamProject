package com.hanulso.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.PremiumVO;
import com.hanulso.mapper.PremiumMapper;

@Service
public class PremiumServiceImpl implements PremiumService{
	
	@Autowired
	private PremiumMapper mapper;
	
	@Override
	public void premium_insert(PremiumVO prevo) {
		mapper.premium_insert(prevo);
	}
	
	@Override
	public PremiumVO premium_select(String username) {
		return mapper.premium_select(username);
	}
	
	@Override
	public int premium_daycheck(String username) {
		return mapper.premium_daycheck(username);
	}

	@Override
	public void premium_update(PremiumVO prevo) {
		mapper.premium_update(prevo);
	}
	
	@Override
	public void premium_pCheck_update(String username) {
		mapper.premium_pCheck_update(username);
	}
	
	@Override
	public List<PremiumVO> premium_list() {
		return mapper.premium_list();
	}
	

	
	
	
	
}
