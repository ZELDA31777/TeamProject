package com.hanulso.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hanulso.domain.Criteria;
import com.hanulso.domain.KnowledgeVO;

@Mapper
public interface NoticeMapper {

	//public List<KnowledgeVO> notice_list();
	public void notice_write(KnowledgeVO vo);
	public KnowledgeVO notice_view(int notice_no);
	public void notice_delete(int notice_no);
	public void notice_modify(KnowledgeVO vo);
	
	public List<KnowledgeVO> notice_list(Criteria cri);
	public int getTotalCount(Criteria cri);
	
}
