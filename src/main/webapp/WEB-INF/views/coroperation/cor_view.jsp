<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

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

	<div name="profile" class="styled__Wrap-sc-11kevv2-0 iEoaqL">
		<div size="80" class="styled__Profile-sc-1rwobri-0 fYBZkD mb-4">
			<img src="/upload/${cvo.profile}" alt="" draggable="false">
		</div>
		<%--
		<div type="messenger"
			class="styled__AgentAdvantage-sc-11kevv2-1 aEvFS">
			<svg width="18" height="18" viewBox="0 0 18 18" fill="none">
				<g fill="none" fill-rule="evenodd">
				<circle cx="9" cy="9" r="9" fill="#5586F3"></circle>
				<g fill="#FFF" fill-rule="nonzero">
				<path
					d="M1.941 6.57c-.188 0-.34-.157-.34-.351V1.056C1.6.474 2.058 0 2.623 0s1.024.474 1.024 1.056v4.693c0 .195-.153.352-.341.352-.189 0-.342-.157-.342-.352V1.056c0-.194-.152-.352-.34-.352-.19 0-.342.158-.342.352v5.163c0 .194-.153.352-.342.352z"
					transform="translate(5 3.5)"></path>
				<path
					d="M4.672 6.101c-.188 0-.341-.157-.341-.352V3.872c0-.194-.153-.352-.342-.352-.188 0-.34.158-.34.352 0 .194-.154.352-.342.352-.189 0-.342-.158-.342-.352 0-.582.46-1.056 1.024-1.056.565 0 1.024.474 1.024 1.056v1.877c0 .195-.152.352-.34.352z"
					transform="translate(5 3.5)"></path>
				<path
					d="M6.037 6.101c-.188 0-.34-.157-.34-.352V4.341c0-.193-.154-.352-.342-.352-.189 0-.342.159-.342.352 0 .195-.152.352-.34.352-.19 0-.342-.157-.342-.352 0-.582.46-1.056 1.024-1.056.565 0 1.024.474 1.024 1.056V5.75c0 .195-.153.352-.342.352z"
					transform="translate(5 3.5)"></path>
				<path
					d="M5.582 10.795h-2.52c-.549 0-1.174-.327-1.715-.896C.469 8.975-.02 7.63.008 6.203c.017-.897.733-1.627 1.594-1.627h.34c.188 0 .34.158.34.352 0 .194-.152.352-.34.352h-.34c-.5 0-.9.411-.91.936-.035 1.758.788 2.817 1.143 3.19.407.429.866.685 1.227.685h2.52c.816 0 1.48-.685 1.48-1.526V4.811c0-.194-.153-.352-.342-.352-.188 0-.341.158-.341.352 0 .194-.153.352-.342.352-.188 0-.34-.158-.34-.352 0-.582.458-1.056 1.023-1.056s1.024.474 1.024 1.056v3.754c0 1.23-.97 2.23-2.162 2.23z"
					transform="translate(5 3.5)"></path></g></g></svg>
			<p>간편문의를 사용하는 중개사무소입니다.</p>
		</div>
--%>
		<p class="styled__AgentName-sc-11kevv2-2 kZxOhb">${cvo.corname }</p>
	</div>
	<div class="container" style="width: 80%">
		<ul class="styled__Ul-y3tp2k-0 uJPcK">
			<li><p class="styled__Name-y3tp2k-1 exSEvD">중개사무소명</p>
				<div class="styled__Value-y3tp2k-2 dxmkoB">${cvo.corname }</div></li>
			<li><p class="styled__Name-y3tp2k-1 exSEvD">대표자명</p>
				<div class="styled__Value-y3tp2k-2 dxmkoB">${cvo.name }</div></li>
			<li><p class="styled__Name-y3tp2k-1 exSEvD">전화번호</p>
				<div class="styled__Value-y3tp2k-2 POjih">${cvo.tel }</div></li>
			<li><p class="styled__Name-y3tp2k-1 exSEvD">사업자등록번호</p>
				<div class="styled__Value-y3tp2k-2 dxmkoB">${cvo.cornum }</div></li>
			<li><p class="styled__Name-y3tp2k-1 exSEvD">다방가입일</p>
				<div class="styled__Value-y3tp2k-2 dxmkoB">
					<fmt:formatDate pattern="yyyy-MM-dd" value="${uvo.regdate}" />
				</div></li>
			<li><p class="styled__Name-y3tp2k-1 exSEvD">최근접속일</p>
				<div class="styled__Value-y3tp2k-2 dxmkoB">
					<fmt:formatDate pattern="yyyy-MM-dd" value="${uvo.lastdate}" />
				</div></li>
			<li><p class="styled__Name-y3tp2k-1 exSEvD">등록된 방 수</p>
				<div class="styled__Value-y3tp2k-2 dxmkoB">${pcnt}개의방</div></li>
			<li style="width: 66.6%;"><p
					class="styled__Name-y3tp2k-1 exSEvD">주소</p>
				<div class="styled__Value-y3tp2k-2 dxmkoB" style="flex-grow: 1;">
					${cvo.addr }
					<%--
					<button class="styled__CopyBtn-y3tp2k-4 klmVxc">
						<svg width="12" height="14" viewBox="0 0 12 14">
							<g fill="#979797" fill-rule="nonzero">
							<path d="M1 4v9h7V4H1zM0 3h9v11H0V3z"></path>
							<path d="M4 1v.987H3V0h9v11h-1.988v-1H11V1z"></path></g></svg>
					</button>
 --%>
				</div></li>
		</ul>
	</div>




	<div name="room" class="container dWqXbC" style="width: 80%">
		<div class="styled__TabWrap-sc-1j5nm8l-1 bKTJew">
			<p class="styled__Tab-sc-1j5nm8l-2 gYpPYH">
				이 부동산의 방<span>&nbsp;${pcnt}</span>
			</p>
		</div>

		<!-- 중개사 로그인 시에만 매물등록 가능 -->
		<sec:authorize access="hasRole('MEMBER')">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-10"></div>
					<div class="col-md-2">
						<a href="/product/product_write3.do">
							<button color="blue" class="fiEZwu3">
								<span><span id="cor_change">매물 등록</span></span>
							</button>
						</a>
					</div>
				</div>
			</div>
		</sec:authorize>

		<!-- 이 부동산의 방 -->
		<ul class="styled__CardWrap-sc-144mdah-1 cNzXuD">
			<c:if test="${!empty pList }">
				<c:forEach var="pList" items="${pList }">
					<li><div class="styled__CardWrap-sc-1e0j1a1-0 hObDcQ">
							<div onClick="pSend(this)" data-pno="${pList.pno}" class="bwyaas">
								<div class="hkMQhb">
									<div class="gMnRzx">
										<img src="/upload/${pList.thumbnail }" width="60" height="60"
											alt="매물 사진" draggable="false" loading="lazy"
											style="width: 100%; height: 100%;">
										<div class="styled__Cover-ami2sx-1 dZAvTS cover"></div>
									</div>
								</div>
								<div class="bSKZAI">
									<p class="hybbHD">
										<c:if test="${pList.type eq 0 }">원룸</c:if>
										<c:if test="${pList.type eq 1 }">오피스텔</c:if>
									</p>
									<h1 class="iJlOig">월세 : ${pList.rent } 보증금 :
										${pList.deposit }</h1>
									<p class="eHtuHa">${pList.floor }층,면적:${pList.area }m²,관리비
										: ${pList.manage }만</p>
									<p class="eHtuHa">${pList.contents }</p>
									<div class="styled__TagWrap-sc-1e0j1a1-11 hRcMAS"></div>
								</div>
							</div>
						</div></li>
				</c:forEach>
			</c:if>
		</ul>
	</div>
	<!-- sub contents end -->

	<!-- 다른 매물 뷰로 넘어가기 시작-->
	<sec:authorize access="isAuthenticated()">
		<c:set var="username">
			<sec:authentication property="principal.user.username" />
		</c:set>
	</sec:authorize>

	<form name="productForm" action="/product/product_view.do"
		method="post">
		<input type="hidden" name="${_csrf.parameterName }"
			value="${_csrf.token }"> <input type="hidden" name="username"
			value="${username}"> <input type="hidden" name="pno" value="">
	</form>


	<script>
		function pSend(el) {
			productForm.pno.value = el.dataset.pno;
			productForm.submit();
		}
	</script>
	<!-- 다른 매물 뷰로 넘어가기  끝 -->

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