package com.hanulso.service;

import java.util.HashMap;

import com.hanulso.domain.CorVO;
import com.hanulso.domain.UserVO;

public interface UserService {
	
	public int user_check(String username);
	
	public void mailCheckUp(String username, String password);
	
	public void mailCheckUpCor(String username, String password);
	
	public void userRegister(UserVO uvo);
	
	public void userModify(UserVO uvo);
	
	public void userCorModify(CorVO cvo);
	
	public void passwordModify(UserVO uvo);
	
	
	// 카카오 유저 회원가입
	public void kakaoUserRegister(UserVO uvo);
	
	public void corRegister(UserVO uvo, CorVO cvo);
	
	public void adminRegister(UserVO uvo);

	public UserVO user_select(String username);
	
	public CorVO member_select(String username);

	// 카카오 로그인 관련
	public String getAccessToken(String authorize_code);
	public HashMap<String, Object> getUserInfo(String access_Token);
	
	//탈퇴
	public void user_delete_user(String username);
	public void user_delete_favorite(String username);
	
}
