package com.hanulso.domain;

import java.util.Date;

import lombok.Data;

@Data
public class PremiumVO {
	private String merchant_uid;
	private Date pRegdate;
	private Date pLastdate;
	private int pCheck;
	private String username;
}
