package com.hanulso.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hanulso.domain.CorVO;
import com.hanulso.domain.ProductVO;
import com.hanulso.domain.UserVO;

public interface UserMapper {
	
	public void mailCheckUp(@Param("username") String username, @Param("password") String password);
	
	public void mailCheckUpCor(@Param("username") String username, @Param("password") String password);
	
	public int user_check(@Param("username") String username);
	
	public void user_insert(UserVO uvo);
	
	public void user_update(UserVO uvo);
	
	public void user_cor_update(CorVO cvo);
	
	public void passwordModify(UserVO uvo);
	
	// 카카오 유저 회원가입
	public void kakao_user_insert(UserVO uvo);
	
	public void admin_insert(UserVO uvo);
	
	public void cor_insert_1st(UserVO uvo);
	public void cor_insert_2nd(CorVO uvo);
	
	public UserVO user_select(String username);
	
	public CorVO member_select(String username);
	
	//유저 탈퇴
	public void user_delete_user(String username);
	public void user_delete_favorite(String username);
	public void user_delete_alert(String username);
	
	//중개사 탈퇴
	public List<ProductVO> cor_product_select(String username);
	public void cor_delete_alert(ProductVO pvo);
	public void cor_delete_favorit(ProductVO pvo);
	public void cor_delete_product(String username);
	public void cor_delete_cor(String username);
	public void cor_delete_user(String username);
	public void cor_delete_premium(String username);
	
}
