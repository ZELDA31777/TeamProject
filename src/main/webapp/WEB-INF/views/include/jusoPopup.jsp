<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소 팝업</title>
<script>
function init(){
	var url = location.href;
	var confmKey = "devU01TX0FVVEgyMDIyMDQwMzIzMTEzNjExMjQxNDk=";//승인키
	// resultType항목 추가(2016.10.06)
	var resultType = "4"; // 도로명주소 검색결과 화면 출력유형, 1 : 도로명, 2 : 도로명+지번+상세보기(관련지번, 관할주민센터), 3 : 도로명+상세보기(상세건물명), 4 : 도로명+지번+상세보기(관련지번, 관할주민센터, 상세건물명)
	var inputYn= "${jusoVO.inputYn}";
	if(inputYn != "Y"){
		document.form.confmKey.value = confmKey;
		document.form.returnUrl.value = url;
		document.form.resultType.value = resultType; // resultType항목 추가(2016.10.06)
		document.form.action="https://www.juso.go.kr/addrlink/addrLinkUrl.do"; // 인터넷망
		//document.form.action="https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do"; //모바일 웹인 경우, 인터넷망
		document.form.submit();
	}else{
		/** API 서비스 제공항목 확대 (2017.02) **/
		opener.jusoCallBack("${jusoVO.roadFullAddr}","${jusoVO.roadAddrPart1}","${jusoVO.addrDetail}", "${jusoVO.roadAddrPart2}", "${jusoVO.jibunAddr}","${jusoVO.zipNo}"
			, "${jusoVO.detBdNmList}", "${jusoVO.bdNm}", "${jusoVO.bdKdcd}", "${jusoVO.siNm}", "${jusoVO.sggNm}", "${jusoVO.emdNm}", "${jusoVO.rn}", "${jusoVO.udrtYn}"
			, "${jusoVO.buldMnnm}", "${jusoVO.buldSlno}", "${jusoVO.lnbrMnnm}", "${jusoVO.lnbrSlno}");
		window.close();
	}
}
</script>
</head>
<body>
<body onload="init();">
	<form id="form" name="form" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		<input type="hidden" id="confmKey" name="confmKey" value=""/>
		<input type="hidden" id="returnUrl" name="returnUrl" value=""/>
		<input type="hidden" id="resultType" name="resultType" value=""/>
	</form>
</body>
</body>
</html>