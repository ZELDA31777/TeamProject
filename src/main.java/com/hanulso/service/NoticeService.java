package com.hanulso.service;

import java.util.List;

import com.hanulso.domain.KnowledgeVO;

public interface NoticeService {
	
	public List<KnowledgeVO> notice_list();
	public void notice_write(KnowledgeVO vo);
	public KnowledgeVO notice_view(int notice_no);
	public void notice_delete(int notice_no);
	public void notice_modify(KnowledgeVO vo);
	
}
