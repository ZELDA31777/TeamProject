package com.hanulso.domain;

import lombok.Data;

@Data
public class CorVO {
	private String username;
	private String corname;
	private String cornum;
	private String tel;
	private String addr;
	private String profile;
	private String name;
	private double lng;
	private double lat;
	
	private int pc; // one_premium 테이블의 pcheck 값 (null도 0으로 간주)
}
