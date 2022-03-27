<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<!-- sub contents start -->
<div class="container-fluid subcontent">
	<div class="container" style="width:30%">
				<form>
					<h1 class="h1 mb-4 fw-bolder login_mark">로그인</h1>
					<h1 class="h3 mb-3 fw-normal login_sentance">원픽 서비스 이용을 위해 로그인해주세요.</h1>
					<h1 class="h3 mb-3 fw-normal">아이디</h1>
					<div class="form-floating simple">
						<input type="email" class="form-control" id="floatingInput"
							placeholder="이메일 주소 입력">
					</div>
					<h1 class="h3 mb-3 fw-normal">비밀번호</h1>
					<div class="form-floating">
						<input type="password" class="form-control" id="floatingPassword"
							placeholder="비밀번호 입력">
					</div>
					<div class="checkbox mb-3">
						<label class="h4 mb-3 fw-normal simple"> <input
							type="checkbox" value="remember-me"> 아이디 저장
						</label>
					</div>
					<button class="w-100 btn btn-lg btn-primary" type="submit">Sign
						in</button>
				</form>
	</div>
</div>

<!-- sub contents end -->

<footer>
	<div class="container-fluid footerbg">
		<div class="container">
			<p>Copyright All rights Reserved</p>
		</div>
	</div>
</footer>

<!-- jquery를 기반으로 로드함 -->
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</body>

</html>