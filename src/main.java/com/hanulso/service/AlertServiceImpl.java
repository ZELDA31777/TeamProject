package com.hanulso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.*;
import com.hanulso.mapper.AlertMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AlertServiceImpl implements AlertService{

	@Setter(onMethod_ = @Autowired)
	private AlertMapper mapper;
	
	@Override
	public List<KnowledgeVO> notice_list() {
		return mapper.notice_list();
	}
	
	@Override
	public List<AlertVO> alert_list(String loginuser, int alertCnt) {
		return mapper.alert_list(loginuser, alertCnt);
	}
	
	// 상품이 등록되었을 경우, 해당 상품의 지역이 관심지역인 유저에게 모두 알림 전송(알림테이블에 글 작성)
	// Product Controller에서 호출
	@Override
	public int alert_insert(int pno, String addr2) {
		int result = 0;
		for (String username : mapper.userListFavorite(addr2)) {
			int row = mapper.alert_insert(username, pno);
			if (row==0) {
				log.warn("insert 실패? username: "+username+"  pno : "+pno);
			} else {
				result += row;
			}
		}
		return result;
	}
}
