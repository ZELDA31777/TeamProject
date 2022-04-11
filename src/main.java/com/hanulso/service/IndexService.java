package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.KnowledgeVO;
import com.hanulso.domain.ProductVO;

public interface IndexService {
	
	public List<KnowledgeVO> main_tip_list();
	
	public List<ProductVO> main_top_list();

}
