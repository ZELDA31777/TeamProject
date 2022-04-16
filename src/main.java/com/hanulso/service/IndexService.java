package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.KnowledgeVO;
import com.hanulso.domain.ProductVO;

public interface IndexService {
	
	public List<KnowledgeVO> main_tip_list();
	
	public List<ProductVO> main_top_list();

	// 메인페이지에 띄울 좋아요 순 상위 4개
	public List<ProductVO> main_heart_list();
}
