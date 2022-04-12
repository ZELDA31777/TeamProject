package com.hanulso.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AlertVO {
	private int idx;
	private Date regdate;
	private int pno;
	private ProductVO product;
	private String username;
}
