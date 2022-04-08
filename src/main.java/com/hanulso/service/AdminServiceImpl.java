package com.hanulso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.CorInfoVO;
import com.hanulso.domain.Criteria;
import com.hanulso.mapper.AdminMapper;

import lombok.Setter;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Setter(onMethod_ = @Autowired)
	private AdminMapper mapper;
	
	@Override
	public List<CorInfoVO> coruser_list_date(Criteria cri) {
		return mapper.coruser_list_date(cri);
	}
	
	@Override
	public List<CorInfoVO> coruser_list_name(Criteria cri) {
		return mapper.coruser_list_name(cri);
	}
	
	@Override
	public int getTotalCount(Criteria cri) {
		return mapper.getTotalCount(cri);
	}

}
