/**
 *  juso.go.kr - 주소 검색 api (팝업창)
 */

 function goPopup(){
	// 호출된 페이지(jusoPopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    var pop = window.open("/include/jusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    
	// 모바일 웹인 경우, 호출된 페이지(jusoPopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}

/** API 서비스 제공항목 확대 (2017.02) **/
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,jibunAddr, zipNo
						, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, lnbrMnnm, lnbrSlno){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	
	if (siNm.includes("대전광역시")) {
		$("#addr1").val(sggNm);
		$("#addr2").val(emdNm);
		var addr3 = roadAddrPart1.substring(roadAddrPart1.indexOf(sggNm)+sggNm.length+1);
		if (addrDetail != "") addr3 += ", " + addrDetail;
		addr3 += " "+roadAddrPart2;
		$("#addr3").val(addr3);
		$("#addr").val(roadFullAddr);
		$("#addr").change();
		
		
		var googleGeocodeKey = "AIzaSyCPxvrQTmFrf14CPepU3kV_wb8wIpwrwSs";
		if (googleGeocodeKey == "") alert("구글 geocode api키를 juso_api.js에 입력해주세요.");
		
		
		
		var reqUrl = "https://maps.googleapis.com/maps/api/geocode/json?address="+encodeURIComponent(roadFullAddr)+"&language=ko&region=kr&key="+googleGeocodeKey;
		
		$.ajax({
			url : reqUrl,
			dataType : "json",
		}).done(function(data){
			console.log(data);
			$("#lat").val(data.results[0].geometry.location.lat);
			$("#lng").val(data.results[0].geometry.location.lng);
			
			
		}).fail(function(jqXHR, textStatus){
			console( "Request failed: " + textStatus );
		});
		
	} else {
		alert("대전광역시 지역만 입력가능합니다.");
	}
	
}

