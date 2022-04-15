package com.hanulso.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.CorVO;
import com.hanulso.domain.ProductSearchConditionVO;
import com.hanulso.domain.ProductVO;
import com.hanulso.mapper.MapMapper;

import lombok.Setter;

@Service
public class MapServiceImpl implements MapService {

	@Setter(onMethod_ = @Autowired)
	private MapMapper mapper;

	@Override
	public List<ProductVO> map_view_list() {
		return mapper.map_view_list();
	}

	@Override
	public ProductVO map_modal_view(int pno) {
		return mapper.map_modal_view(pno);
	}
	
	// [전체 방] 탭 선택 시  
	@Override
	public List<ProductVO> getList0(ProductSearchConditionVO pscvo) {
		return mapper.getList0(pscvo);
	}
	@Override
	public List<CorVO> getList0TopCor(ProductSearchConditionVO pscvo) {
		return mapper.getList0TopCor(pscvo);
	}
	
	// [중개사] 탭 선택 시
	@Override
	public List<CorVO> getList1(ProductSearchConditionVO pscvo) {
		return mapper.getList1(pscvo);
	}
}
