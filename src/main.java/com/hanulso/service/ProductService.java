package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.*;

public interface ProductService {

	public void product_insert(ProductVO pvo);
	
	public ProductVO product_view(int pno);
	
	public ProductVO product_select(String username);
	
	public List<ProductVO> product_view_list(String username);
	
	public void product_view_count(int pno);
	
	public int product_count(String username);
	
	public int product_count_with_addr2(String addr2);
	
	// 평균 계산
	public double room_rent_cal(String addr2);
	public double room_deposit_cal(String addr2);
	public double off_rent_cal(String addr2);
	public double off_deposit_cal(String addr2);
	public double all_rent_cal(String addr2);
	public double all_deposit_cal(String addr2);
	

	public void product_modify(ProductVO pvo);
	
	public void product_delete(ProductVO pvo);
}
