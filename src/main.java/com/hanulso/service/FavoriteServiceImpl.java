package com.hanulso.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.FavoriteVO;
import com.hanulso.mapper.FavoriteMapper;

import lombok.Setter;

@Service
public class FavoriteServiceImpl implements FavoriteService {
	
	@Setter(onMethod_ = @Autowired)
	private FavoriteMapper mapper;
	
	@Override
	public void favorite_insert(FavoriteVO fvo) {
		mapper.favorite_insert(fvo);
	}

}
