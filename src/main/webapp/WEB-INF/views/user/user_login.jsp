<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>


<noscript>
	<div style="display: inline;">
		<img height="1" width="1" style="border-style: none;" alt=""
			src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/967706247/?value=1.00&amp;currency_code=KRW&amp;label=-DVwCMLN3FoQh424zQM&amp;guid=ON&amp;script=0" />
	</div>
</noscript>

<!-- sub contents start -->
<div class="container-fluid subcontent">
	<div class="container" style="width: 50%">
		<form class="needs-validation" method="post" action="/login" novalidate>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			<div class="styled__Box-sc-1etb7tu-1 cubPeM">
				<h1>로그인</h1>
				<h2>원픽 서비스 이용을 위해 로그인해주세요.</h2>
				<div class="input-with-label__InputWrap-sc-1p3gkts-0 eVAGdp">
					<label class="bDaqny">
						<p class="label-text">이메일</p> 
						<input type="text" name="username" class="form-control kHDHPO" id="validationCustom01"
						placeholder="이메일 주소 입력"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
						required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">이메일을 입력해주십시오.</div>
					</label>
				</div>
				<div class="input-with-label__InputWrap-sc-1p3gkts-0 eVAGdp">
					<label class="input-with-label__Label-sc-1p3gkts-1 bDaqny">
						<p class="label-text">비밀번호</p> 
						<input type="password" name="password"
						placeholder="비밀번호 입력"
						class="form-control kHDHPO"
						id="validationCustom02" minlength="8" required>
					<div class="valid-feedback">확인되었습니다</div>
					<div class="invalid-feedback">비밀번호를 입력해주십시오.</div>
					</label>
				</div>
				<div class="styled__BetweenBox-sc-11t199e-4 dRLayg">
					<label class="input-with-label__Label-sc-1p3gkts-1 bDaqny">
						<label class="label-checkbox__Label-sc-7y17oo-0 dkAjDR"> <input
							type="checkbox" name="isSaved"
							class="label-checkbox__Checkbox-sc-7y17oo-1 PCjET">
							<p class="label-text">아이디 저장</p>
					</label>
					</label>
					<div>
						<a href="user_choose.do"><p class="caption1 bold">회원가입</p></a>
						<span></span>
						<p class="caption1 bold">비밀번호 재설정</p>
					</div>
				</div>
				<!-- 추가 -->
				<button color="blue" class="button__Button-sc-153m1au-0 fiEZwu"
					type="submit" style="margin-top: 32px;">
					<span> 확인 </span>
				</button>
				
				<!-- 카카오로그인 -->
				<a class="p-2" href="https://kauth.kakao.com/oauth/authorize?client_id=ec529ddcb0a1e3f154fc6847679fe18a&redirect_uri=http://localhost:8123/user/kakaoLogin.do&response_type=code">
				<img src="/resources/images/kakao_login.png"></a>
				
			</div>
		</form>
	</div>
</div>


<script>
	(function() {
		'use strict'
		// Fetch all the forms we want to apply custom Bootstrap validation styles to
		var forms = document.querySelectorAll('.needs-validation')

		// Loop over them and prevent submission
		Array.prototype.slice.call(forms).forEach(function(form) {
			form.addEventListener('submit', function(event) {
				if (!form.checkValidity()) {
					event.preventDefault()
					event.stopPropagation()
				}
				form.classList.add('was-validated')
			}, false)
		})
	})()
</script>


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