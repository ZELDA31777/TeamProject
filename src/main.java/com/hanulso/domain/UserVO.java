package com.hanulso.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserVO {
	private String username;
	private String password;
	private String nickname;
	private String grade;
	private String favorite;
	private String active;
	private Date regdate;
	private Date lastdate;
	
	private String kCheck;
	
	private CorVO cor;
	
}
