package com.hanulso.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hanulso.domain.*;

public interface AlertMapper {
	
	public List<KnowledgeVO> notice_list();

	public List<AlertVO> alert_list(@Param("loginuser") String loginuser, @Param("alertCnt") int alertCnt);
	
	public int alert_insert(@Param("username") String username, @Param("pno") int pno);
	
	// addr2(특정 동)를 favorite(선호지역)으로 하는 유저 리스트
	public List<String> userListFavorite(String addr2);
}
