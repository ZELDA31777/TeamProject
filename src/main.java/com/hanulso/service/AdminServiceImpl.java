package com.hanulso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.CorInfoVO;
import com.hanulso.domain.Criteria;
import com.hanulso.domain.UserVO;
import com.hanulso.mapper.AdminMapper;

import lombok.Setter;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Setter(onMethod_ = @Autowired)
	private AdminMapper mapper;
	
	@Override
	public List<CorInfoVO> coruser_list(Criteria cri) {
		return mapper.coruser_list(cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		return mapper.getTotalCount(cri);
	}
	
	@Override
	public List<UserVO> user_list(Criteria cri) {
		return mapper.user_list(cri);
	}
	
	@Override
	public int userTotalCount(Criteria cri) {
		return mapper.userTotalCount(cri);
	}
	
	// 관리자 목록
	@Override
	public List<UserVO> adm_list(Criteria cri) {
		return mapper.adm_list(cri);
	}

	// 관리자 수
	@Override
	public int admTotalCount(Criteria cri) {
		return mapper.admTotalCount(cri);
	}
}
