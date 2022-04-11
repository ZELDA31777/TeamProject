<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>


<style>
.cell_padding {
padding : 10px;
}

.table_center {
display : table;
margin-left : auto;
margin-right : auto;
}
</style>

	<!-- 현재 로그인 한 유저의 정보를 받아옴 시작-->
	<sec:authorize access="isAuthenticated()">
		<c:set var="username">
			<sec:authentication property="principal.user.username" />
		</c:set>	
	</sec:authorize>
	<!-- 현재 로그인 한 유저의 정보를 받아옴 끝-->


<!-- sub contents start -->
<div class="container-fluid subcontent">
	<div class="container" style="width: 50%">
		<form class="needs-validation" method="post" action="user_password_check_pro.do" novalidate >
		        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			<div class="styled__Box-sc-1etb7tu-1 cubPeM">
				<h1>회원정보 수정</h1>
				<h2>회원정보 변경을 위해 먼저 비밀번호를 입력해주십시오.</h2>
				<div class="input-with-label__InputWrap-sc-1p3gkts-0 eVAGdp">
					<label class="bDaqny">
						<p class="label-text">이메일</p> <input type="text" name="username"
						class="form-control kHDHPO" id="username" value="${username}" readonly required>
					</label>
				</div>
				
				<div class="input-with-label__InputWrap-sc-1p3gkts-0 kYbOIJ">
					<label class="input-with-label__Label-sc-1p3gkts-1 bDaqny">
						<p class="label-text">비밀번호</p> <input type="password"
						name="password" placeholder="비밀번호 입력" class="form-control kHDHPO"
						id="password" minlength="8" pattern="[A-Za-z0-9]{8,}" required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">8자 이상의 영어 대소문자, 숫자로만 비밀번호를 입력해주십시오.</div>
					</label>
				</div>

				<button color="blue" class="button__Button-sc-153m1au-0 fiEZwu"
					style="margin-top: 32px;">
					<span> 확인 </span>
				</button>
			</div>
		</form>
	</div>
</div>

<script>
	$( document ).ready( function() {
	  $( '.jung-check-all' ).click( function() {
	    $( '.jung-fav' ).prop( 'checked', this.checked );
	  });
	});
	
	$( document ).ready( function() {
		$( '.dong-check-all' ).click( function() {
		  $( '.dong-fav' ).prop( 'checked', this.checked );
		});
	});
</script>

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
   })
  
    $(function (){
        $('#password').on('change', function(){
            $('#passwordConfirm').attr('pattern', $(this).val());
        });

        function escapeRegExp(string) {
             return string.replace(/[.*+?$^{}()|[\]\\]/g, '\\$&'); // $&은 일치한 문자열 전체를 의미
        }
    });
   
</script>

<c:set var="favorite" value="${uvo.favorite }"/>
<script>
	var fa = "${favorite}";
	$("input:checkbox[name=favorite]").each(function(index, element){
		if(fa.includes(element.value)){
			element.checked = true;
		}
	});
</script>



<!-- sub contents end -->
<%@ include file="../include/footer.jsp"%>
</body>
</html>