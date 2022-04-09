package com.hanulso.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class CorInfoVO {
	private String username;
	private String corname;
	private String cornum;
	private String tel;
	private String addr;
	private String profile;
	private String name;
	private String active;
	private Date regdate;
	
}
