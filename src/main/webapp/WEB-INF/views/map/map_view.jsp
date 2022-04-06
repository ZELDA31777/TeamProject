<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!-- sub contents start -->

<!-- 양방향 슬라이더 css 시작 -->
<style>
.slider {
	width: 100%;
	height: 100%;
	padding: 1.5rem;
	display: flex;
	flex-direction: column;
	justify-content: flex-start;
	align-items: center;
	position: relative;
}

.input-range {
	width: calc(100% - 2rem);
	top: 1rem;
	left: 1rem;
	position: absolute;
	border: none;
	pointer-events: none;
	z-index: 10;
	appearance: none;
	opacity: 0.5;
}

.input-range:first-child {
	top: 1rem;
}

.input-range::-webkit-slider-thumb {
	pointer-events: all;
	/* appearance, background-color는 지워도 됨 */
	appearance: none;
	background-color: red;
	width: 1.5rem;
	height: 1.5rem;
}

.track {
	position: relative;
	margin-top: 5rem;
	width: 100%;
	height: 0.5rem;
	background-color: #bdc3c7;
	border-radius: 0.5rem;
}

.range {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	background-color: Aqua;
	border-radius: 0.5rem;
}

.thumb {
	position: absolute;
	top: 0;
	transform: translateY(-0.25rem);
	width: 1rem;
	height: 1rem;
	background-color: blue;
	border-radius: 50%;
}

.left {
	left: 0;
}

.right {
	right: 0;
}
</style>
<!-- 양방향 슬라이더 끝 -->



<!-- 마우스 오버 드롭다운 메뉴 css 시작 -->
<style>
.d1, .d2 {
	height: 100%;
	width: 100%;
	background-color: lawngreen;
	position: relative;
}

.d1btn, .d2btn {
	border: 0;
	height: 100%;
	width: 100%;
	display: flex;
	justify-content: center;
}

.d1-content, .d2-content {
	position: absolute;
	visibility: hidden;
	z-index: 1000;
	background-color: #f1f1f1;
	width: 50%;
	top: 0px;
	opacity: 0;
}

.d1-content .d1-link, .d2-content .d2-link {
	color: black;
	display: block;
	padding: 0.8rem 1rem;
	font-size: 1.2rem;
	text-align: center;
}

.d2-content {
	position: absolute;
	width: 100%;
	left: 70%;
}

.d1-link:hover, .d2-link:hover {
	background-color: #6495ED;
}

.d1:hover .d1-content {
	visibility: visible;
	opacity: 1;
	top: 100%;
	transition: all 0.2s linear;
}

.d2:hover .d2-content {
	visibility: visible;
	opacity: 1;
	left: 100%;
	transition: all 0.2s linear;
}

/* map 영역 높이 계산 */
#nav-tabContent {
	height: calc(92.5vh - 1rem - 130px);
}
</style>
<!-- 마우스 오버 드롭다운 메뉴 css 끝 -->


<style>
h4 {
	text-align: left;
}

/* header.jsp 의 로고 이미지 크기를 세로 기준으로 바꿔서 map 영역 높이 계산하기 쉽도록  */
</style>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true" >
	<div class="modal-dialog modal-xl">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">매물번호 {1223123}</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body"></div>
		</div>
	</div>
</div>


<div class="container-fluid">
	<div class="row">
		<div class="col-3 p-0" style="height: 60px; background-color: red;">
			<!-- 지역 선택 시작 -->
			<div class="d1">
				<div class="d1btn">
					<div class="align-self-center">지역 설정</div>
				</div>
				<div class="d1-content">
					<div class="d1-link d2">
						<div class="d2btn">
							<div class="align-self-center">동구</div>
						</div>
						<div class="d2-content overflow-scroll" style="height: 30vh">
							<div class="d2-link">가양1동</div>
							<div class="d2-link">가양2동</div>
							<div class="d2-link">대동</div>
							<div class="d2-link">대청동</div>
							<div class="d2-link">산내동</div>
							<div class="d2-link">삼성동</div>
							<div class="d2-link">성남동</div>
							<div class="d2-link">신인동</div>
							<div class="d2-link">용운동</div>
							<div class="d2-link">용전동</div>
							<div class="d2-link">자양동</div>
							<div class="d2-link">중앙동</div>
							<div class="d2-link">판암1동</div>
							<div class="d2-link">판암2동</div>
							<div class="d2-link">홍도동</div>
							<div class="d2-link">효동</div>
						</div>
					</div>
					<div class="d1-link d2">
						<div class="d2btn">
							<div class="align-self-center">중구</div>
						</div>
						<div class="d2-content overflow-scroll" style="height: 30vh">
							<div class="d2-link">대사동</div>
							<div class="d2-link">대흥동</div>
							<div class="d2-link">목동</div>
							<div class="d2-link">문창동</div>
							<div class="d2-link">문화1동</div>
							<div class="d2-link">문화2동</div>
							<div class="d2-link">부사동</div>
							<div class="d2-link">산성동</div>
							<div class="d2-link">석교동</div>
							<div class="d2-link">오류동</div>
							<div class="d2-link">용두동</div>
							<div class="d2-link">유천1동</div>
							<div class="d2-link">유천2동</div>
							<div class="d2-link">은행선화동</div>
							<div class="d2-link">중천동</div>
							<div class="d2-link">태평1동</div>
							<div class="d2-link">태평2동</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 지역 선택 끝 -->
		</div>
		<div class="col-9" style="background-color: green;">
			<div class="row align-items-center h-100">
				<div class="col">
					<!-- 필터 메뉴 시작 -->
					<!-- 방종류 시작 -->
					<div class="dropdown" style="float: left; width: 15%;">
						<button class="btn btn-light" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false" style="width: 80%;">원룸, 오피스텔</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px;">
									<h4>방종류</h4>
									<h6>중복선택이 가능합니다.</h6>

									<div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="flexCheckDefault" checked> <label
											class="form-check-label" for="flexCheckDefault"> 원룸 </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="flexCheckChecked" checked> <label
											class="form-check-label" for="flexCheckChecked"> 오피스텔
										</label>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- 방종류 끝 -->

					<!-- 가격 시작 -->
					<div class="dropdown" style="float: left; width: 15%;">
						<button class="btn btn-light" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false" style="width: 80%;">월세</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px;">

									<h4>가격</h4>

									<label for="customRange3" class="form-label">보증금</label> <input
										type="range" class="form-range" min="0" max="5" step="0.5"
										id="customRange3"> <label for="customRange3"
										class="form-label">월세</label> <input type="range"
										class="form-range" min="0" max="5" step="0.5"
										id="customRange3">

								</div>
							</li>
						</ul>
					</div>
					<!-- 가격 끝 -->

					<!-- 관리비 시작 -->
					<div class="dropdown" style="float: left; width: 15%;">
						<button class="btn btn-light" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false" style="width: 80%;">관리비</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px;">

									<h4>관리비</h4>
									<span id="manage_value"></span> <input type="range"
										class="form-range" min="0" max="5" step="0.5" id="manage">

									<div class="slider">
										<input type="range" class="input-range" id="input-left"
											min="1" max="100" value="1" /> <input type="range"
											class="input-range" id="input-right" min="1" max="100"
											value="100" />
										<div class="track">
											<div class="range"></div>
											<div class="thumb left"></div>
											<div class="thumb right"></div>
										</div>
									</div>

									<button type="button" class="btn btn-light"
										style="float: right;">조건 삭제</button>

								</div>
							</li>
						</ul>
					</div>
					<!-- 관리비 끝 -->

					<!-- 방크기 시작 -->
					<div class="dropdown" style="float: left; width: 15%;">
						<button class="btn btn-light" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false" style="width: 80%;">방크기</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px;">

									<h4>방크기</h4>

									<input type="range" class="form-range" min="0" max="5"
										step="0.5" id="customRange3">

									<button type="button" class="btn btn-light"
										style="float: right;">조건 삭제</button>

								</div>
							</li>
						</ul>
					</div>
					<!-- 방크기 끝 -->

					<!-- 추가 필터 시작 -->
					<div class="dropdown" style="float: left; width: 15%;">
						<button class="btn btn-light" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false" style="width: 80%;">추가필터</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px;">

									<div class="row" style="width: 650px;">
										<div class="col-4" style="padding: 10px;">
											<h4>층수</h4>
											<input class="form-check-input" type="checkbox" value=""
												id="flexCheckChecked" checked> <label
												class="form-check-label" for="flexCheckChecked"
												style="width: 35%">전체</label> <input
												class="form-check-input" type="checkbox" value=""
												id="flexCheckChecked"> <label
												class="form-check-label" for="flexCheckChecked"
												style="width: 35%">1층</label><br> <input
												class="form-check-input" type="checkbox" value=""
												id="flexCheckChecked"> <label
												class="form-check-label" for="flexCheckChecked"
												style="width: 35%">2층</label> <input
												class="form-check-input" type="checkbox" value=""
												id="flexCheckChecked"> <label
												class="form-check-label" for="flexCheckChecked"
												style="width: 35%">3층</label><br> <input
												class="form-check-input" type="checkbox" value=""
												id="flexCheckChecked"> <label
												class="form-check-label" for="flexCheckChecked"
												style="width: 35%">4층</label> <input
												class="form-check-input" type="checkbox" value=""
												id="flexCheckChecked"> <label
												class="form-check-label" for="flexCheckChecked"
												style="width: 35%">5층</label><br> <input
												class="form-check-input" type="checkbox" value=""
												id="flexCheckChecked"> <label
												class="form-check-label" for="flexCheckChecked"
												style="width: 35%">6층</label> <input
												class="form-check-input" type="checkbox" value=""
												id="flexCheckChecked"> <label
												class="form-check-label" for="flexCheckChecked"
												style="width: 35%">7층 이상</label><br> <input
												class="form-check-input" type="checkbox" value=""
												id="flexCheckChecked"> <label
												class="form-check-label" for="flexCheckChecked"
												style="width: 35%">반지층</label> <input
												class="form-check-input" type="checkbox" value=""
												id="flexCheckChecked"> <label
												class="form-check-label" for="flexCheckChecked"
												style="width: 35%">옥탑방</label><br>
										</div>

										<div class="col-8">
											<div class="container-fluid">
												<div class="row">
													<div class="col-6" style="padding: 10px;">
														<h4>방수</h4>
														<input class="form-check-input" type="checkbox" value=""
															id="flexCheckChecked" checked> <label
															class="form-check-label" for="flexCheckChecked"
															style="width: 35%">전체</label> <input
															class="form-check-input" type="checkbox" value=""
															id="flexCheckChecked"> <label
															class="form-check-label" for="flexCheckChecked"
															style="width: 35%">1개</label><br> <input
															class="form-check-input" type="checkbox" value=""
															id="flexCheckChecked"> <label
															class="form-check-label" for="flexCheckChecked"
															style="width: 35%">2개</label> <input
															class="form-check-input" type="checkbox" value=""
															id="flexCheckChecked"> <label
															class="form-check-label" for="flexCheckChecked">3개
															이상</label>
													</div>

													<div class="col-6" style="padding: 10px;">
														<h4>욕실수</h4>
														<input class="form-check-input" type="checkbox" value=""
															id="flexCheckChecked" checked> <label
															class="form-check-label" for="flexCheckChecked"
															style="width: 35%">전체</label> <input
															class="form-check-input" type="checkbox" value=""
															id="flexCheckChecked"> <label
															class="form-check-label" for="flexCheckChecked"
															style="width: 35%">1개</label><br> <input
															class="form-check-input" type="checkbox" value=""
															id="flexCheckChecked"> <label
															class="form-check-label" for="flexCheckChecked"
															style="width: 35%">2개</label> <input
															class="form-check-input" type="checkbox" value=""
															id="flexCheckChecked"> <label
															class="form-check-label" for="flexCheckChecked">3개
															이상</label>
													</div>
												</div>
												<div class="row">
													<div class="col" style="padding: 20px;">
														<h4>풀옵션 여부</h4>
														<input class="form-check-input" type="checkbox" value=""
															id="flexCheckChecked" checked> <label
															class="form-check-label" for="flexCheckChecked"
															style="width: 35%">선택</label> <input
															class="form-check-input" type="checkbox" value=""
															id="flexCheckChecked"> <label
															class="form-check-label" for="flexCheckChecked"
															style="width: 35%">미선택</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- 추가필터 끝 -->

					<div class="dropdown" style="float: right; width: 4%;">
						<button class="btn btn-light" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">ㅇ</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px;">
									<h4>초기화 하는데 사용하는용도</h4>
								</div>
							</li>
						</ul>
					</div>

					<div class="dropdown" style="float: right; width: 4%;">
						<button class="btn btn-light" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">ㅁ</button>

						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px; width: 1000px;">
									<div class="container-fluid">

										<h3>상세속성</h3>

										<div class="border-bottom"
											style="border-bottom: 1px; margin: 20px;">
											<h4>방종류</h4>
											<div class="form-check" style="padding: 40px; float: left">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckDefault" checked> <label
													class="form-check-label" for="flexCheckDefault"> 원룸
												</label>
											</div>
											<div class="form-check" style="padding: 40px;">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked" checked> <label
													class="form-check-label" for="flexCheckChecked">
													오피스텔 </label>
											</div>
										</div>


										<div class="border-bottom"
											style="border-bottom: 1px; margin: 20px;">
											<h4>가격</h4>
											<div style="padding: 20px;">

												<label for="customRange3" class="form-label">보증금</label> <input
													type="range" class="form-range" min="0" max="5" step="0.5"
													id="customRange3"> <label for="customRange3"
													class="form-label">월세</label> <input type="range"
													class="form-range" min="0" max="5" step="0.5"
													id="customRange3">
											</div>

										</div>


										<div class="border-bottom"
											style="border-bottom: 1px; margin: 20px;">
											<h4>방크기(전용면적)</h4>
											<div style="padding: 20px;">

												<label for="customRange3" class="form-label">방크기</label> <input
													type="range" class="form-range" min="0" max="5" step="0.5"
													id="customRange3">
											</div>

										</div>

										<div class="border-bottom"
											style="border-bottom: 1px; margin: 20px;">
											<h4>층수</h4>
											<div style="padding: 20px;">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked" checked> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 5%">전체</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 5%">1층</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 5%">2층</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 5%">3층</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 5%">4층</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 5%">5층</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 5%">6층</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 8%">7층 이상</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 8%">반지층</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 8%">옥탑방</label>
											</div>
										</div>
										<div class="border-bottom"
											style="border-bottom: 1px; margin: 20px;">
											<h4>방수</h4>
											<div style="padding: 20px;">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked" checked> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 15%">전체</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 15%">1개</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 15%">2개</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked">3개
													이상</label>
											</div>
										</div>


										<div class="border-bottom"
											style="border-bottom: 1px; margin: 20px;">
											<h4>욕실수</h4>
											<div style="padding: 20px;">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked" checked> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 15%">전체</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 15%">1개</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked"
													style="width: 15%">2개</label> <input
													class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked"> <label
													class="form-check-label" for="flexCheckChecked">3개
													이상</label>
											</div>
										</div>



										<div class="border-bottom"
											style="border-bottom: 1px; margin: 20px;">
											<h4>풀옵션 여부</h4>
											<div class="form-check" style="padding: 40px; float: left">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckDefault" checked> <label
													class="form-check-label" for="flexCheckDefault"> 선택
												</label>
											</div>
											<div class="form-check" style="padding: 40px;">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckChecked" checked> <label
													class="form-check-label" for="flexCheckChecked">
													미선택 </label>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>

					</div>

					<!-- 필터 메뉴 끝 -->


				</div>
			</div>




		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row">
		<div class="col-3 p-0">
			<nav style="height: 50px">
				<div class="nav nav-tabs ps-3" id="nav-tab" role="tablist">
					<button class="nav-link active" id="nav-home-tab"
						data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
						role="tab" aria-controls="nav-home" aria-selected="true">전체
						방</button>
					<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
						data-bs-target="#nav-profile" type="button" role="tab"
						aria-controls="nav-profile" aria-selected="false">중개사무소</button>
				</div>
			</nav>
			<div class="tab-content overflow-auto" id="nav-tabContent">
				<div class="tab-pane fade show active h-100" id="nav-home"
					role="tabpanel" aria-labelledby="nav-home-tab">
					<!-- 지도에 표시되는 방 목록 시작-->


					<c:if test="${!empty list}">
						<c:forEach var="list" items="${list}">
							<div class="card w-100">
								<div class="card-body">
									<div class="row m-0 gx-3">
										<div class="col-5"
											style="background: blue; background-clip: content-box; height: calc(200px - 32px);">
											<!-- 썸네일 이미지 출력 -->
											<img class="product_view"
												src="/resources/images/logo_001.png"
												style="width: 100%; height: 100%;" data-bs-toggle="modal"
												data-bs-target="#exampleModal"
												href="/map/map_modal_view.do?pno=${list.pno }">
										</div>
										<div class="col-7">
											<div class="iamnls">
												<div class="fOVNCS">
													<h1 class="kPmScS">보증금 / 월세
														${list.deposit }/${list.rent }</h1>
													<p class="fGfKPR">
														<c:if test="${list.type eq 1}">오피스텔</c:if>
														<c:if test="${list.type eq 0}">원룸</c:if>
													</p>
													<p class="fYtEsj">${list.floor }층,
														${list.area }m², 관리비 ${list.manage }만</p>
													<p class="fYtEsj">${list.contents }</p>
												</div>
												<div class="eCimNy"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>

					<!-- 페이징 시작 -->
					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
					<!-- 페이징 끝 -->
					<!-- 지도에 표시되는 방 목록 끝 -->
				</div>
				<div class="tab-pane fade h-100" id="nav-profile" role="tabpanel"
					aria-labelledby="nav-profile-tab">
					<!-- 지도에 표시되는 중개사무소 목록 시작 -->
					<!-- 없을때 시작 -->
					<div class="container-fluid h-100">
						<div class="row h-100">
							<div class="col align-self-center">
								<!--
										조건에 맞는 방이 없습니다.
										위치 및 맞춤필터를 조정해보세요. 
									 -->
								<p class="text-center">
									<i class="fa-solid fa-circle-exclamation fa-2xl"></i>
								</p>
								<p class="text-center fs-6">
									이 지역에 안내 가능한 중개사무소가 없습니다.<br> 다른 지역으로 검색해보세요.
								<p>
							</div>
						</div>
					</div>
					<!-- 없을때 끝 -->
					<!-- 지도에 표시되는 중개사무소 목록 끝 -->
				</div>
			</div>
		</div>
		<div id="map" class="col-9" style="background-color: yellow;"></div>
	</div>
</div>

<!-- 마우스 오버 드롭다운 메뉴 script 시작 -->
<script>
	$(function(){
		$("#selectGu").on("mouseover", function(){
			$(this).trigger("click");
		});
		
		
	});
</script>
<!-- 마우스 오버 드롭다운 메뉴 script 끝 -->


<!-- 양방향 슬라이더 script 시작 -->
<script>
	$(function(){
		$("body").css("padding-bottom", "0");
		$("body").css("overflow", "hidden");
		
		$("#manage").on("input", function(){
			$("#manage_value").html($(this).val());
		});
	});

	$(function (){
		const inputLeft = document.getElementById("input-left");
		const inputRight = document.getElementById("input-right");

		const thumbLeft = document.querySelector(".thumb.left");
		const thumbRight = document.querySelector(".thumb.right");

		const range = document.querySelector(".range");

		console.log(inputLeft);
		console.log(inputRight);
		console.log(thumbLeft);
		console.log(thumbRight);
		console.log(range);
		
		const setLeftValue = e => {
		  const _this = e.target;
		  const { value, min, max } = _this;

		  if (+inputRight.value - +value < 10) {
		    _this.value = +inputRight.value - 10;
		  }

		  const percent = ((+_this.value - +min) / (+max - +min)) * 100;

		  thumbLeft.style.left = percent+"%";
		  range.style.left = percent+"%";
			console.log("left : ",thumbLeft.style.left);
			console.log("right : ", thumbRight.style.right);
		};

		const setRightValue = e => {
		  const _this = e.target;
		  const { value, min, max } = _this;

		  if (+value - +inputLeft.value < 10) {
		    _this.value = +inputLeft.value + 10;
		  }

		  const percent = ((+_this.value - +min) / (+max - +min)) * 100;

		  thumbRight.style.right = (100 - percent)+"%";
		  range.style.right = (100 - percent)+"%";

		  console.log("left : ",thumbLeft.style.left);
			console.log("right : ", thumbRight.style.right);
		};

		if (inputLeft && inputRight) {
		  inputLeft.addEventListener("input", setLeftValue);
		  inputRight.addEventListener("input", setRightValue);
		  console.log("적용");
		}
	});
</script>

<script>
	 $('.product_view').on('click', function(e){
		  e.preventDefault();
		  $('#exampleModal').modal('show').find('.modal-body').load($(this).attr('href'));
		});
	 
	 
</script>
<!-- 양방향 슬라이더 script 끝 -->

<!-- 구글 지도 스크립트 시작 -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCPxvrQTmFrf14CPepU3kV_wb8wIpwrwSs&callback=initMap&v=weekly " async></script>
<script>
  function initMap() {
    const map = new google.maps.Map(document.getElementById("map"), {
      center: { lat: 36.32843039, lng: 127.40531874 },
      zoom: 17,
    });
  }
</script>
<!-- 구글 지도 스크립트 끝 -->
<!-- sub contents end -->
<%--	
	<%@ include file="../include/footer.jsp"%>
 --%>
</body>
</html>