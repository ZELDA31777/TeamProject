package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.Criteria;
import com.hanulso.domain.KnowledgeVO;

public interface TipService {
	
	public void tip_write(KnowledgeVO vo);
	public KnowledgeVO tip_view(int tip_no);
	public void tip_delete(int tip_no);
	public void tip_modify(KnowledgeVO vo);
	
	public List<KnowledgeVO> tip_list(Criteria cri);
	public int getTotalCount(Criteria cri);

}
