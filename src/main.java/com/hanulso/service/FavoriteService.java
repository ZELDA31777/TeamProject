package com.hanulso.service;

import com.hanulso.domain.FavoriteVO;

public interface FavoriteService {

	public void favorite_insert(int pno, String username);
	
	public FavoriteVO likecheck(int pno, String username);

	public int insertHeart(FavoriteVO fvo);
	
}
