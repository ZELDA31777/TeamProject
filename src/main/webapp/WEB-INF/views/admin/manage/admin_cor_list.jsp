<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/header.jsp"%>
<style>
th {
width: 30%
}
</style>
<!-- sub contents start -->
<div class="container-fluid">
<div class="container">
  <div class="row">


<p style="font-size:0.8em; margin:2%;">총가입자:${pageMaker.total}명</p>

<div class="row" style="border-bottom:1px solid gray; margin-bottom:10px;">
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

<c:if test="${!empty list}">
<c:forEach var="list" items="${list}">

<div class="row" style="border-bottom:1px solid gray; margin-bottom:10px;">
  <div class="col-md-2">
    <img src="/upload/${list.profile}" style="width:50%;  border-radius:70%; overflow: hidden;" data-bs-toggle="modal" data-bs-target="#cor_modal">
<!-- Modal -->
<div class="modal fade" id="cor_modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body" align="center">
        <img src="/upload/${list.profile}" style="width:35%;  border-radius:70%; overflow: hidden;">
      	<table class="table table-striped">
      	  <tr>
    		<th>대표명</th>
    		<td><small>${list.name}</small></td>
  		  </tr>
  		  <tr>
    		<th>연락처</th>
    		<td><small>${list.tel}</small></td>
  		  </tr>
  		  <tr>
    		<th>이메일</th>
    		<td><small>${list.username}</small></td>
  		  </tr>
  		  <tr>
    		<th>사무소명</th>
    		<td><small>${list.corname}</small></td>
  		  </tr>
  		  <tr>
    		<th>사업번호</th>
    		<td><small>${list.cornum}</small></td>
  		  </tr>
  		  <tr>
    		<th>주소</th>
    		<td><small>${list.addr}</small></td>
  		  </tr>
      	</table>
      	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
    </div>
  </div>
</div>
  
  </div>
  <div class="col-md-2" style="text-align: left; margin:auto;">
  <a href="#"><small>${list.corname}</small></a>
  <!-- 클릭시 중개사 뷰 페이지 -->
  </div>
  
  <div class="col-md-5" style="text-align: left; margin:auto;" >
  <small>${list.addr}</small>
  </div>
  
  <div class="col-md-2" style="text-align: left; margin:auto;">
  <small>${list.tel}</small>
  </div>
  
  <div class="col-md-1" style="margin:auto;">
    <button class="btn btn-primary" style="width:120%">회원 삭제</button>
  </div>
				
</div>
</c:forEach>
</c:if>

	<div align="center" class="paging">
		<c:if test="${pageMaker.prev}">
			<a href="${pageMaker.startPage-1}"><i
				class="fa  fa-angle-double-left"></i></a>
		</c:if>
		<c:forEach var="num" begin="${pageMaker.startPage}"
			end="${pageMaker.endPage}">
			<a href="${num}" class="${pageMaker.cri.pageNum == num?'active':''}">${num}</a>
		</c:forEach>
		<c:if test="${pageMaker.next}">
			<a href="${pageMaker.endPage+1}"><i
				class="fa  fa-angle-double-right"></i></a>
		</c:if>
	</div>
  
	<div align="center">
		<form name="searchForm" id="searchForm" method="get"
			action="/admin/manage/admin_cor_list.do">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
			<select class="form-select selform" name="type">
				<option selected>선택</option>
				<option value="N">중개사명</option>
				<option value="A">지역명</option>
			</select> <input type="text" name="keyword" class="form-control txtform">
			<button class="btn btn-light">검색</button>
		</form>
	</div>

<form id="actionForm" action="/admin/manage/admin_cor_list.do" method="get">
	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	<input type="hidden" name="type" value="${pageMaker.cri.type}">
	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
</form>

  
  </div>
</div>
</div>
<script>
	$(function() {
		var actionForm = $("#actionForm")
		$(".paging > a").on("click", function(e) {
			e.preventDefault();
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		})

		var searchForm = $("#searchForm");
		$("#searchForm button").on("click", function(e) {
			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요.");
				return false;
			}

			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();

			searchForm.submit();
		})
		
	})
</script>

	<!-- sub contents end -->
	<%@ include file="../../include/footer.jsp"%>
</body>
</html>