package com.hanulso.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
	private int pno;
	private int type;
	private int deposit;
	private int rent;
	private int manage;
	private double area;
	private int floor;
	private int totalfloor;
	private int room;
	private int shower;
	private String addr1;
	private String addr2;
	private String addr3;
	private double lat;
	private double lng;
	private String picture;
	private String thumbnail;
	private String contents;
	private int fulloption;
	private int readcnt;
	private Date regdate;
	private Date selldate;
	private String username;
	
	private int pc; // one_premium 테이블의 pcheck 값 (null 도 0으로 판단)
}
