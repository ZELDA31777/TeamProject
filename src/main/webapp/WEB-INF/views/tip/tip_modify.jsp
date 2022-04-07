<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

	<div class="sub_title">
		<h2>Guide & Tip 수정</h2>
	</div>

	<div class="container">
	<form name="tip" method="post" action="/tip/tip_modify_pro.do">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	<input type="hidden" name="tip_no" value="${vo.tip_no}">
	  <div>
		<table class="table">
			<colgroup>
				<col width="20%">
				<col width="*">
			</colgroup>
			<thead>
				<tr>
					<th>작성자</th>
					<td><input class="form-control" type="text" name="writer" value="관리자" readonly></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input class="form-control" type="text" name="tip_title" value="${vo.tip_title}"></td>
				</tr>
				<tr>
					<th style="padding-bottom:120px">내용</th>
					<td><textarea class="form-control" name="tip_content" style="height: 250px">${vo.tip_content}</textarea></td>
				</tr>
			</thead>
		</table>
	  </div>
	  
	  <div align="center">
	  <button type="button" class="btn btn-light" onClick="send_()">수정</button>&nbsp;&nbsp;
	  <button type="button" class="btn btn-light" onClick="javascript:history.back()">취소</button>
	  </div>
	 </form>
	</div>
	
	<script>
	function send_(){
		tip.submit();
	}
	</script>

<%@ include file="../include/footer.jsp"%>