<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!-- sub contents start -->

<div class="container sub_title"
	style="margin-bottom: 16px; padding-bottom: 16px; border-bottom: 1px solid rgb(245, 245, 245);">
	<h1 class="sub_title_text">관심목록</h1>
</div>

<div class="container">
	<!-- 비회원 알림 내용 -->
	<sec:authorize access="isAnonymous()">
		<div align="center" style="padding-top: 5%;">
			로그인이 필요한 서비스입니다.
			<div style="padding-top: 2%;">
				<a href="/user/user_login.do"><button type="button"
						class="btn btn-light">로그인</button></a>
			</div>
		</div>
	</sec:authorize>
</div>

<!-- sub contents end -->
<%@ include file="../include/footer.jsp"%>
</body>
<script>
	$(function() {
		$(".footer").css("padding-top", "4%");
		$(".test").css("overflow", "hidden");
	});
</script>
</html>