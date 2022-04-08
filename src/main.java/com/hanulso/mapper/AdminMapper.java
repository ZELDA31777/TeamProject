package com.hanulso.mapper;

import java.util.List;

import com.hanulso.domain.CorInfoVO;
import com.hanulso.domain.CorVO;
import com.hanulso.domain.Criteria;

public interface AdminMapper {

	public List<CorInfoVO> coruser_list_date(Criteria cri);
	public List<CorInfoVO> coruser_list_name(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
}
