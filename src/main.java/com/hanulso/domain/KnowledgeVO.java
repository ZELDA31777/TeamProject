package com.hanulso.domain;

import java.util.Date;

import lombok.Data;

@Data
public class KnowledgeVO {
	
	private int tip_no;				//가이드앤팁 번호
	private String tip_title;		//가이드앤팁 제목
	private String tip_content;		//가이드앤팁 내용
	private Date tip_regdate;		//가이드앤팁 날자
	
	private int notice_no;			//공지사항 번호
	private String notice_title;	//공지사항 제목
	private String notice_content;	//공지사항 내용
	private Date notice_regdate;	//공지사항 날자
	

}
