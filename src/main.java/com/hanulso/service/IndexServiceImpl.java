package com.hanulso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.KnowledgeVO;
import com.hanulso.domain.ProductVO;
import com.hanulso.mapper.IndexMapper;

@Service
public class IndexServiceImpl implements IndexService{
	
	@Autowired
	private IndexMapper mapper;
	
	@Override
	public List<KnowledgeVO> main_tip_list() {
		return mapper.main_tip_list();
	}
	
	@Override
	public List<ProductVO> main_top_list() {
		return mapper.main_top_list();
	}

}
