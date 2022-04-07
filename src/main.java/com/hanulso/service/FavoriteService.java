package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.FavoriteVO;
import com.hanulso.domain.ProductVO;

public interface FavoriteService {

	public void favorite_insert(int pno, String username);
	
	public FavoriteVO likecheck(int pno, String username);

	public int insertHeart(FavoriteVO fvo);

	public List<ProductVO> favorite_list(String username);
}

