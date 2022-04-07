package com.hanulso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.KnowledgeVO;
import com.hanulso.mapper.AlertMapper;

import lombok.Setter;

@Service
public class AlertServiceImpl implements AlertService{

	@Setter(onMethod_ = @Autowired)
	private AlertMapper mapper;
	
	@Override
	public List<KnowledgeVO> notice_list() {
		return mapper.notice_list();
	}
	
}
