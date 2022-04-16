package com.hanulso.mapper;

import java.util.List;

import com.hanulso.domain.CorInfoVO;
import com.hanulso.domain.CorVO;
import com.hanulso.domain.Criteria;
import com.hanulso.domain.UserVO;

public interface AdminMapper {

	// 중개사 목록 및 수
	public List<CorInfoVO> coruser_list(Criteria cri);
	public int getTotalCount(Criteria cri);
	
	// 유저 목록 및 수
	public List<UserVO> user_list(Criteria cri);
	public int userTotalCount(Criteria cri);
	
	// 관리자 목록 및 수
	public List<UserVO> adm_list(Criteria cri);
	public int admTotalCount(Criteria cri);
}
