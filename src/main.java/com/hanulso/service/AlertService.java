package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.*;

public interface AlertService {
	
	public List<KnowledgeVO> notice_list();

	public List<AlertVO> alert_list(String loginuser, int alertCnt);
}
