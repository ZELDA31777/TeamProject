package com.hanulso.domain;

import lombok.Data;

@Data
public class Criteria {
	
	//페이지처리
	private int pageNum;
	private int amount; //한페이지에 출력하고자 하는 게시글 개수
		
	//검색
	private String type;
	private String keyword;
		
	public Criteria() {
		this(1,10);
	}
		
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
}
