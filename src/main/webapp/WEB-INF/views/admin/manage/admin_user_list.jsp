<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/header.jsp"%>
	<!-- sub contents start -->
<div class="container-fluid">
<div class="container">
  <div class="row">
  
  
<p style="font-size:0.8em; margin:2%;">총가입자:${pageMaker.total}명</p>

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
 
<c:if test="${!empty list}">
<c:set var="num" value="${pageMaker.total - ((pageMaker.cri.pageNum-1)*10)}" />
<c:forEach var="list" items="${list}">


<div class="row" style="border-bottom:1px solid gray; margin-top:20px;">
  <div class="col-md-1">
	<p style="font-size:0.8em;">${num}</p>
  </div>
  <div class="col-md-1">
  	<p><input type="checkbox" name="un" value="${list.username}" class="cb"></p>
  </div>
  <div class="col-md-4">
  	<p style="font-size:0.8em;">${list.username}</p>
  </div>  
  <div class="col-md-2">
  	<p style="font-size:0.8em;">${list.nickname}</p>
  </div>
  <div class="col-md-2">
  	<p style="font-size:0.8em;"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></p>
  </div>
  <div class="col-md-2">
    <p style="font-size:0.8em;">
    	<c:if test="${list.active eq 'active'}">인증완료</c:if>
    	<c:if test="${list.active eq 'non_active'}">미인증</c:if>
    </p>
  </div>
</div> 

<c:set var="num" value="${num-1}"/>	
</c:forEach>
</c:if>

	<div class="container">
	<sec:authorize access="hasRole('SUPER_ADMIN')">
		<div align="right">
			<form name="adminRegisterJsp" action="/user/user_register_admin.do" method="get">
				<button class="btn btn-primary" style="margin:5px;">새 관리자 등록</button>
			</form>
		</div>
	</sec:authorize>
	
		<div align="right">
			<button class="btn btn-primary" style="margin:5px;" onClick="delete_user_list()">선택회원 삭제</button>
		</div>
	</div>

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
			action="/admin/manage/admin_user_list.do">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
			<select class="form-select selform" name="type">
				<option selected>선택</option>
				<option value="N">닉네임</option>
				<option value="U">아이디</option>
			</select> <input type="text" name="keyword" class="form-control txtform">
			<button class="btn btn-light">검색</button>
		</form>
	</div>

  
  </div>
</div>
</div>	

<form id="actionForm" action="/admin/manage/admin_user_list.do" method="get">
	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	<input type="hidden" name="type" value="${pageMaker.cri.type}">
	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
</form>
	<!-- sub contents end -->
	
<form name="user_delete" action="/admin/manage/admin_user_delete.do" method="post">
<input type="hidden" id="un_list" name="username" value="">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
</form>	
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

	$( document ).ready( function() {
	  $( '.check-all' ).click( function() {
	    $( '.cb' ).prop( 'checked', this.checked );
	  });
	});
	
	function delete_user_list() {
		var list = new Array();
		$("input[name=un]:checked").each(function(index, item){
			list.push($(item).val());
		});
		$("#un_list").val(list);
		user_delete.submit();
	}
</script>	
	
	<%@ include file="../../include/footer.jsp"%>
</body>
</html>