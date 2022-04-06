<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<style>
.write{
float:right;
margin-bottom: 2%;
}

.selform{
	width: 10%;
	display:inline-block;
	vertical-align:middle;
}

.txtform{
	width: 20%;
	display:inline-block;
	vertical-align:middle;
}

</style>


	<div class="sub_title">
		<h2>공지사항</h2>
	</div>

	<div class="container">
		<div class="record_group">
			<p>총게시글<span>${pageMaker.total}</span>건</p>
		</div>
		
		<div class="write">
			<a href="/notice/notice_write.do" class="btn_write"><button type="button" class="btn btn-light">글쓰기</button></a>
		</div>
		
	  
	  <div>
		<table class="table">
			<colgroup>
				<col width="20%">
				<col width="*">
				<col width="20%">
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
			
			<c:if test="${empty list}">
				<tr>
					<td colspan="3">등록된 공지사항이 없습니다.</td>
				</tr>
			</c:if>
			
			<c:if test="${!empty list}">
			<c:set var="num" value="${pageMaker.total - ((pageMaker.cri.pageNum-1)*10)}"/>
			<c:forEach var="list" items="${list}">
				<tr>
					<td>${num}</td>
					<td class="title"><a href="/notice/notice_view.do?notice_no=${list.notice_no}">${list.notice_title}</a></td>
					<td><fmt:formatDate value="${list.notice_regdate}" pattern="yyyy-MM-dd"/></td>
				</tr>
			<c:set var="num" value="${num-1}"/>
			</c:forEach>
			</c:if>

			</tbody>
		</table>
	  </div>
	  
	  <div align="center" class="paging">
		<c:if test="${pageMaker.prev}">
			<a href="${pageMaker.startPage-1}"><i class="fa  fa-angle-double-left"></i></a>
		</c:if>
		<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
			<a href="${num}" class="${pageMaker.cri.pageNum == num?'active':''}">${num}</a>
		</c:forEach>
		<c:if test="${pageMaker.next}">
			<a href="${pageMaker.endPage+1}"><i class="fa  fa-angle-double-right"></i></a>
		</c:if>
		</div>
	  
	  
		<div align="center" >
			<form name="searchForm" id="searchForm" method="get" action="/notice/notice_list.do">
				<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
				<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
				<select class="form-select selform" name="type">
  					<option selected>선택</option>
  					<option value="T">제목</option>
 					<option value="C">내용</option>
				</select>
				<input type="text" name="keyword" class="form-control txtform">
				<button class="btn btn-light">검색</button>
			</form>
		</div>
	  
	</div>
	
	<form id="actionForm" action="/notice/notice_list.do" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		<input type="hidden" name="type" value="${pageMaker.cri.type}">
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
	</form>	
	
	<script>
		$(function(){
			var actionForm = $("#actionForm")
			$(".paging > a").on("click", function(e){
				e.preventDefault();
				actionForm.find("input[name='pageNum']").val($(this).attr("href"));
				actionForm.submit();
			})
			
			var searchForm = $("#searchForm");
			$("#searchForm button").on("click", function(e){
				if(!searchForm.find("input[name='keyword']").val()){
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