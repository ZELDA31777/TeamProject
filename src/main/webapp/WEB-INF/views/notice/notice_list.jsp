<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<style>
.write{
float:right;
margin-bottom: 2%
}
</style>


	<div class="sub_title">
		<h2>공지사항</h2>
	</div>

	<div class="container">
		<div class="record_group">
			<p>총게시글<span>@</span>건</p>
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
			<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.notice_no}</td>
					<td class="title"><a href="/notice/notice_view.do?notice_no=${list.notice_no}">${list.notice_title}</a></td>
					<td><fmt:formatDate value="${list.notice_regdate}" pattern="yyyy-MM-dd"/></td>
				</tr>
			</c:forEach>
			</c:if>

			</tbody>
		</table>
	  </div>
	</div>

<%@ include file="../include/footer.jsp"%>