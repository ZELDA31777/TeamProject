package com.hanulso.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ProductSearchConditionVO {
	private int[] type;
	private int[] deposit;
	private int[] rent;
	private int[] manage;
	private int[] area;
	private int[] floor;
	private int[] totalfloor;
	private int[] room;
	private int[] shower;
	private String addr1;
	private String addr2;
	private int[] fulloption;
	
	private int flag;
}
