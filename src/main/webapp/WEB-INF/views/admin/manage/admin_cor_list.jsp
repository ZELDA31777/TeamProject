<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/header.jsp"%>
	<!-- sub contents start -->
<div class="container-fluid">
<div class="container">
  <div class="row">


<div align="right">
<div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="width:25%; margin:5%;">
  <input type="radio" class="btn-check" name="list" id="reg_list" autocomplete="off" checked>
  <label class="btn btn-outline-primary" for="reg_list">가입일순 정렬</label>

  <input type="radio" class="btn-check" name="list" id="name_list" autocomplete="off">
  <label class="btn btn-outline-primary" for="name_list">이름순 정렬</label>
</div>
</div> 

<p style="font-size:0.8em; margin:2%;">총가입자:${pageMaker.total}명</p>

<div class="row" style="border-bottom:1px solid gray; margin-bottom:50px;">
  <div class="col-md-2" style="text-align: left; margin:auto;">
	<p style="font-size:0.8em;">프로필 사진</p>
  </div>
  <div class="col-md-2" style="text-align: left; margin:auto;">
  	<p style="font-size:0.8em;">중개사명</p>
  </div>
  <div class="col-md-5" style="text-align: left; margin:auto;" >
  	<p style="font-size:0.8em;">중개사 주소</p>
  </div>
  <div class="col-md-2" style="text-align: left; margin:auto;">
  	<p style="font-size:0.8em;">중개사 연락처</p>
  </div>
  <div class="col-md-1" style="text-align: center; margin:auto;">
    <p style="font-size:0.8em;">회원관리</p>
  </div>
</div>  

<c:if test="${!empty r_list}">
<c:forEach var="r_list" items="${r_list}">

<div class="row" style="border-bottom:1px solid gray;">
  <div class="col-md-2">
    <img src="/resources/images/logo_001.png" style="width:50%;  border-radius:70%; overflow: hidden;" data-bs-toggle="modal" data-bs-target="#cor_modal">
  
<!-- Modal -->
<div class="modal fade" id="cor_modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body" align="center">
        <img src="/resources/images/logo_001.png" style="width:35%;  border-radius:70%; overflow: hidden;">
      	<table class="table table-striped">
      	  <tr>
    		<th>대표명</th>
    		<td>@대표명</td>
  		  </tr>
  		  <tr>
    		<th>연락처</th>
    		<td>@연락처</td>
  		  </tr>
  		  <tr>
    		<th>이메일</th>
    		<td>@이메일</td>
  		  </tr>
  		  <tr>
    		<th>사무소명</th>
    		<td>@사무소명</td>
  		  </tr>
  		  <tr>
    		<th>사업번호</th>
    		<td>@사업번호</td>
  		  </tr>
  		  <tr>
    		<th>주소</th>
    		<td>@주소</td>
  		  </tr>
      	</table>
      	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
    </div>
  </div>
</div>
  
  </div>
  <div class="col-md-2" style="text-align: left; margin:auto;">
  <a href="#">${r_list.corname}</a>
  <!-- 클릭시 중개사 뷰 페이지 -->
  </div>
  
  <div class="col-md-5" style="text-align: left; margin:auto;" >
  @부동산 주소
  </div>
  
  <div class="col-md-2" style="text-align: left; margin:auto;">
  @연락처
  </div>
  
  <div class="col-md-1" style="margin:auto;">
    <button class="btn btn-primary" style="width:120%">회원 삭제</button>
  </div>
  
  <div align="right">
  <div class="dropdown">
  <button class="btn btn-outline-primary" type="button" id="01" data-bs-toggle="dropdown" aria-expanded="false">
    총매물 @개
  </button>
  <ul class="dropdown-menu" aria-labelledby="01" style="width:1010px;">
	<div style="width:250px; float:left;">
		<img src="/resources/images/m_011.jpg" style="width:200px; margin:25px;">
		<a href=""><p>매물번호</p></a>
		<p>등록일</p>
	</div>
	<div style="width:250px; float:left;">
		<img src="/resources/images/m_011.jpg" style="width:200px; margin:25px;">
		<a href=""><p>매물번호</p></a>
		<p>등록일</p>
	</div>
	<div style="width:250px; float:left;">
		<img src="/resources/images/m_011.jpg" style="width:200px; margin:25px;">
		<a href=""><p>매물번호</p></a>
		<p>등록일</p>
	</div>
	<div style="width:250px; float:left;">
		<img src="/resources/images/m_011.jpg" style="width:200px; margin:25px;">
		<a href=""><p>매물번호</p></a>
		<p>등록일</p>
		<a href=""><p style="text-align:right;">더보기...</p></a>
	</div>
  </ul>
  </div>
  </div>
				
</div>
</c:forEach>
</c:if>

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
		  <option value="1">중개사명</option>
		  <option value="2">지역</option>
		</select>
		<input type="text" name="keyword" style="border-radius:7px; margin:5px;">
		<button class="btn btn-primary" type="submit" style="margin:5px;">검색</button>
	</form>
</div>

  
  </div>
</div>
</div>


	<!-- sub contents end -->
	<%@ include file="../../include/footer.jsp"%>
</body>
</html>