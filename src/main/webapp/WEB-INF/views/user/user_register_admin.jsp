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
		<form class="needs-validation" method="post" action="user_register_admin_pro.do" novalidate >
		        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		        <input type="hidden" name="favorite" value="favorite_test_msg">
		        <input type="hidden" name="active" value="active_test_msg">
			<div class="styled__Box-sc-1etb7tu-1 cubPeM">
				<h1>회원정보 입력</h1>
				<h2>원픽 서비스 이용을 위해 아래 정보를 입력해주세요.</h2>
				<div class="input-with-label__InputWrap-sc-1p3gkts-0 eVAGdp">
					<label class="bDaqny">
						<p class="label-text">이메일</p> <input type="text" name="username"
						class="form-control kHDHPO" id="username"
						placeholder="이메일 주소 입력"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">이메일을 입력해주십시오.</div>
					</label>
				</div>
				<div class="input-with-unit__InputWrap-sc-1e4qgti-0 cgniMn">
					<label class="input-with-label__Label-sc-1p3gkts-1 bDaqny">
						<p class="label-text">닉네임</p> <input type="text" name="nickname"
						id="nickname" placeholder="한글 또는 영문만 가능"
						class="form-control kHDHPO" maxlength="10" required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">닉네임을 입력해주십시오.</div>
					</label>
				</div>
					
				<!-- 본div클래스를 mystyle.css에 없어서 강제조정함 -->
				<div class="input-with-unit__InputWrap-sc-1e4qgti-0 cgniMn">
					<label class="input-with-label__Label-sc-1p3gkts-1 bDaqny">
						<p class="label-text">관심지역설정</p>
					</label>
					<!-- 동구 -->
					<div>
					<div class="dropdown" style="width: 35%;  float:left;">
						<button class="btn btn-light" type="button"
							id="gu_01" data-bs-toggle="dropdown"
							aria-expanded="false" style="width: 80%;">동구</button>
						<ul class="dropdown-menu" aria-labelledby="gu_01" style="width:450px">
							<li>
								<div style="margin:5%;">
								<table class="table_center">
								<tr>
								<td class="cell_padding"><input class="dong-fav" type="checkbox" name="favorite" value="가양동">가양동</td>
								<td class="cell_padding"><input class="dong-fav" type="checkbox" name="favorite" value="대동">대동</td>
								<td class="cell_padding"><input class="dong-fav" type="checkbox" name="favorite" value="대청동">대청동</td>
								</tr>
								<tr>
								<td class="cell_padding"><input class="dong-fav" type="checkbox" name="favorite" value="산내동">산내동</td>
								<td class="cell_padding"><input class="dong-fav" type="checkbox" name="favorite" value="삼성동">삼성동</td>
								<td class="cell_padding"><input class="dong-fav" type="checkbox" name="favorite" value="성남동">성남동</td>
								<td class="cell_padding"><input class="dong-fav" type="checkbox" name="favorite" value="신인동">신인동</td>
								</tr>
								<tr>
								<td class="cell_padding"><input class="dong-fav" type="checkbox" name="favorite" value="용운동">용운동</td>
								<td class="cell_padding"><input class="dong-fav" type="checkbox" name="favorite" value="용전동">용전동</td>
								<td class="cell_padding"><input class="dong-fav" type="checkbox" name="favorite" value="자양동">자양동</td>
								<td class="cell_padding"><input class="dong-fav" type="checkbox" name="favorite" value="중앙동">중앙동</td>
								</tr>
								<tr>
								<td class="cell_padding"><input class="dong-fav" type="checkbox" name="favorite" value="판암동">판암동</td>
								<td class="cell_padding"><input class="dong-fav" type="checkbox" name="favorite" value="홍도동">홍도동</td>
								<td class="cell_padding"><input class="dong-fav" type="checkbox" name="favorite" value="효동">효동</td>
								</tr>
								<tr>
								<td class="cell_padding" colspan="4"><input class="dong-check-all" type="checkbox">전체선택</td>
								</tr>
								</table>									
								</div>
							</li>
						</ul>
					</div>
					<!-- 중구 -->
					<div class="dropdown" style="width: 35%; float:left;">
						<button class="btn btn-light" type="button"
							id="gu_02" data-bs-toggle="dropdown"
							aria-expanded="false" style="width: 80%; ">중구</button>
						<ul class="dropdown-menu" aria-labelledby="gu_02" style="width:450px">
							<li>
								<div style="margin:5%;">
								<table class="table_center">
								<tr>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="대사동">대사동</td>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="대흥동">대흥동</td>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="목동">목동</td>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="문창동">문창동</td>
								</tr>
								<tr>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="문화동">문화동</td>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="부사동">부사동</td>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="산성동">산성동</td>
								</tr>
								<tr>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="석교동">석교동</td>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="오류동">오류동</td>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="용두동">용두동</td>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="유천동">유천동</td>
								</tr>
								<tr>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="유천동">유천동</td>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="은행동">은행동</td>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="중천동">중천동</td>
								<td class="cell_padding"><input class="jung-fav" type="checkbox" name="favorite" value="태평동">태평동</td>
								</tr>
								<tr>
								<td colspan="4" class="cell_padding"><input class="jung-check-all" type="checkbox">전체선택</td>
								</tr>
								</table>									
								</div>
							</li>
						</ul>
					</div>
					</div>
				<!-- 지역 선택 끝 -->
				</div>
				
				<div class="input-with-label__InputWrap-sc-1p3gkts-0 kYbOIJ">
					<label class="input-with-label__Label-sc-1p3gkts-1 bDaqny">
						<p class="label-text">비밀번호</p> <input type="password"
						name="password" placeholder="비밀번호 입력" class="form-control kHDHPO"
						id="password" minlength="8" required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">8자리 이상의 비밀번호를 입력해주십시오.</div>
					</label>
				</div>
				<input autocomplete="off" type="password" name="passwordConfirm"
					placeholder="비밀번호 확인" class="form-control input__Input-am2s7t-0 kHDHPO" value=""
          id="passwordConfirm" pattern="track51" required>
          <div class="valid-feedback">입력한 비밀번호와 일치합니다.</div>
          <div class="invalid-feedback">입력한 비밀번호와 일치하지 않습니다.</div>
				<button color="blue" class="button__Button-sc-153m1au-0 fiEZwu"
					style="margin-top: 32px;">
					<span> 확인 </span>
				</button>
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
  
    $(function (){
        $('#password').on('change', function(){
            $('#passwordConfirm').attr('pattern', escapeRegExp($(this).val())); // $&은 일치한 문자열
            console.log($('#passwordConfirm').attr('pattern'));
            console.log( escapeRegExp($('#passwordConfirm').attr('pattern')));
            
        });

        function escapeRegExp(string) {
             return string.replace(/[.*+?$^{}()|[\]\\]/g, '\\$&'); // $&은 일치한 문자열 전체를 의미
        }
    });
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