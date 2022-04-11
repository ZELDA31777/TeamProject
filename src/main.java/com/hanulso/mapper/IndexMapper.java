package com.hanulso.mapper;

import java.util.List;

import com.hanulso.domain.KnowledgeVO;
import com.hanulso.domain.ProductVO;

public interface IndexMapper {
	
	public List<KnowledgeVO> main_tip_list();
	
	public List<ProductVO> main_top_list();

}
