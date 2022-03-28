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
		<form class="needs-validation" method="post" novalidate>
			<div class="styled__Box-sc-1etb7tu-1 cubPeM">
				<h1>중개사 회원정보 입력</h1>
				<h2>원픽 서비스 이용을 위해 아래 정보를 입력해주세요.</h2>
				<div class="input-with-label__InputWrap-sc-1p3gkts-0 eVAGdp">
					<label class="bDaqny">
						<p class="label-text">아이디</p> <input type="text" name="email"
						class="form-control kHDHPO" id="validationCustom01"
						placeholder="이메일 주소 입력"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">이메일을 입력해주십시오.</div>
					</label>
				</div>
				<div class="input-with-unit__InputWrap-sc-1e4qgti-0 eVAGdp">
					<label class="bDaqny">
						<p class="label-text">닉네임</p> <input type="text" name="nickname"
						id="validationCustom02" placeholder="한글 또는 영문만 가능"
						class="form-control kHDHPO" maxlength="10" required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">닉네임을 입력해주십시오.</div>
					</label>
				</div>
				<div class="input-with-label__InputWrap-sc-1p3gkts-0 eVAGdp">
					<label class="bDaqny">
						<p class="label-text">비밀번호</p> <input type="password"
						name="password" placeholder="비밀번호 입력" class="form-control kHDHPO"
						id="validationCustom03" minlength="8" required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">비밀번호를 입력해주십시오.</div>
					</label>
				</div>
				<input autocomplete="off" type="password" name="passwordConfirm"
					placeholder="비밀번호 확인" class="input__Input-am2s7t-0 kHDHPO" value="">
				<div class="eVAGdp">
				<laber class="bDaqny"/>				
				</div>
				<div class="input-with-unit__InputWrap-sc-1e4qgti-0 eVAGdp">
					<label class="bDaqny">
						<p class="label-text">사업자등록번호</p> <input type="text" name="cornum"
						id="validationCustom04" placeholder="-없이 숫자로만 입력해주세요"
						class="form-control kHDHPO" maxlength="15" minlength="15" required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">사업자등록번호를 입력해주십시오.</div>
					</label>
				</div>
				<div class="row">
				<div class="input-with-unit__InputWrap-sc-1e4qgti-0 eVAGdp col-md-3">
					<label class="bDaqny">
						<p class="label-text">연락처</p> <input type="text" name="cornum"
						id="validationCustom05" placeholder="010"
						class="form-control telINPO" maxlength="3" required>
					</label>
				</div>
				<div class="input-with-unit__InputWrap-sc-1e4qgti-0 eVAGdp col-md-3">
					<label class="bDaqny">
						<p class="label-text">&nbsp;</p> <input type="text" name="cornum"
						id="validationCustom06" placeholder="010"
						class="form-control telINPO" maxlength="4" required>
					</label>
				</div>
				<div class="input-with-unit__InputWrap-sc-1e4qgti-0 eVAGdp col-md-3">
					<label class="bDaqny">
						<p class="label-text">&nbsp;</p> <input type="text" name="cornum"
						id="validationCustom07" placeholder="010"
						class="form-control telINPO" maxlength="4" required>
					</label>
					<label class="bDaqny">
					<div class="valid-feedback">확인되었습니다</div>
					<div class="invalid-feedback">연락처를 입력해주십시오.</div>
					</label>
				</div>
				
				<!-- 주소 확인할 것 !  -->
				
				
				</div>
				<button color="blue" class="button__Button-sc-153m1au-0 fiEZwu"
					style="margin-top: 32px;">
					<span> 확인 </span>
				</button>
			</div>
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