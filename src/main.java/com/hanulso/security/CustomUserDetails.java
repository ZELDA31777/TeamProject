package com.hanulso.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.hanulso.domain.UserVO;

import lombok.Getter;

@Getter
public class CustomUserDetails extends User{
	
	private static final long serialVersionUID = 1L;
	
	private UserVO user;
	
	public CustomUserDetails(String username, String password,
							Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	public static List<String> gradeListMake(UserVO uvo){
		List<String> gradeList = new ArrayList<String>();
		gradeList.add(uvo.getGrade());
		System.out.println(gradeList);
		return gradeList;
	}
	
	public CustomUserDetails(UserVO uvo) {
		super(uvo.getUsername(),uvo.getPassword(),gradeListMake(uvo).stream().map(auth ->
		new SimpleGrantedAuthority(auth)).collect(Collectors.toList()));
		this.user = uvo;
	}
	
}
