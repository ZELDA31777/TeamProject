<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<noscript>
	<div style="display: inline;">
		<img height="1" width="1" style="border-style: none;" alt=""
			src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/967706247/?value=1.00&amp;currency_code=KRW&amp;label=-DVwCMLN3FoQh424zQM&amp;guid=ON&amp;script=0" />
	</div>
</noscript>


<style>
.box {
	width: 100px;
	height: 100px;
	border-radius: 70%;
	overflow: hidden;
	margin: 0px auto;
	text-align: center;
}

.center {
	text-align: center;
}

.profile {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.tbl {
	width: 80%;
	margin: 0px auto;
}
</style>
</head>
<body>

	<!-- %가 앞에붙은것은 뽑아올것 -->

	<br>
	<div class="box" style="text-align: center">
		<img img class="profile" src="/resources/images/o_000.png">
	</div>
	<br>
	<div class="center">%공인중개사이름</div>
	<br>
	<br>
	<div class="tbl">
		<table class="table table-striped">
			<tr>
				<td>중개사사무소명</td>
				<td>%중개사사무소명</td>
				<td>대표자명</td>
				<td>%대표자명</td>
				<td>전화번호</td>
				<td>%전화번호</td>
			</tr>
			<tr>
				<td>사업자등록번호</td>
				<td>%사업자등록번호</td>
				<td>원픽가입일</td>
				<td>%원픽가입일</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>주소</td>
				<td colspan="5">%주소 <a href="#">ㅁ</a></td>
			</tr>
		</table>
	</div>

	<div class="tbl">
		<div class="row">
			<h4 align="center">이 부동산의 방(%카운트)</h4>
			<br>
			<br>

			<div class="col-md-3">
				<img src="/resources/images/m_003.jpg" style="width: 100%;"> %방타입<br>
				%월세<br> %총면적<br> %설명<br>
			</div>

			<div class="col-md-3">
				<img src="/resources/images/m_003.jpg" style="width: 100%;"> %방타입<br>
				%월세<br> %총면적<br> %설명<br>
			</div>

			<div class="col-md-3">
				<img src="/resources/images/m_003.jpg" style="width: 100%;"> %방타입<br>
				%월세<br> %총면적<br> %설명<br>
			</div>

			<div class="col-md-3">
				<img src="/resources/images/m_003.jpg" style="width: 100%;"> %방타입<br>
				%월세<br> %총면적<br> %설명<br>
			</div>

			<div class="col-md-3">
				<img src="/resources/images/m_003.jpg" style="width: 100%;"> %방타입<br>
				%월세<br> %총면적<br> %설명<br>
			</div>

		</div>
	</div>




	<!-- sub contents end -->

	<%@ include file="../include/footer.jsp"%>

	<!-- jquery를 기반으로 로드함 -->
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</body>

</html>