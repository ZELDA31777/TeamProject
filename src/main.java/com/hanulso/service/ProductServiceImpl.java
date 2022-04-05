package com.hanulso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.ProductVO;
import com.hanulso.mapper.ProductMapper;

import lombok.Setter;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	@Override
	public void product_insert(ProductVO pvo) {
		mapper.product_insert(pvo);
	}
	
	@Override
	public ProductVO product_view(int pno) {
		return mapper.product_view(pno);
	}
	
	@Override
	public List<ProductVO> product_view_list(String username) {
		return mapper.product_view_list(username);
	}
	
	
}
