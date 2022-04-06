package com.hanulso.mapper;

import java.util.List;

import com.hanulso.domain.FavoriteVO;

public interface FavoriteMapper {
		
	public List<FavoriteVO> favorite_list();
	
	public void favorite_insert(FavoriteVO fvo);
	
}
