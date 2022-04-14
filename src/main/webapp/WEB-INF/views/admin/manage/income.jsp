<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/header.jsp"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

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
	<div>
		<c:forEach var="uList" items="${uList }">
			<label>${uList.ddate.substring(5) }</label>
			<label>${uList.userno }</label>
		</c:forEach>
		
		<c:forEach var="mList" items="${mList }">
			<label>${mList.ddate.substring(5) }</label>
			<label>${mList.memberno }</label>
		</c:forEach>
		
		<c:forEach var="pList" items="${pList }">
			<label>${pList.ddate.substring(5) }</label>
			<label>${pList.preno }</label>
		</c:forEach>
	</div>
		<div class="col-md-12" style="width: -webkit-fill-available; height: 800px;">
			<!--차트가 그려질 부분-->
			<canvas id="line-chart" width="300" height="150"></canvas>
		</div>
	</div>
</div>



<!-- sub contents end -->
<%@ include file="../../include/footer.jsp"%>

<script type="text/javascript">

new Chart(document.getElementById("line-chart"), {
	  type: 'line',
	  data: {
	    labels: [11, 12, 01, 02, 03, 04],
	    datasets: [{ 
	        data: [0,0,106,106,107,111],
	        label: "일반 회원 수",
	        borderColor: "#3e95cd",
	        fill: false
	      }, { 
	        data: [168,170,178,190,203,276],
	        label: "중개사 회원 수",
	        borderColor: "#3cba9f",
	        fill: false
	      }, { 
	        data: [6,3,2,2,7,26],
	        label: "프리미엄 회원 수",
	        borderColor: "#c45850",
	        fill: false
	      }
	    ]
	  },
	  options: {
	    title: {
	      display: true,
	      text: '한달 수익현황'
	    }
	  }
	});
</script>




</body>
</html>