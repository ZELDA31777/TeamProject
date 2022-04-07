package com.hanulso.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.hanulso.mapper.UserMapper;
import com.hanulso.domain.UserVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService{

	@Setter(onMethod_ = @Autowired)
	private UserMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserVO uvo = mapper.user_select(username);
		
		if(uvo.getGrade().contains("ROLE_MEMBER")) {
			uvo.setCor(mapper.member_select(username));
		}
			
		log.warn("userMapper : " + uvo);
		return uvo == null ? null : new CustomUserDetails(uvo);
	}
}
