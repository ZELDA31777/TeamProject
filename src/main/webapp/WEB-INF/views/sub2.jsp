<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>부트스트랩 101 템플릿</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/mystyle.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<div class="container-fluid border100">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="/">BOOTSTRAP</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="sub1">회사소개 <span class="sr-only">(current)</span></a></li>
							<li><a href="/sub2">제품안내</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-expanded="false">고객센터
									<span class="caret"></span>
							</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="sub3">고객후기</a></li>
									<li><a href="#">질문답변</a></li>
									<li><a href="#">FAQ</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
									<li class="divider"></li>
									<li><a href="#">One more separated link</a></li>
								</ul></li>
						</ul>
						<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default">Submit</button>
						</form>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#">Link</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-expanded="false">Dropdown
									<span class="caret"></span>
							</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
	</div>
	<!-- header end -->

	<!-- sub contents start -->

	<!-- sub visual start-->
	<div class="container-fluid subvisual">
		<div class="container">
			<h2>즐거운날에도, 슬픈날에도, 기쁜날에도 코딩하자</h2>
			<p>인내와 창의력으로 끝까지 도전하여 전문가로 대우받자</p>
		</div>
	</div>
	<!-- sub visual end-->

	<div class="container-fluid subcontent">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="panel-group" id="accordion" role="tablist"
						aria-multiselectable="true">
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingOne">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne" aria-expanded="true"
										aria-controls="collapseOne"> 회사소개 </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in"
								role="tabpanel" aria-labelledby="headingOne">
								<div class="panel-body">
									<ul>
										<li><a href="">회사소개</a></li>
										<li><a href="">오시는길</a></li>
										<li><a href="">연혁</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingTwo">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse"
										data-parent="#accordion" href="#collapseTwo"
										aria-expanded="false" aria-controls="collapseTwo"> 제품안내 </a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingTwo">
								<div class="panel-body">
									<ul>
										<li><a href="">제품안내</a></li>
										<li><a href="">사용방법</a></li>
										<li><a href="">고객센터</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingThree">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse"
										data-parent="#accordion" href="#collapseThree"
										aria-expanded="false" aria-controls="collapseThree"> 고객센터
									</a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingThree">
								<div class="panel-body">
									<ul>
										<li><a href="">질문답변</a></li>
										<li><a href="">고객후기</a></li>
										<li><a href="">FAQ</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-9">
					<div class="row">
						<h2>공지사항</h2>
						<table class="table table-hover">
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>날짜</th>
								<th>조회수</th>
							</tr>
							<tr>
								<td>100</td>
								<td>코딩열심히 공부해서 전문가로 대우받자</td>
								<td>관리자</td>
								<td>2022-03-21</td>
								<td>234</td>
							</tr>
							<tr>
								<td>100</td>
								<td>코딩열심히 공부해서 전문가로 대우받자</td>
								<td>관리자</td>
								<td>2022-03-21</td>
								<td>234</td>
							</tr>
							<tr>
								<td>100</td>
								<td>코딩열심히 공부해서 전문가로 대우받자</td>
								<td>관리자</td>
								<td>2022-03-21</td>
								<td>234</td>
							</tr>
							<tr>
								<td>100</td>
								<td>코딩열심히 공부해서 전문가로 대우받자</td>
								<td>관리자</td>
								<td>2022-03-21</td>
								<td>234</td>
							</tr>
							<tr>
								<td>100</td>
								<td>코딩열심히 공부해서 전문가로 대우받자</td>
								<td>관리자</td>
								<td>2022-03-21</td>
								<td>234</td>
							</tr>
						</table>
					</div>

					<div class="page">
						<nav style="text-align: center;">
							<ul class="pagination">
								<li><a href="#" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>
						<button type="button" class="btn btn-danger"
							onClick="location.href='sub2write'">글쓰기</button>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- sub contents start -->


	<footer>
		<div class="container-fluid footerbg">
			<div class="container">
				<p>Copyright All rights Reserved</p>
			</div>
		</div>
	</footer>

	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>