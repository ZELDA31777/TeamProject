package com.hanulso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.PremiumVO;
import com.hanulso.mapper.PremiumMapper;

@Service
public class PremiumServiceImpl implements PremiumService{
	
	@Autowired
	private PremiumMapper mapper;
	
	@Override
	public void premium_insert(PremiumVO pvo) {
		mapper.premium_insert(pvo);
	}
	
	@Override
	public PremiumVO premium_select(String username) {
		return mapper.premium_select(username);
	}
	
	
}
