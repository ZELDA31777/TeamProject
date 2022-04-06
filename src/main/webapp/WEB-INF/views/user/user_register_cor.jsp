<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<style>
.btn-bl {
    color: #fff;
    background: #186bb9;
    border: 1px solid #186bb9;
	display: inline-block;
    height: 35px;
    line-height: 34px;
    min-width: 90px;
    text-align: center;
    padding: 0 10px;
    vertical-align: middle;
    font-size: 0.75rem;
}

</style>

<!-- sub contents start -->
<div class="container-fluid subcontent">
	<div class="container" style="width: 50%">
		<form id="userForm" class="needs-validation" method="post" action="/user/user_register_cor_pro.do" enctype="multipart/form-data" novalidate>
	        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	        <input type="hidden" name="favorite" value="favorite_test_msg">
	        <input type="hidden" name="active" value="active_test_msg">
	        <input type="hidden" name="nickname" value="nickname_test_msg">
	        <input type="hidden" name="tel" id="tel" value="">
	        <input type="hidden" name="addr" id="addr" value="addr_test_msg">
	        <input type="hidden" name="lat" id="lat" value="0"> 
			<input type="hidden" name="lng" id="lng" value="0"> 
	        
			<div class="styled__Box-sc-1etb7tu-1 cubPeM">
				<h1>중개사 회원정보 입력</h1>
				<h2>원픽 서비스 이용을 위해 아래 정보를 입력해주세요.</h2>
				<div class="row">
					<div class="col-md-6">
						<div class="input-with-label__InputWrap-sc-1p3gkts-0 eVAGdp">
							<label class="bDaqny">
								<p class="label-text">대표 사진</p> 
								<input type="file" name="pimg" class="form-control kHDHPO w-100" id="pimg" required accept="image/*" onchange="selectFile(this)">
								<div class="valid-feedback">확인되었습니다</div>
								<div class="invalid-feedback">대표 사진을 등록해주십시오.</div>
							</label>
						</div>
					</div>
					<div class="col-md-6">
						<img id="imgPreview" class="w-100" src="/resources/images/logo_002_opacity.png">
					</div>
				</div>
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
				<div class="input-with-label__InputWrap-sc-1p3gkts-0 eVAGdp">
					<label class="bDaqny">
						<p class="label-text">비밀번호</p> <input type="password"
						name="password" placeholder="비밀번호 입력" class="form-control kHDHPO"
						id="password" minlength="8" pattern="[A-Za-z0-9]{8,}" required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">8자 이상의 영어 대소문자, 숫자로만 비밀번호를 입력해주십시오.</div>
					</label>
				</div>
				<div class="eVAGdp">
					<laber class="bDaqny">
						<input autocomplete="off" type="password" name="passwordConfirm"
							placeholder="비밀번호 확인" id="passwordConfirm" class="form-control input__Input-am2s7t-0 kHDHPO" pattern="track51" required>
						<div class="valid-feedback">비밀번호와 일치합니다.</div>
						<div class="invalid-feedback">비밀번호와 일치하지 않습니다.</div>
					</laber>
				</div>
				<div class="input-with-unit__InputWrap-sc-1e4qgti-0 eVAGdp">
					<label class="bDaqny">
						<p class="label-text">대표자명</p> <input type="text" name="name"
						id="name" placeholder="대표자명 입력"
						class="form-control kHDHPO" maxlength="10" required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">대표자명을 입력해주십시오.</div>
					</label>
				</div>
				<div class="input-with-unit__InputWrap-sc-1e4qgti-0 eVAGdp">
					<label class="bDaqny">
						<p class="label-text">중개사무소명</p> <input type="text" name="corname"
						id="corname" placeholder="중개사무소명 입력"
						class="form-control kHDHPO" maxlength="10" required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">중개사무소명을 입력해주십시오.</div>
					</label>
				</div>
				
				<div class="input-with-unit__InputWrap-sc-1e4qgti-0 eVAGdp">
					<label class="bDaqny">
						<p class="label-text">사업자등록번호</p> <input type="text" name="cornum"
						id="cornum" placeholder="-없이 숫자로만 입력해주세요"
						class="form-control kHDHPO" maxlength="15" minlength="15" pattern="[0-9]{15}" required>
						<div class="valid-feedback">확인되었습니다</div>
						<div class="invalid-feedback">사업자등록번호를 입력해주십시오.</div>
					</label>
				</div>
				
				<!-- 주소 검색 api 시작 -->
				<div class="eVAGdp">
					<div class="bDaqny">
						<p class="label-text">중개사무소 위치</p>
						<div class="row gy-3">
							<div class="col-4">
								<input type="text" class="kHDHPO w-100" id="addr1" readonly>
							</div>
							<div class="col-4">
								<input type="text" class="kHDHPO w-100" id="addr2" readonly>
							</div>
							<div class="col-4">
								<button class="btn-bl" type="button" onClick="goPopup()">주소 검색</button>
							</div>
							<div class="col-12">
								<input type="text" class="form-control kHDHPO" id="addr3" required>
								<div class="valid-feedback">확인되었습니다.</div>
								<div class="invalid-feedback">주소를 입력해주세요.</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 주소 검색 api 끝 -->
				
				
				<!-- 
				##### 프로필 이미지 추가할 것 #####
				-->
			
				
				<div class="row">
				<div class="input-with-unit__InputWrap-sc-1e4qgti-0 eVAGdp col-md-3 mb-0">
					<label class="bDaqny">
						<p class="label-text">연락처</p> <input type="text" name="tel01"
						id="tel01" placeholder="010"
						class="form-control telINPO" maxlength="3" pattern="[0-9]{2,3}" required>
					</label>
				</div>
				<div class="input-with-unit__InputWrap-sc-1e4qgti-0 eVAGdp col-md-3 mb-0">
					<label class="bDaqny">
						<p class="label-text">&nbsp;</p> <input type="text" name="tel02"
						id="tel02" class="form-control telINPO" maxlength="4" pattern="[0-9]{3,4}" required>
					</label>
				</div>
				<div class="input-with-unit__InputWrap-sc-1e4qgti-0 eVAGdp col-md-3 mb-0">
					<label class="bDaqny">
						<p class="label-text">&nbsp;</p> <input type="text" name="tel03"
						id="tel03" class="form-control telINPO" maxlength="4" pattern="[0-9]{4}" required>
					</label>

				</div>
				<div>
					<label class="bDaqny">
						<div class="valid-feedback" id="telValid">확인되었습니다</div>
						<div class="invalid-feedback" id="telInvalid">연락처를 입력해주십시오.</div>
					</label>
				</div>
				<!-- 주소 확인할 것 !  -->
				
				
				</div>
				<button color="blue" id="btn_register" class="button__Button-sc-153m1au-0 fiEZwu"
					style="margin-top: 32px;">
					<span> 확인 </span>
				</button>
			</div>
		</form>
	</div>
</div>

<script src="/resources/js/juso_api.js"></script>
<script>
	$(function() {
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

				
				if(document.getElementById("tel01").validity.valid && document.getElementById("tel02").validity.valid && document.getElementById("tel03").validity.valid) {
		    		  /* 전화번호 3개가 모두 올바르게 입력된 경우 */
		    		  $("#telInvalid").css("display", "none");
		    		  $("#telValid").css("display", "block");
		    	  } else {
		    		  $("#telValid").css("display", "none");
		    		  $("#telInvalid").css("display", "block");
		    	  }
				form.classList.add('was-validated')
			}, false)
		})
	});

	
    $(function (){
    	$('#password').on('change', function(){
            $('#passwordConfirm').attr('pattern', $(this).val());
        });
   	});
	
	

</script>

<!--  전화번호 관련 스크립트 시작 -->
<script>
   var tel01 = null;
   var tel02 = null;
   var tel03 = null;

   $(function() {
      $("#tel01").on("blur", function() {
         if ($("#tel01").val() == '') {
            $("#tel01").val('010');
         }
         return false;
      })
      
      $("#tel03").on("blur", function() {
         tel01 = $("#tel01").val();
         tel02 = $("#tel02").val();
         tel03 = $("#tel03").val();
         $("#tel").val(tel01 + tel02 + tel03);
         return false;
      })
      
      $("#tel01, #tel02, #tel03").on("input", function() {
    	  if ($("#userForm").hasClass("was-validated")) {
	    	  if(document.getElementById("tel01").validity.valid && document.getElementById("tel02").validity.valid && document.getElementById("tel03").validity.valid) {
	    		  /* 전화번호 3개가 모두 올바르게 입력된 경우 */
	    		  $("#telInvalid").css("display", "none");
	    		  $("#telValid").css("display", "block");
	    	  } else {
	    		  $("#telValid").css("display", "none");
	    		  $("#telInvalid").css("display", "block");
	    	  }
    	  }
      })
   })
   
</script>
<!-- 전화번호 관련 스크립트 끝 -->

<!-- 사진 파일 등록 스크립트 시작 -->
<script>
	function selectFile(element) {
		img_ = document.getElementById("imgPreview");
		toReset = false;
		const file = element.files[0];
		
		if (file == undefined || file == null) {
			toReset = true;
		} else if (!file.type) {
			alert("Error : file.type porperty does not appear to be supported on this browser.");
			element.value = "";
			toReset = true;
		} else if (!file.type.startsWith("image/")) {
			alert("Error : the selected file does not appear to be an image.");
			element.value = "";
			toReset = true;
		}
	
		if (toReset) {
			
			img_.src = "/resources/images/logo_002_opacity.png";
			
			return false;
		}
	
		// 이미지 파일을 읽어 data:image~~~~~ 형태로 뿌려줌
		// 아직 서버에 업로드 된건 아님
		const reader = new FileReader();
		reader.addEventListener('load', e => {
			img_.src = e.target.result;
		});
		reader.readAsDataURL(file);
	}
</script>
<!-- 사진 파일 등록 스크립트 끝 -->

<!-- sub contents end -->

<%@ include file="../include/footer.jsp"%>


</body>

</html>