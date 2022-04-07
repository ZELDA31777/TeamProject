<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!-- sub contents start -->

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
	<a href="/user/user_login.do"><button type="button" class="btn btn-light">로그인</button></a>
	</div>
	</div>
	</sec:authorize>
	
	<!-- 회원 알림내용 -->		
	<sec:authorize access="hasAnyRole('USER' , 'MEMBER')">	
	
<ul class="nav nav-tabs nav-fill" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">추천</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">공지</button>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
  <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
		<div class="col p-4 d-flex flex-column position-static">
			<div class="row">
				<div class="col-md-3">
					<!-- 알람 대상의 사진 -->
					<img src="/resources/images/ex_000.png">
				</div>
				<div class="col-md-2 ">
					<!-- 알람 대상의 정보 -->
					<div class="fzGgeZ">
						<p class="hybbHD">투룸</p>
						<p class="eswqdM">월세 1000/65</p>
					</div>
				</div>
				<!-- 알람 대상의 상세 정보 -->
				<div class="col-md-6 bSKZAI">
					<p class="eHtuHa">반지층, 42.97m², 관리비 6만</p>
					<p class="eHtuHa">7호선 신대방삼거리역 도보 5분도 안걸리는 원룸 아닙니다 투룸에 이 가격 위치
						채광까지 갖춘 문의 정말 많이오는 실매물</p>
				</div>
				<div class="col-md-1">
					<!-- 알람 마크 -->
					<%@ include file="../include/interest_img.jsp"%>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
		<div class="col p-4 d-flex flex-column position-static">
			<div class="row">
				<div class="col-md-3">
					<!-- 알람 대상의 사진 -->
					<img src="/resources/images/ex_000.png">
				</div>
				<div class="col-md-2 ">
					<!-- 알람 대상의 정보 -->
					<div class="fzGgeZ">
						<p class="hybbHD">투룸</p>
						<p class="eswqdM">월세 1000/65</p>
					</div>
				</div>
				<!-- 알람 대상의 상세 정보 -->
				<div class="col-md-6 bSKZAI">
					<p class="eHtuHa">반지층, 42.97m², 관리비 6만</p>
					<p class="eHtuHa">7호선 신대방삼거리역 도보 5분도 안걸리는 원룸 아닙니다 투룸에 이 가격 위치
						채광까지 갖춘 문의 정말 많이오는 실매물</p>
				</div>
				<div class="col-md-1">
					<!-- 알람 마크 -->
					<%@ include file="../include/interest_img.jsp"%>
				</div>
			</div>
		</div>
	</div>
  </div>
  
  
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
  	<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
		
		<c:if test="${!empty list}">
		<c:set var="num" value="1"/>
		<c:forEach var="list" items="${list}">
			<div class="row">
			<div class="col-md-2">
			${num}
			</div>
			<div class="col-md-7">
			<a href="/notice/notice_view.do?notice_no=${list.notice_no}">${list.notice_title}</a>
			</div>
			<div class="col-md-3">
			<fmt:formatDate value="${list.notice_regdate}" pattern="yyyy-MM-dd"/>
			</div>
			</div>
		<c:set var="num" value="${num+1}"/>	
		</c:forEach>
		</c:if>
	</div>

  </div>
</div>
	</sec:authorize>

	

	
	
	
	
</div>

<!-- sub contents end -->
<%@ include file="../include/footer.jsp"%>
</body>
</html>