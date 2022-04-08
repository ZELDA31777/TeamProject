package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.CorInfoVO;
import com.hanulso.domain.Criteria;

public interface AdminService {
	
	public List<CorInfoVO> coruser_list_date(Criteria cri);
	public List<CorInfoVO> coruser_list_name(Criteria cri);
	
	public int getTotalCount(Criteria cri);

}
