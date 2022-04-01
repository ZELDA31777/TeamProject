package com.hanulso.service;

import com.hanulso.domain.UserVO;
import com.hanulso.domain.CorVO;

public interface UserService {

	
	public void userRegister(UserVO uvo);
	
	public void corRegister(UserVO uvo, CorVO cvo);
	
}
