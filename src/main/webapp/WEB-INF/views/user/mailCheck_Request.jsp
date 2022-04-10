<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<!-- sub contents start -->
	<c:set var="username">
		<sec:authentication property="principal.user.username"/>
	</c:set>
	
	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
	<input type="hidden" name="username" value="${username}">
	<div class="container">
		<h1>메일 확인</h1>
		<p>메일을 확인해 주세요.</p>
		<p>이메일 인증을 진행하면 원픽 서비스들을 이용하실 수 있습니다.</p>
		<p>이메일 : ${username }</p>
	</div>

<!-- sub contents end -->

<%@ include file="../include/footer.jsp"%>

<script>
	
</script>

<!-- jquery를 기반으로 로드함 -->
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</body>

</html>