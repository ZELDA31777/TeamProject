<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/header.jsp"%>
	<!-- sub contents start -->
<div class="container-fluid">
<div class="container">
  <div class="row">
  
  
<p style="font-size:0.8em; margin:2%;">총가입자: @명</p>

<div class="row" style="border-bottom:1px solid gray;">
  <div class="col-md-1">
	<p style="font-size:0.8em;">NO.</p>
  </div>
  <div class="col-md-1">
  	<p><input type="checkbox" name="all" class="check-all"></p>
  </div>
  <div class="col-md-4">
  	<p style="font-size:0.8em;">사용자 ID</p>
  </div>  
  <div class="col-md-2">
  	<p style="font-size:0.8em;">닉네임</p>
  </div>
  <div class="col-md-2">
  	<p style="font-size:0.8em;">가입일</p>
  </div>
  <div class="col-md-2">
    <p style="font-size:0.8em;">가입상태</p>
  </div>
</div>  

<div class="row" style="border-bottom:1px solid gray; margin-top:20px;">
  <div class="col-md-1">
	<p style="font-size:0.8em;">01</p>
  </div>
  <div class="col-md-1">
  	<p><input type="checkbox" name="01" class="cb"></p>
  </div>
  <div class="col-md-4">
  	<p style="font-size:0.8em;">@아이디</p>
  </div>  
  <div class="col-md-2">
  	<p style="font-size:0.8em;">@닉네임</p>
  </div>
  <div class="col-md-2">
  	<p style="font-size:0.8em;">@가입일</p>
  </div>
  <div class="col-md-2">
    <p style="font-size:0.8em;">@가입상태</p>
  </div>
</div>  

<!-- 예시 시작 -->
<div class="row" style="border-bottom:1px solid gray; margin-top:20px;">
  <div class="col-md-1">
	<p style="font-size:0.8em;">02</p>
  </div>
  <div class="col-md-1">
  	<p><input type="checkbox" name="02" class="cb"></p>
  </div>
  <div class="col-md-4">
  	<p style="font-size:0.8em;">@아이디</p>
  </div>  
  <div class="col-md-2">
  	<p style="font-size:0.8em;">@닉네임</p>
  </div>
  <div class="col-md-2">
  	<p style="font-size:0.8em;">@가입일</p>
  </div>
  <div class="col-md-2">
    <p style="font-size:0.8em;">@가입상태</p>
  </div>
</div>  
<div class="row" style="border-bottom:1px solid gray; margin-top:20px;">
  <div class="col-md-1">
	<p style="font-size:0.8em;">03</p>
  </div>
  <div class="col-md-1">
  	<p><input type="checkbox" name="03" class="cb"></p>
  </div>
  <div class="col-md-4">
  	<p style="font-size:0.8em;">@아이디</p>
  </div>  
  <div class="col-md-2">
  	<p style="font-size:0.8em;">@닉네임</p>
  </div>
  <div class="col-md-2">
  	<p style="font-size:0.8em;">@가입일</p>
  </div>
  <div class="col-md-2">
    <p style="font-size:0.8em;">@가입상태</p>
  </div>
</div>  
<div class="row" style="border-bottom:1px solid gray; margin-top:20px;">
  <div class="col-md-1">
	<p style="font-size:0.8em;">04</p>
  </div>
  <div class="col-md-1">
  	<p><input type="checkbox" name="04" class="cb"></p>
  </div>
  <div class="col-md-4">
  	<p style="font-size:0.8em;">@아이디</p>
  </div>  
  <div class="col-md-2">
  	<p style="font-size:0.8em;">@닉네임</p>
  </div>
  <div class="col-md-2">
  	<p style="font-size:0.8em;">@가입일</p>
  </div>
  <div class="col-md-2">
    <p style="font-size:0.8em;">@가입상태</p>
  </div>
</div>  
<div class="row" style="border-bottom:1px solid gray; margin-top:20px;">
  <div class="col-md-1">
	<p style="font-size:0.8em;">05</p>
  </div>
  <div class="col-md-1">
  	<p><input type="checkbox" name="05" class="cb"></p>
  </div>
  <div class="col-md-4">
  	<p style="font-size:0.8em;">@아이디</p>
  </div>  
  <div class="col-md-2">
  	<p style="font-size:0.8em;">@닉네임</p>
  </div>
  <div class="col-md-2">
  	<p style="font-size:0.8em;">@가입일</p>
  </div>
  <div class="col-md-2">
    <p style="font-size:0.8em;">@가입상태</p>
  </div>
</div> 
<!-- 예시 끝 --> 
  
<div align="right">
<form>
<button class="btn btn-primary" style="margin:5px;">선택회원 삭제</button>
</form>
</div>

<div class="paging" align="center" style="margin:2%;">
	<a href=""><i class="fa  fa-angle-double-left"></i></a>
	<a href=""><i class="fa fa-angle-left"></i></a>
	<a href="" class="active">1</a>
	<a href="">2</a>
	<a href="">3</a>
	<a href="">4</a>
	<a href="">5</a>
	<a href=""><i class="fa fa-angle-right"></i></a>
	<a href=""><i class="fa  fa-angle-double-right"></i></a>
</div> 
  
<div class="search_group" align="center">
	<form name="adm_serch" id="searchForm" method="get" action="/admin/manage/admin_cor_list.do">
		<select style="margin:5px;">
		  <option selected>선택</option>
		  <option value="1">이메일</option>
		  <option value="2">닉네임</option>
		  <option value="3">가입일</option>
		</select>
		<input type="text" name="keyword" style="border-radius:7px; margin:5px;">
		<button class="btn btn-primary" type="submit" style="margin:5px;">검색</button>
	</form>
</div>
  
  </div>
</div>
</div>	
	<!-- sub contents end -->
	
<script>
	$( document ).ready( function() {
	  $( '.check-all' ).click( function() {
	    $( '.cb' ).prop( 'checked', this.checked );
	  });
	});
</script>	
	
	<%@ include file="../../include/footer.jsp"%>
</body>
</html>