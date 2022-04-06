package com.hanulso.mapper;

import org.apache.ibatis.annotations.Param;

import com.hanulso.domain.CorVO;
import com.hanulso.domain.UserVO;

public interface UserMapper {
	
	public void mailCheckUp(@Param("username") String username, @Param("password") String password);
	
	public void user_insert(UserVO uvo);
	
	public void admin_insert(UserVO uvo);
	
	public void cor_insert_1st(UserVO uvo);
	public void cor_insert_2nd(CorVO uvo);
	
	public UserVO user_select(String username);
	
	public CorVO member_select(String username);
	
}
