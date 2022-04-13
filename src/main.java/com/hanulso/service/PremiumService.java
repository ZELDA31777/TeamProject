package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.PremiumVO;

public interface PremiumService {

	public void premium_insert(PremiumVO prevo);
	
	
	public PremiumVO premium_select(String username);
}
