package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.PremiumVO;

public interface PremiumService {

	public void premium_insert(PremiumVO prevo);
	
	public PremiumVO premium_select(String username);
	
	public int premium_daycheck(String username);
	
	public void premium_update(PremiumVO prevo);
	
	public void premium_pCheck_update(String username);
	
	public List<PremiumVO> premium_list();
	
	
}
