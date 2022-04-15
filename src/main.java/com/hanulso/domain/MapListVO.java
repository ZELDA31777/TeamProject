package com.hanulso.domain;

import java.util.List;

import lombok.Data;

@Data
public class MapListVO {
	
	public MapListVO (List<CorVO> clist, List<ProductVO> plist) {
		this.clist = clist;
		this.plist = plist;
	}
	
	private List<CorVO> clist;
	private List<ProductVO> plist;
}
