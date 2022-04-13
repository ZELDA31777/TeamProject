package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.*;

public interface AlertService {
	
	public List<KnowledgeVO> notice_list();

	public List<AlertVO> alert_list(String loginuser, int alertCnt);
	
	// 상품이 등록되었을 경우, 해당 상품의 지역이 관심지역인 유저에게 모두 알림 전송
	// Product Controller에서 호출
	public int alert_insert(int pno, String addr2);
	
}
