<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/header.jsp"%>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

<script>
	const labels = [ 'January', 'February', 'March', 'April', 'May', 'June', ];

	const data = {
		labels : labels,
		datasets : [ {
			label : 'My First dataset',
			backgroundColor : 'rgb(255, 99, 132)',
			borderColor : 'rgb(255, 99, 132)',
			data : [ 0, 10, 5, 2, 20, 30, 45 ],
		} ]
	};

	const config = {
		type : 'line',
		data : data,
		options : {}
	};
</script>

<script>
	const myChart = new Chart(document.getElementById('myChart'), config);
</script>

<!-- sub contents start -->
<div class="container">
	<div class="row">
		<div class="col-md-12"
			style="width: -webkit-fill-available; height: 800px;">
			<!--차트가 그려질 부분-->
			<canvas id="line-chart" width="300" height="150"></canvas>
		</div>
	</div>
</div>

<div class="container">

	<div style="padding-bottom: 2%">
		<strong>총 게시글 ${pageMaker.total}</strong>
	</div>

	<div class="row" style="--bs-gutter-x: 0;">
		<div
			class="list-group list-group-flush border-bottom scrollarea efdsfa row"
			style="padding-left: 0; padding-right: 0;">
			<div class="d-flex w-100 align-items-center justify-content-between"
				style="padding-top: 1%; padding-bottom: 1%;">
				<div class="col-md-2">
					<strong>번호</strong>
				</div>
				<div class="col-md-4">
					<strong>구매번호</strong>
				</div>
				<div class="col-md-4">
					<strong>회원ID</strong>
				</div>
				<div class="col-md-2">
					<strong>구매일자</strong>
				</div>
			</div>
		</div>


		<c:if test="${!empty list}">
			<c:set var="num"
				value="${pageMaker.total - ((pageMaker.cri.pageNum-1)*10)}" />
			<c:forEach var="list" items="${list}">

				<div
					class="list-group list-group-flush border-bottom scrollarea efdsfa row"
					style="padding-left: 0; padding-right: 0; padding-top: 1%; padding-bottom: 1%;">
					<div
						class="d-flex w-100 align-items-center justify-content-between">

						<div class="col-md-2">
							<strong class="mb-1">${num}</strong>
						</div>
						<div class="col-md-4">
							<small>${list.merchant_uid}</small>
						</div>
						<div class="col-md-4">
							<small>${list.username}</small>
						</div>
						<div class="col-md-2">
							<small><fmt:formatDate value="${list.regdate}"
									pattern="yyyy-MM-dd" /></small>
						</div>

					</div>
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
</div>

<form id="actionForm" action="/admin/manage/income.do" method="get">
	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
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



<!-- sub contents end -->
<%@ include file="../../include/footer.jsp"%>

<script type="text/javascript">
	
	new Chart(document.getElementById("line-chart"), {
		type : 'line',
		data : {
			labels : [ 01, 02, 03, 04, 05, 06 ],
			datasets : [ {
				data : ${uinfo},
				label : "일반 회원 수",
				borderColor : "#3e95cd",
				fill : false
			}, {
				data : ${minfo},
				label : "중개사 회원 수",
				borderColor : "#3cba9f",
				fill : false
			}, {
				data : ${pinfo},
				label : "프리미엄 회원 수",
				borderColor : "#c45850",
				fill : false
			} ]
		},
		options : {
			title : {
				display : true,
				text : '가입자 현황'
			}
		}
	});
</script>
</body>
</html>