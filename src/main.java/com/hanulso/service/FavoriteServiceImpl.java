package com.hanulso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.FavoriteVO;
import com.hanulso.domain.ProductVO;
import com.hanulso.domain.UserVO;
import com.hanulso.mapper.FavoriteMapper;

import lombok.Setter;

@Service
public class FavoriteServiceImpl implements FavoriteService {
	
	@Setter(onMethod_ = @Autowired)
	private FavoriteMapper mapper;
	
	@Override
	public void favorite_insert(int pno, String username) {
		mapper.favorite_insert(pno, username);
	}
	
	@Override
	public FavoriteVO likecheck(int pno, String username) {
		return mapper.likecheck(pno, username);
	}

	@Override
	public int insertHeart(FavoriteVO fvo) {
		// 좋아요가 DB에 저장이 되는것이 없으면 0이 그대로 리턴으로 넘어감
		int result = 0;
		// 좋아요가 이미 있는지 확인하는 코드
		FavoriteVO find = mapper.findHeart(fvo);
		
		// find가 null이면 좋아요가 없는 상태이므로 정보 저장
		// find가 null이 아니면 좋아요가 있는 상태이므로 정보 삭제
		if(find==null) {
			// insert의 리턴값은 DB에 성공적으로 insert된 갯수를 보내므로 result가 1이 됨
			result = mapper.insertHeart(fvo);
		} else {
			mapper.deleteHeart(fvo);
		}
	    	// 0 or 1이 담겨져서 @Controller에 보냄.
		return result;
	}
	
	@Override
	public List<ProductVO> favorite_list(String username) {
		return  mapper.favorite_list(username);
	}
	
	
}
