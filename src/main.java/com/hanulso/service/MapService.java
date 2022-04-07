package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.ProductSearchConditionVO;
import com.hanulso.domain.ProductVO;

public interface MapService {
	
	public List<ProductVO> map_view_list();

	public ProductVO map_modal_view(int pno);
	
	public List<ProductVO> getList(ProductSearchConditionVO pscvo);
}
