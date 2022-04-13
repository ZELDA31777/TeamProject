package com.hanulso.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hanulso.domain.PremiumVO;

public interface PremiumMapper {

	public void premium_insert(PremiumVO pvo);
	
	public PremiumVO premium_select(String username);
}
