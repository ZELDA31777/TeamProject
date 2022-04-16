<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>


<!-- sub contents start -->
<div class="container-fluid subcontent">
	<div class="container" style="width: 50%">
		<form class="needs_validation" method="post" action="/login"
			novalidate>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}">
			<div class="styled__Box-sc-1etb7tu-1 cubPeM">
				<h1>로그인</h1>
				<h2>원픽 서비스 이용을 위해 로그인해주세요.</h2>
				<div class="input-with-label__InputWrap-sc-1p3gkts-0 eVAGdp">
					<label class="bDaqny">
						<p class="label-text">이메일</p> <input type="text" name="username"
						class="form-control kHDHPO" id="validationCustom01"
						placeholder="이메일 주소 입력"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">이메일을 입력해주십시오.</div>
					</label>
				</div>
				<div class="input-with-label__InputWrap-sc-1p3gkts-0 eVAGdp">
					<label class="input-with-label__Label-sc-1p3gkts-1 bDaqny">
						<p class="label-text">비밀번호</p> <input type="password"
						name="password" placeholder="비밀번호 입력" class="form-control kHDHPO"
						id="validationCustom02" minlength="8" required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">비밀번호를 입력해주십시오.</div>
					</label>
				</div>
				<div class="styled__BetweenBox-sc-11t199e-4 dRLayg">
					<label class="label-checkbox__Label-sc-7y17oo-0 dkAjDR"> <input
						type="checkbox" name="isSaved" id="isSaved"
						class="label-checkbox__Checkbox-sc-7y17oo-1 PCjET">
						<p class="label-text" style="margin-bottom: 0;">아이디 저장</p>
					</label>
					<div>
						<a href="user_choose.do">
							<p class="caption1 bold" style="margin-bottom: 0;">회원가입</p>
						</a> <span></span> <a href="/user/passwordReset.do">
							<p class="caption1 bold" style="margin-bottom: 0;">비밀번호 재설정</p>
						</a>
					</div>
				</div>
				<!-- 추가 -->
				<button color="blue" class="button__Button-sc-153m1au-0 fiEZwu"
					onClick="Test()"
					style="margin-top: 48px; margin-left: 48px; margin-right: 48px;">
					<span> 로그인 </span>
				</button>
				
				<button type="button" class="fiEZwu" style="background-color:transparent; border:none; background-image: url('/resources/images/kakao_login_large_wide_none.png'); background-position: 0 0; background-size: contain; background-repeat: no-repeat; margin-top: 12px; margin-left: 48px; margin-right: 48px;" onclick="location.href='https://kauth.kakao.com/oauth/authorize?client_id=ec529ddcb0a1e3f154fc6847679fe18a&redirect_uri=${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/kakaoLogin&response_type=code'">
					<span style="color: black;">카카오 로그인</span>
				</button>
				
			<%--
				<div class="container">
					<a
						href="https://kauth.kakao.com/oauth/authorize?client_id=ec529ddcb0a1e3f154fc6847679fe18a&redirect_uri=http://192.168.30.60:8123/kakaoLogin&response_type=code">
						<img src="/resources/icon/kakao_login_large_wide.png"
						style="width: -webkit-fill-available; margin-left: 32px; margin-right: 32px; margin-top: 16px;">
					</a>
				</div>
			 --%>
			 
			</div>
		</form>
	</div>
</div>

<!-- 카카오로그인 -->
<c:if test="${!empty uvo}">
	<form action="/login" method="post" id="kakaoLogin">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}"> <input type="hidden"
			value="${uvo.username}" name="username"> <input type="hidden"
			value="${kakaoPassword}" name="password">
	</form>
</c:if>

<sec:authorize access="isAuthenticated()">
	<form action="/user/user_logout.do" method="post" id="kakaoLogout">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}"> <input type="hidden"
			value="<sec:authentication property='principal.user.username'/>"
			id="kakao">
	</form>
</sec:authorize>

<c:if test="${!empty uvo}">
	<script>
		alert("카카오로 로그인 되었습니다");
		$("#kakaoLogin").submit();
	</script>
</c:if>

<sec:authorize access="isAuthenticated()">
	<script>
		alert("카카오 로그아웃");
		$("#kakaoLogout").submit();
	</script>
</sec:authorize>

<!-- 카카오 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script>
	(function() {
		'use strict'
		// Fetch all the forms we want to apply custom Bootstrap validation styles to
		var forms = document.querySelectorAll('.needs_validation')

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

<script>
	$(function() { // 쿠키값 읽어오기 
		var mail = getCookie("Cookie_mail");
		if (mail) {
			$("#validationCustom01").val(mail);
			$("#isSaved").attr("checked", true);
		}
	});

	function setCookie(cookieName, value, exdays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays); // 쿠키 저장 기간 
		var cookieValue = escape(value)
				+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
		document.cookie = cookieName + "=" + cookieValue;
	}

	function getCookie(cookieName) {
		cookieName = cookieName + '=';
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cookieName);
		var cookieValue = '';
		if (start != -1) {
			start += cookieName.length;
			var end = cookieData.indexOf(';', start);
			if (end == -1)
				end = cookieData.length;
			cookieValue = cookieData.substring(start, end);
		}
		return unescape(cookieValue);
	}

	function deleteCookie(cookieName) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);
		document.cookie = cookieName + "= " + "; expires="
				+ expireDate.toGMTString();
	}

	function Test() {
		var id = $("#validationCustom01").val();
		var idChk = $("#isSaved").is(":checked"); // 체크박스가 체크되었는지를 담아준다. ( true/false 로 담긴다.) 
		if (idChk) { // 아이디, 비밀번호 저장 체크박스가 체크 된 경우 (true) 
			setCookie("Cookie_mail", id, 7); // 쿠키에 저장하는 이벤트를 호출한다. Cookie_mail 이름으로 id가 7일동안 저장 
		} else { // 체크가 해제 된 경우 (false) 
			deleteCookie("Cookie_mail"); // 쿠키 정보를 지우는 이벤트를 호출한다. 
		}
		needs_validation.submit();
	}
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