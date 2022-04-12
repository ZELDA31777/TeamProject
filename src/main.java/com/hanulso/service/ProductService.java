package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.ProductVO;

public interface ProductService {

	public void product_insert(ProductVO pvo);
	
	public ProductVO product_view(int pno);
	
	public ProductVO product_select(String username);
	
	public List<ProductVO> product_view_list(String username);
	
	public void product_view_count(int pno);
	
	public int product_count(String username);

	public void product_modify(ProductVO pvo);
	
}
