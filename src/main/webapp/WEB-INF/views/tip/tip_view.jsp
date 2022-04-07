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
        <h2 class="blog-post-title">${vo.tip_title}</h2>
        <p class="blog-post-meta"><fmt:formatDate value="${vo.tip_regdate}" pattern="yyyy-MM-dd"/></p>
        <p>${fn:replace(vo.tip_content, replaceChar, "<br>")}</p>
        <hr>
        
    <sec:authorize access="hasAnyRole('ADMIN' , 'SUPER_ADMIN')">
		<div align="center">
		<a href="/tip/tip_modify.do?tip_no=${vo.tip_no}"><button type="button" class="btn btn-light">수정</button></a>&nbsp;&nbsp;
		<button type="button" class="btn btn-light" onClick="location.href='/tip/tip_list.do'">목록으로</button>&nbsp;&nbsp;
		<a href="/tip/tip_delete.do?tip_no=${vo.tip_no}"><button type="button" class="btn btn-light">삭제</button></a>
		</div>
	</sec:authorize>
        
      </article>
	</div>
	
	


<%@ include file="../include/footer.jsp"%>