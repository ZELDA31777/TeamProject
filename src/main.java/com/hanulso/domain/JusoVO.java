package com.hanulso.domain;

import lombok.Data;

@Data
public class JusoVO {
	private String inputYn;			// "Y"이면 결과값을 받아온것
	private String roadFullAddr;	// 전체 도로명주소
	private String roadAddrPart1;	// 도로명주소(참고항목 제외)
	private String roadAddrPart2;	// 도로명주소 참고항목
	private String jibunAddr;		// 지번주소
	private String zipNo;			// 우편번호
	private String addrDetail;		// 고객 입력 상세 주소
	private String detBdNmList;		// 상세건물명
	private String bdNm;			// 건물명
	private String bdKdcd;			// 공동주택여부(1 : 공동주택, 0 : 비공동주택)
	private String siNm;			// 시도명
	private String sggNm;			// 시군구명
	private String emdNm;			// 읍면동명
	private String rn;				// 도로명
	private String udrtYn;			// 지하여부(0 : 지상, 1 : 지하)
	private int buldMnnm;			// 건물본번
	private int buldSlno;			// 건물부번
	private int lnbrMnnm;			// 지번본번(번지)
	private int lnbrSlno;			// 지번부번(호)
}
