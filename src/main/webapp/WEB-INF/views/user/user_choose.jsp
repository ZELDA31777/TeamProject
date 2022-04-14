<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<style>
.chooseform {
	float: left;
	display: flex;
	flex-direction: column;
	padding: 64px;
	border: 1px solid rgb(245, 245, 245);
}

.chooseform>h1 {
	padding-bottom: 48px;
	font-size: 30px;
	line-height: 48px;
	letter-spacing: -0.5px;
	border-bottom: 1px solid rgb(245, 245, 245);
}

.chooseform>h2 {
	padding: 48px 0px 80px;
	color: rgb(34, 34, 34);
	font-size: 14px;
	line-height: 24px;
}
</style>
<!-- sub contents start -->
<div class="container" style="width: 80%;">
	<div class="row justify-content-between">
		<div class="col-5 chooseform">
			<h1>일반회원 가입</h1>
			<h2>원픽 서비스 이용을 위해 회원가입을 해주세요.</h2>
			<!-- 추가 -->
			<button color="blue" class="fiEZwu" onClick="location.href='/user/user_register.do'">
				<span> 일반회원 가입 </span>
			</button>
		</div>
		<div class="col-5 chooseform">
			<h1>중개사 회원 가입</h1>
			<h2>중개사 회원 이용을 위해서, 중개사 회원 가입을 해주세요.</h2>
			<!-- 추가 -->
			<button color="blue" class="fiEZwu" onClick="location.href='/user/user_register_cor.do'">
				<span> 중개사 회원 가입 </span>
			</button>
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

<script>

</script>

</body>

</html>