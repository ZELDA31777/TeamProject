<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>

<!-- 부트스트랩 합치기 -->

<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>살고 싶은 집! 원 픽!</title>

<!-- 부트스트랩 -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet" href="/resources/css/flags.css">
<link rel="stylesheet" href="/resources/css/mystyle.css">
<link rel="stylesheet" href="/resources/css/translate.css">
<link href="/resources/css/navbar.css" rel="stylesheet">
<!-- 부가적인 테마 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/612013e4bc.js"
	crossorigin="anonymous"></script>

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--explorer 9 버전 이하에서 실행 시 -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- 구글 번역기 Script -->
<style type="text/css">

/*상단 플로팅 바 옵션 가리기  */
body {
	position: static !important;
	top: 0px !important;
}

iframe.goog-te-banner-frame {
	display: none !important;
}

.goog-logo-link {
	display: none !important;
}

.goog-te-gadget {
	color: transparent !important;
	overflow: hidden;
}

.goog-te-balloon-frame {
	display: none !important;
}

/*원본 텍스트 팝업 안뜨게 하기*/
.goog-tooltip {
	display: none !important;
}

.goog-tooltip:hover {
	display: none !important;
}

.goog-text-highlight {
	background-color: transparent !important;
	border: none !important;
	box-shadow: none !important;
}

.skiptranslate {
   display: none !important;
}

.skiptranslate:hover {
   display: none !important;
}

</style>


</head>
<body class="test">
	<div class="container-fluid">
		<!-- Collect the nav links, forms, and other content for toggling -->
		<nav class="navbar navbar-expand-md navbar-light"
			aria-label="Fourth navbar example">
			<div class="container-fluid">

				<!-- brand 부분에 텍스트 대신 이미지 추가 -->
				<img src="/resources/images/logo_001.png"
					onClick="location.href='/';" style="width: 4%;">

				<!-- 화면 축소시 나오는 = 버튼 -->
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarsExample04"
					aria-controls="navbarsExample04" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<!-- = 버튼 끝 -->

				<!-- 네비 목록 시작 -->
				<div class="collapse navbar-collapse justify-content-end mynavbar"
					id="navbarsExample04">
					<ul class="navbar-nav mb-2 mb-md-0">

						<!-- 현재 주소 정보 가져오기 -->
						<c:set var="nowUri"
							value="${requestScope['javax.servlet.forward.request_uri']}" />

						<!-- 현재 로그인 한 유저의 정보를 받아옴 시작-->
						<sec:authorize access="isAuthenticated()">
							<c:set var="username">
								<sec:authentication property="principal.user.username" />
							</c:set>
							<c:set var="nickname">
								<sec:authentication property="principal.user.nickname" />
							</c:set>
						</sec:authorize>
						<!-- 현재 로그인 한 유저의 정보를 받아옴 끝-->

						<!-- 구글 번역기 API -->
						<div id="google_translate_element" style="display: none;"></div>
						<!-- "새 번역 링크 UI" -->
						<ul class="translation-links">
							<li><a href="javascript:void(0)"
								class="korean" data-lang="ko">한국어</a></li>
							<li><a href="javascript:void(0)" class="japanese"
								data-lang="ja">Japanese</a></li>
						</ul>
						<script
							src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
						<script type="text/javascript">
							/* 구글 번역 초기화 */
							function googleTranslateElementInit() {
								new google.translate.TranslateElement({
									pageLanguage : 'ko',
									autoDisplay : true
								}, 'google_translate_element');
							}
						</script>
						<script type="text/javascript">
							/* 새 UI 선택 클릭 이벤트가 발생하면
							   감춤 처리한 구글 번역 콤보리스트에
							   선택한 언어를 적용해 변경 이벤트를 발생시키는 코드  */
							document
									.querySelector('.translation-links')
									.addEventListener(
											'click',
											function(event) {

												let el = event.target;
												if (el != null) {
													while (el.nodeName == 'FONT') {
														el = el.parentElement;
													}//data-lang 속성이 있는 태그 찾기
													const tolang = el.dataset.lang; // 변경할 언어 코드 얻기
													const gtcombo = document
															.querySelector('.goog-te-combo');
													if (gtcombo == null) {
														alert("Error: Could not find Google translate Combolist.");
														return false;
													}

													console.log(gtcombo.value);
													
													gtcombo.value = tolang; // 변경할 언어 적용
													
													gtcombo
															.dispatchEvent(new Event(
																	'change')); // 변경 이벤트 트리거

													// 한국어 를 2번 눌러야 하므로 1번 더 누르는 이벤트 트리거 동작
													if (gtcombo.value == "ko") {
														gtcombo.dispatchEvent(new Event('change'));
													}
												}
												return false;
											});
						</script>
						<sec:authorize access="hasAnyRole('ADMIN' , 'SUPER_ADMIN')">
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'tip_list.do'))?'active':'' }"
								href="/tip/tip_list.do">가이드 & Tip</a></li>
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'notice_list.do'))?'active':'' }"
								href="/notice/notice_list.do">공지사항</a></li>
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'income.do'))?'active':'' }"
								href="/admin/manage/income.do">수익현황</a></li>
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'admin_cor_list.do'))?'active':'' }"
								href="/admin/manage/admin_cor_list.do">중개사 회원관리</a></li>
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'admin_user_list.do'))?'active':'' }"
								href="/admin/manage/admin_user_list.do">일반 회원관리</a></li>
						</sec:authorize>


						<sec:authorize access="hasAnyRole('USER' , 'NON')">
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'map_view.do'))?'active':'' }"
								href="/map/map_view.do">지도</a></li>
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'looked_room.do'))?'active':'' }"
								href="/favorite/looked_room.do?username=${username }">관심목록</a></li>
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'alert_list.do'))?'active':'' }"
								href="/alert/alert_list.do?username=${username }">알림</a></li>
						</sec:authorize>

						<sec:authorize access="hasRole('MEMBER')">
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'map_view.do'))?'active':'' }"
								href="/map/map_view.do">지도</a></li>
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'cor_view.do'))?'active':'' }"
								href="/coroperation/cor_view.do?username=${username }">내
									매물관리</a></li>
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'alert_list.do'))?'active':'' }"
								href="/alert/alert_list.do?username=${username }">알림</a></li>
						</sec:authorize>

						<sec:authorize access="isAnonymous()">
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'map_view.do'))?'active':'' }"
								href="/map/map_view.do">지도</a></li>
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'looked_room_non.do'))?'active':'' }"
								href="/favorite/looked_room_non.do">관심목록</a></li>
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'alert_list.do'))?'active':'' }"
								href="/alert/alert_list.do">알림</a></li>
							<li class="nav-item"><a
								class="nav-link ${(fn:contains(nowUri, 'user_login.do'))?'active':'' }"
								href="/user/user_login.do">로그인</a>
						</sec:authorize>

						<sec:authorize
							access="hasAnyRole('USER' , 'NON' , 'ADMIN' , 'SUPER_ADMIN')">
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="dropdown04"
								data-bs-toggle="dropdown" aria-expanded="false">${nickname }</a>
								<ul class="dropdown-menu dropdown-menu-end"
									aria-labelledby="dropdown04">
									<li><sec:authorize access="isAuthenticated()">
											<c:if test="${empty kakao}">
												<li><a class="dropdown-item"
													href="/user/user_password_check.do?username=${username }">마이페이지</a>
												</li>
												<form name="lg" action="/user/user_logout.do" method="post">
													<input type="hidden" name="${_csrf.parameterName }"
														value="${_csrf.token }"> <a class="dropdown-item"
														href="javascript:lg.submit();">로그아웃</a>
												</form>
											</c:if>
											<c:if test="${!empty kakao}">
												<li><a class="dropdown-item"
													href="/user/user_modify_kakao.do?username=${username }">마이페이지</a>
												</li>
												<a class="dropdown-item"
													href="https://kauth.kakao.com/oauth/logout?client_id=ec529ddcb0a1e3f154fc6847679fe18a&logout_redirect_uri=${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/user/user_login.do">카카오
													로그아웃</a>
											</c:if>
										</sec:authorize></li>
								</ul></li>
						</sec:authorize>

						<sec:authorize access="hasRole('MEMBER')">
							<!-- 현재 로그인 한 중개사의 정보를 받아옴 -->
							<c:set var="name">
								<sec:authentication property="principal.user.cor.name" />
							</c:set>
							<!-- 현재 로그인 한 중개사의 정보를 받아옴 종료 -->

							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="dropdown04"
								data-bs-toggle="dropdown" aria-expanded="false">${name }</a>
								<ul class="dropdown-menu dropdown-menu-end"
									aria-labelledby="dropdown04">
									<li><a class="dropdown-item"
										href="/user/user_password_check.do?username=${username }">마이페이지</a></li>
									<li><sec:authorize access="isAuthenticated()">
											<form name="lg" action="/user/user_logout.do" method="post">
												<input type="hidden" name="${_csrf.parameterName }"
													value="${_csrf.token }"> <a class="dropdown-item"
													href="javascript:lg.submit()">로그아웃</a>
											</form>
										</sec:authorize></li>
								</ul></li>
						</sec:authorize>

						<sec:authorize access="isAnonymous()">
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="dropdown04"
								data-bs-toggle="dropdown" aria-expanded="false">회원가입</a>
								<ul class="dropdown-menu dropdown-menu-end"
									aria-labelledby="dropdown04">
									<li><a class="dropdown-item" href="/user/user_register.do">일반회원</a></li>
									<li><a class="dropdown-item"
										href="/user/user_register_cor.do">중개사 회원</a></li>
								</ul></li>
						</sec:authorize>
					</ul>
				</div>
				<!-- 네비 목록 끝 -->

			</div>
		</nav>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->