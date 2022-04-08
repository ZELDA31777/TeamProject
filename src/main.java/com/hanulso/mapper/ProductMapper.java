package com.hanulso.mapper;

import java.util.List;

import com.hanulso.domain.ProductVO;

public interface ProductMapper {

	public void product_insert(ProductVO pvo);
	
	public ProductVO product_view(int pno);
	
	public ProductVO product_view(String username);
	
	public List<ProductVO> product_view_list(String username);
	
}
