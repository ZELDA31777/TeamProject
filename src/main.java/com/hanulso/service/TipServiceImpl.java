package com.hanulso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.Criteria;
import com.hanulso.domain.KnowledgeVO;
import com.hanulso.mapper.TipMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class TipServiceImpl implements TipService{
	
	@Setter(onMethod_ = @Autowired)
	private TipMapper mapper;
	
	@Override
	public void tip_write(KnowledgeVO vo) {
		mapper.tip_write(vo);
	}
	
	@Override
	public KnowledgeVO tip_view(int tip_no) {
		KnowledgeVO vo = mapper.tip_view(tip_no);
		return vo;
	}
	
	@Override
	public void tip_delete(int tip_no) {
		mapper.tip_delete(tip_no);
	}
	
	@Override
	public void tip_modify(KnowledgeVO vo) {
		mapper.tip_modify(vo);
	}
	
	@Override
	public int getTotalCount(Criteria cri) {
		return mapper.getTotalCount(cri);
	}
	
	@Override
	public List<KnowledgeVO> tip_list(Criteria cri) {
		return mapper.tip_list(cri);
	}

}
