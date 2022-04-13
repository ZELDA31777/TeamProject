package com.hanulso.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.DongCheckVO;
import com.hanulso.domain.ProductVO;
import com.hanulso.mapper.ProductMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ProductServiceImpl implements ProductService {
	
	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	@Override
	public void product_insert(ProductVO pvo) {
		mapper.product_insert(pvo);
	}
	@Override
	public int getProductSeqCurrVal() {
		return mapper.getProductSeqCurrVal();
	}
	
	
	@Override
	public void product_modify(ProductVO pvo) {
		mapper.product_modify(pvo);
	}
	
	@Override
	public ProductVO product_view(int pno) {
		return mapper.product_view(pno);
	}
	
	@Override
	public ProductVO product_select(String username) {
		return mapper.product_view(username);
	}
	
	@Override
	public List<ProductVO> product_view_list(String username) {
		return mapper.product_view_list(username);
	}
	
	@Override
	public void product_view_count(int pno) {
		mapper.product_view_count(pno);
	}
	
	@Override
	public int product_count(String username) {
		return mapper.product_count(username);
	}
	
	@Override
	public int product_count_with_addr2(String addr2) {
		return mapper.product_count_with_addr2(addr2);
	}
	
	// 평균 계산 시작
	@Override
	public double room_rent_cal(String addr2) {
		return mapper.room_rent_cal(addr2);
	}
	
	@Override
	public double room_deposit_cal(String addr2) {
		return mapper.room_deposit_cal(addr2);
	}
	
	@Override
	public double off_rent_cal(String addr2) {
		return mapper.off_rent_cal(addr2);
	}
	
	@Override
	public double off_deposit_cal(String addr2) {
		return mapper.off_deposit_cal(addr2);
	}
	
	@Override
	public double all_rent_cal(String addr2) {
		return mapper.all_rent_cal(addr2);
	}
	
	@Override
	public double all_deposit_cal(String addr2) {
		return mapper.all_deposit_cal(addr2);
	}
	
}
