<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<!-- 아임포트 라이브러리 추가 시작-->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- 아임포트 라이브러리 추가 끝-->

<!-- sub contents start -->

<!-- 비로그인 상태의 정보를 받아옴 -->
<sec:authorize access="isAnonymous()">
	<c:set var="username" value="" />
</sec:authorize>
<!-- 비로그인 상태의 정보를 받아옴 종료 -->

<!-- 현재 로그인 한 유저의 정보를 받아옴 -->
<sec:authorize access="isAuthenticated()">
	<c:set var="username">
		<sec:authentication property="principal.user.username" />
	</c:set>
	<input type="hidden" id="username1" name="username1" value="${username}">
</sec:authorize>
<!-- 현재 로그인 한 유저의 정보를 받아옴 종료 -->

<div class="container sub_title"
	style="margin-bottom: 16px; padding-bottom: 16px; border-bottom: 1px solid rgb(245, 245, 245);">
	<h1 class="sub_title_text">알림</h1>
</div>

<div class="container">

	<!-- 비회원 알림 내용 -->
	<sec:authorize access="isAnonymous()">
		<div align="center">
			로그인이 필요한 서비스입니다.
			<div>
				<a href="/user/user_login.do"><button type="button"
						class="btn btn-light">로그인</button></a>
			</div>
		</div>
	</sec:authorize>

	<!-- 회원 알림내용 -->
	<sec:authorize access="hasAnyRole('USER','MEMBER')">

		<ul class="nav nav-tabs nav-fill" id="myTab" role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active" id="profile-tab" data-bs-toggle="tab"
					data-bs-target="#profile" type="button" role="tab"
					aria-controls="profile" aria-selected="true">공지</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link " id="home-tab" data-bs-toggle="tab"
					data-bs-target="#home" type="button" role="tab"
					aria-controls="home" aria-selected="false">추천</button>
			</li>
		</ul>
		<div class="tab-content" id="myTabContent">
		
			<sec:authorize access="hasRole('USER')">
			<!-- 일반회원 추천 탭 시작 -->
			<div class="tab-pane fade" id="home" role="tabpanel"
				aria-labelledby="home-tab">
				<div
					class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<c:if test="${not empty alertList}">
						<c:forEach items="${ alertList}" var="alertvo">
							<c:set value="${alertvo.product}" var="pvo" />
							<div class="row">
								<div class="col-md-3">
									<!-- 알람 대상의 사진 -->
									<img src="/upload/${pvo.thumbnail }" style="object-fit: cover; width: 100%; cursor: pointer;" onclick="pSend(this);" data-pno="${pvo.pno}">
								</div>
								<div class="col-md-2 ">
									<!-- 알람 대상의 정보 -->
									<div class="fzGgeZ">
										<p class="hybbHD">${pvo.type==0?'원룸':'오피스텔'}</p>
										<p class="eswqdM">보증금/${pvo.deposit }만원<br>월&nbsp;세/${pvo.rent}만원</p>
									</div>
								</div>
								<!-- 알람 대상의 상세 정보 -->
								<div class="col-md-6 bSKZAI">
									<p class="eHtuHa">
										<c:choose>
											<c:when test="${pvo.floor == -1}">반지층</c:when>
											<c:when test="${pvo.floor == 0 }">옥탑</c:when>
											<c:otherwise>${pvo.floor }층</c:otherwise>
										</c:choose>
									, ${Math.round(pvo.area * 100) / 100.0}m², 관리비 ${pvo.manage }만</p>
									<p class="eHtuHa">${pvo.contents }</p>
								</div>
								<div class="col-md-1">
									<!-- 알람 마크 -->
									<%@ include file="../include/interest_img.jsp"%>
								</div>
							</div>
							</c:forEach>
							</c:if>
						<c:if test="${empty alertList}">
							<div class="container-fluid text-center">
								관심지역에 새로 등록된 매물이 없습니다.
							</div>
						</c:if>
					</div>
				</div>

			</div>
			<!-- 일반회원 추천 탭 끝 -->
			</sec:authorize>
			
			
			<sec:authorize access="hasRole('MEMBER')">
			<!-- 중개사회원 프리미엄멤버십 탭 시작 -->
			<div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
				<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
					
						<c:if test="${empty prevo }">
							<div class="row" style="width:100%">
								<img src="/resources/images/premium_membership.png">
							</div>
							<div class="row">
								<p>아직 프리미엄 회원이 아닙니다.</p>
								<p>원픽의 프리미엄 회원이 되어 더 많은 혜택을 누리세요.</p>
								<button type="button" id="iamportPayment01" class="btn btn-light">가입하기</button>
							</div>
						</c:if>
						
						<c:if test="${!empty prevo }">
							<div class="row" style="width:100%">
								<img src="/resources/images/premium_membership.png">
							</div>
							<div class="row">
								<p>프리미엄 멤버십 잔여일이</p>
								<p><span>${dayCheck }</span>&nbsp;일 남았습니다.</p>
								<button type="button" id="iamportPayment02" class="btn btn-light">연장하기</button>
							</div>
						</c:if>
						
					</div>
				</div>
			</div>
			<!-- 중개사회원 프리미엄멤버십 탭  끝 -->
			</sec:authorize>
			

			
			


			<div class="tab-pane fade show active" id="profile" role="tabpanel"
				aria-labelledby="profile-tab">
				<div
					class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">

					<div
						class="d-flex flex-column align-items-stretch flex-shrink-0 bg-white">
						<div class="d-flex align-items-center flex-shrink-0 p-3 link-dark text-decoration-none border-bottom">
							<svg class="bi me-2" width="30" height="24">
				</svg> <span class="fs-5 fw-semibold"><strong class="mb-1">총
									게시글 ${pageMaker.total}</strong></span>
						</div>



						<div class="row">
							<div class="col-md-2">번호</div>
							<div class="col-md-8">제목</div>
							<div class="col-md-2">작성일</div>
						</div>


						<c:if test="${!empty list}">
							<c:set var="num"
								value="${pageMaker.total - ((pageMaker.cri.pageNum-1)*(pageMaker.cri.amount))}" />
							<c:forEach var="list" items="${list}">

								<div
									class="list-group list-group-flush border-bottom scrollarea row">
									<a href="/notice/notice_view.do?notice_no=${list.notice_no}"
										class="list-group-item list-group-item-action py-3 lh-tight"
										aria-current="true">
										<div class="d-flex w-100 align-items-center justify-content-between">
											<div class="col-md-2">
												<strong class="mb-1">${num}</strong>
											</div>

											<div class="col-md-8">
												<small>${list.notice_title}</small>
											</div>
											<div class="col-md-2">
												<small><fmt:formatDate
														value="${list.notice_regdate}" pattern="yyyy-MM-dd" /></small>
											</div>

										</div>
									</a>
								</div>

								<c:set var="num" value="${num-1}" />
							</c:forEach>
						</c:if>
					</div>


					<div align="center" class="paging">
						<c:if test="${pageMaker.prev}">
							<a href="${pageMaker.startPage-1}"><i
								class="fa  fa-angle-double-left"></i></a>
						</c:if>
						<c:forEach var="num" begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}">
							<a href="${num}"
								class="${pageMaker.cri.pageNum == num?'active':''}">${num}</a>
						</c:forEach>
						<c:if test="${pageMaker.next}">
							<a href="${pageMaker.endPage+1}"><i
								class="fa  fa-angle-double-right"></i></a>
						</c:if>
					</div>

					<div align="center">
						<form name="searchForm" id="searchForm" method="get"
							action="/notice/notice_list.do">
							<input type="hidden" name="pageNum"
								value="${pageMaker.cri.pageNum}"> <input type="hidden"
								name="amount" value="${pageMaker.cri.amount}"> <select
								class="form-select selform" name="type">
								<option selected>선택</option>
								<option value="T">제목</option>
								<option value="C">내용</option>
							</select> <input type="text" name="keyword" class="form-control txtform">
							<button class="btn btn-light">검색</button>
						</form>
					</div>

				</div>

			</div>
		</div>
	</sec:authorize>

<form id="actionForm" action="/alert/alert_list.do" method="get">
	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	<input type="hidden" name="type" value="${pageMaker.cri.type}">
	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
</form>

</div>

<form name="productForm" action="/product/product_view.do" method="post">
	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
	<input type="hidden" name="username" value="${username}">
	<input type="hidden" name="pno" value="">
</form>

<form name="payform" action="/alert/premium_insert_pro.do" method="post">
	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
	<input type="hidden" name="username" value="${username}">
	<input type="hidden" id="merchant_uid1" name="merchant_uid">
</form>

<form name="payUpdateform" action="/alert/premium_update_pro.do" method="post">
	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
	<input type="hidden" name="username" value="${username}">
	<input type="hidden" id="merchant_uid2" name="merchant_uid">
</form>


<script>
	function pSend(el) {
		productForm.pno.value = el.dataset.pno;
		productForm.submit();
	}
</script>

<script>
	$(function() {
		var actionForm = $("#actionForm")
		$(".paging > a").on("click", function(e) {
			e.preventDefault();
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		})

		var searchForm = $("#searchForm");
		$("#searchForm button").on("click", function(e) {
			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요.");
				return false;
			}

			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();

			searchForm.submit();
		})
	})
</script>

<!-- 결제 스크립트 시작 -->
<script>
$(document).ready(function(){
	
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	
	$(document).ajaxSend(function(e, xhr, options){
		xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	});
	
	$("#iamportPayment01").on("click", function(){
		iamport(1);
	});
	
	$("#iamportPayment02").on("click", function(){
		iamport(2);
	});
})


function iamport(flag){
	//가맹점 식별코드
	IMP.init('imp72486560'); // 가맹점 식별코드
	IMP.request_pay({
	    pg : 'kakaopay.TC0ONETIME', //pg사 명
	    pay_method : 'card', // 지불방법
	    merchant_uid : 'merchant_' + new Date().getTime(), // 가맹점 주문번호, 주문번호가 겹치면 안되기 때문에 밀리초를 추가해서 중복 방지
	    name : '프리미엄 멤버십' , //결제창에서 보여질 이름
	    amount : 10, //실제 결제되는 가격
	    username : $('#username1'),
	}, function(rsp) {
		console.log(rsp);
		
		var merchant_uid = "";
	        
	    if ( rsp.success ) {
	    	var msg = '결제가 완료되었습니다.';
	    	
	    	/*
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
	        */
	        
	        var merchant_uid = rsp.merchant_uid;
	        
	        
	        
	    } else {
	    	
	    	 var msg = '결제에 실패하였습니다.';
	         msg += '에러내용 : ' + rsp.error_msg;
	         return false;
	    }
	    
	    $('#merchant_uid1').val(merchant_uid);
	    $('#merchant_uid2').val(merchant_uid);
	    
	    if(flag==1){
		    payform.submit();
	    }else{
	    	payUpdateform.submit();
	    }
	    alert(msg);
	    
	});
}

</script>
<!-- 결제 스크립트 시작 -->


<!-- sub contents end -->
<%@ include file="../include/footer.jsp"%>
</body>
</html>