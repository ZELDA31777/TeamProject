<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<div class="sub_title">
	<h2>공지사항</h2>
</div>

<div class="container">

		<div style="padding-bottom: 2%">
		<strong>총 게시글 ${pageMaker.total}</strong>
		</div>
		
		<div class="row">
			<div class="list-group list-group-flush border-bottom scrollarea efdsfa row" style="padding-left: 0; padding-right: 0;">
			<div class="d-flex w-100 align-items-center justify-content-between">
			<div class="col-md-2"><strong>번호</strong></div>
			<div class="col-md-8"><strong>제목</strong></div>
			<div class="col-md-2"><strong>작성일</strong></div>
			</div>
			</div>

		
		<c:if test="${!empty list}">
		<c:set var="num" value="${pageMaker.total - ((pageMaker.cri.pageNum-1)*(pageMaker.cri.amount))}" />
		<c:forEach var="list" items="${list}">

		<div class="list-group list-group-flush border-bottom scrollarea efdsfa row" style="padding-left: 0; padding-right: 0;">
		<a href="/notice/notice_view.do?notice_no=${list.notice_no}" 
			class="list-group-item list-group-item-action py-3 lh-tight"
			aria-current="true">
		<div class="d-flex w-100 align-items-center justify-content-between">
		
		<div class="col-md-2">
			<strong class="mb-1">${num}</strong>
		</div>
		<div class="col-md-8">
			<small>${list.notice_title}</small>
		</div>
		<div class="col-md-2">
			<small><fmt:formatDate value="${list.notice_regdate}" pattern="yyyy-MM-dd" /></small>
		</div>

		</div>
		</a>
		</div>

		<c:set var="num" value="${num-1}" />
		</c:forEach>
		</c:if>


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
			action="/notice/notice_list.do">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
			<select class="form-select selform" name="type">
				<option selected>선택</option>
				<option value="T">제목</option>
				<option value="C">내용</option>
			</select> <input type="text" name="keyword" class="form-control txtform">
			<button class="btn btn-light">검색</button>
		</form>
	</div>
		<div class="write">
			<a href="/notice/notice_list.do"><button class="btn btn-light write">목록으로</button></a>
			<a href="/notice/notice_write.do"><button class="btn btn-light write">작성</button></a>
		</div>

</div>

<form id="actionForm" action="/notice/notice_list.do" method="get">
	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	<input type="hidden" name="type" value="${pageMaker.cri.type}">
	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
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
</script>

<%@ include file="../include/footer.jsp"%>