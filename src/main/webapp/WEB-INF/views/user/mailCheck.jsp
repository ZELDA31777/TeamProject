<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<!-- sub contents start -->

	<form name="mailForm" action="/user/mailCheck_pro.do" method="post">
	<input type="hidden" name="${_csrf.parameterName }" value=${_csrf.token }>
	<input type="hidden" name="username" value=${userVO.username }>
	<label>${userVO.username }</label>
	<input type="hidden" name="password" value=${userVO.password }>
	<input type="hidden" name="nickname" value=${userVO.nickname }>
	<input type="hidden" name="grade" value=${userVO.grade }>
	<input type="hidden" name="favorite" value=${userVO.favorite }>
	<input type="hidden" name="active" value=${userVO.active }>
	<div class="container">
		<h1>이메일 인증</h1>
		<p>회원가입을 위해 이메일 인증을 진행합니다.</p>
		<p>이메일 인증을 진행해주세요.</p>
		<button>인증하기</button>
	</div>
	</form>

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