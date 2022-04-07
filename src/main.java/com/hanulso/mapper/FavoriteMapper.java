package com.hanulso.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hanulso.domain.FavoriteVO;
import com.hanulso.domain.ProductVO;

public interface FavoriteMapper {
		
	public List<ProductVO> favorite_list(@Param("username") String username);
	
	public void favorite_insert(@Param("pno") int pno, @Param("username") String username);
	
	public FavoriteVO likecheck(@Param("pno") int pno, @Param("username") String username);

	public FavoriteVO findHeart(FavoriteVO fvo);
	
	public int insertHeart(FavoriteVO fvo);
	
	public void deleteHeart(FavoriteVO fvo);

}


