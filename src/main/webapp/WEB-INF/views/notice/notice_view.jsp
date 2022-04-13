<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%
// '\n' 은 replace에서 인식이 안됨...
pageContext.setAttribute("LF", "\n"); 
%>
<style>
.abcdef {
	padding-bottom: 10%;
}
</style>

<div class="sub_title">
	<h2>공지사항</h2>
</div>

<div class="container">
	<article class="blog-post abcdef">
		<hr>
		<h2 class="blog-post-title">${vo.notice_title}</h2>
		<p class="blog-post-meta">
			<fmt:formatDate value="${vo.notice_regdate}" pattern="yyyy-MM-dd" />
		</p>
        <p><c:set var="contect" value="${fn:replace(fn:replace(vo.notice_content, LF, '<br>'),' ','&nbsp;')}"/>
        	${contect}</p>
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
	

	</article>
</div>

<%@ include file="../include/footer.jsp"%>