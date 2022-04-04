package com.hanulso.mapper;

import com.hanulso.domain.UserVO;
import com.hanulso.domain.CorVO;

public interface UserMapper {
	
	public void user_insert(UserVO uvo);
	
	public void admin_insert(UserVO uvo);
	
	public void cor_insert_1st(UserVO uvo);
	public void cor_insert_2nd(CorVO uvo);
	
	public UserVO user_select(String username);
	
	public CorVO member_select(String username);
	
}
