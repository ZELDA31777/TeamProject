package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.CorInfoVO;
import com.hanulso.domain.Criteria;
import com.hanulso.domain.UserVO;

public interface AdminService {
	
	public List<CorInfoVO> coruser_list(Criteria cri);
	public int getTotalCount(Criteria cri);
	
	public List<UserVO> user_list(Criteria cri);
	public int userTotalCount(Criteria cri);

}
