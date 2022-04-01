package com.hanulso.domain;

import java.util.List;

import lombok.Data;

@Data
public class UserVO {
	private String email;
	private String passwd;
	private String nickname;
	private String grade;
	private String favorite;
	private String active;
	
}
