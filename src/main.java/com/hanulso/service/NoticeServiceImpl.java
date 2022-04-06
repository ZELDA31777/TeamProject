package com.hanulso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanulso.domain.Criteria;
import com.hanulso.domain.KnowledgeVO;
import com.hanulso.mapper.NoticeMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class NoticeServiceImpl implements NoticeService{
	
	@Setter(onMethod_ = @Autowired)
	private NoticeMapper mapper;
	
//	@Override
//	public List<KnowledgeVO> notice_list() {
//		return mapper.notice_list();
//	}
	
	@Override
	public void notice_write(KnowledgeVO vo) {
		mapper.notice_write(vo);
	}
	
	@Override
	public KnowledgeVO notice_view(int notice_no) {
		KnowledgeVO vo = mapper.notice_view(notice_no);
		return vo;
	}
	
	@Override
	public void notice_delete(int notice_no) {
		mapper.notice_delete(notice_no);
	}
	
	@Override
	public void notice_modify(KnowledgeVO vo) {
		mapper.notice_modify(vo);
	}
	
	@Override
	public int getTotalCount(Criteria cri) {
		return mapper.getTotalCount(cri);
	}
	
	@Override
	public List<KnowledgeVO> notice_list(Criteria cri) {
		return mapper.notice_list(cri);
	}
	
}
