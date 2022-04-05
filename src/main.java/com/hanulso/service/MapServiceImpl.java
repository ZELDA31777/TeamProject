package com.hanulso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.ProductVO;
import com.hanulso.mapper.MapMapper;

import lombok.Setter;

@Service
public class MapServiceImpl implements MapService{
	
	@Setter(onMethod_ = @Autowired)
	private MapMapper mapper;
	

	@Override
	public List<ProductVO> map_view_list() {
		return mapper.map_view_list();
	}
	
	

}
