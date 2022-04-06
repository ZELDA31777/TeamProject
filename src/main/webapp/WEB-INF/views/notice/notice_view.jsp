<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<style>
.abcdef {
	margin-top: 10%;
	padding-bottom: 10%;
}

</style>

	<div class="container">
      <article class="blog-post abcdef">
        <hr>
        <h2 class="blog-post-title">${vo.notice_title}</h2>
        <p class="blog-post-meta"><fmt:formatDate value="${vo.notice_regdate}" pattern="yyyy-MM-dd"/></p>

        <p>${vo.notice_content}</p>
        <hr>
        
    <sec:authorize access="hasAnyRole('ADMIN' , 'SUPER_ADMIN')">
		<div align="center">
		<a href="/notice/notice_modify.do?notice_no=${vo.notice_no}"><button type="button" class="btn btn-light">수정</button></a>&nbsp;&nbsp;
		<button type="button" class="btn btn-light" onClick="location.href='/notice/notice_list.do'">목록으로</button>&nbsp;&nbsp;
		<a href="/notice/notice_delete.do?notice_no=${vo.notice_no}"><button type="button" class="btn btn-light">삭제</button></a>
		</div>
	</sec:authorize>
        
      </article>
	</div>
	
	


<%@ include file="../include/footer.jsp"%>