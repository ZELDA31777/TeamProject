<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>살고 싶은 집! 원픽!</title>

<!-- 부트스트랩 -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet" href="/resources/css/mystyle.css">
<link href="/resources/css/navbar.css" rel="stylesheet">
<!-- 부가적인 테마 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--explorer 9 버전 이하에서 실행 시 -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="test">
	<div class="container-fluid">
		<div class="container-fluid">
			<div class="container-fluid">
				<!-- Collect the nav links, forms, and other content for toggling -->
				<nav class="navbar navbar-expand-md navbar-dark bg-dark"
					aria-label="Fourth navbar example">
					<div class="container-fluid">
						<a class="navbar-brand nav-link" href="/">OnePick</a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarsExample04"
							aria-controls="navbarsExample04" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="collapse navbar-collapse justify-content-end mynavbar" id="navbarsExample04">
							<ul class="navbar-nav mb-2 mb-md-0">
								<li class="nav-item"><a class="nav-link" href="#">지도</a></li>
								<li class="nav-item"><a class="nav-link" href="#">관심목록</a></li>
								<li class="nav-item"><a class="nav-link" href="#">알림</a></li>
								<li class="nav-item"><a class="nav-link" href="/user/user_login.do">로그인</a>
								</li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" id="dropdown04"
									data-bs-toggle="dropdown" aria-expanded="false">회원가입</a>
									<ul class="dropdown-menu" aria-labelledby="dropdown04">
										<li><a class="dropdown-item" href="/user/user_register.do">일반회원</a></li>
										<li><a class="dropdown-item" href="/user/user_register_cor.do">중개사 회원</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
				</nav>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</div>
	</div>