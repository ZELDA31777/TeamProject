package com.hanulso.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.UserVO;
import com.hanulso.mapper.UserMapper;

import lombok.Setter;

@Service
public class UserServiceImpl implements UserService {
	
	@Setter(onMethod_=@Autowired)
	private UserMapper mapper;
	
	@Override
	public void userRegister(UserVO uvo) {
		mapper.user_insert(uvo);
	}
}
