package com.hanulso.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hanulso.domain.*;

public interface AlertMapper {
	
	public List<KnowledgeVO> notice_list();

	public List<AlertVO> alert_list(@Param("loginuser") String loginuser, @Param("alertCnt") int alertCnt);
}
