package com.hanulso.domain;

import lombok.Data;

@Data
public class FavoriteVO {
	private String username; // 관심목록 추가한 유저
	private int pno; // 관심목록 추가된 매물
	private int idx; // Count 및 정렬을 위한 PK
	private int heart;
}
