package com.hanulso.service;

import com.hanulso.domain.ProductVO;

public interface ProductService {

	public void product_insert(ProductVO pvo);
	
	public ProductVO product_view(int pno);
}
