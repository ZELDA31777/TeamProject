<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!-- sub contents start -->



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
.btn-light:focus {
	color: #000;
	background-color: #f8f9fa;
	border-color: #f8f9fa;
	box-shadow: none;
}

</style>


<!-- 양방향 슬라이더 nouislider 시작 -->
<link href="/resources/css/nouislider.min.css" rel="stylesheet">
<script src="/resources/js/nouislider.js"></script>
<script src="/resources/js/wNumb.min.js"></script>
<style>
/* 핸들 모양 및 색상 */
.noUi-handle {
	height: 1.2rem !important;
	width: 1.2rem !important;
	top: -0.05rem !important;
	right: -0.6rem !important;
	border-radius: 0.6rem !important;
}
.noUi-handle:before, .noUi-handle:after {
	display: none;
}
/* 최소 핸들 색상 */
.noUi-handle-lower {
	background: red;
	border: none;
	box-shadow: none;

}
/* 최대 핸들 색상 */
.noUi-handle-upper {
	background: purple;
	border: none;
	box-shadow: none;

}
/* 사이 색상 */
.noUi-connect {
    background: #3FB8AF;
}

/* 슬라이더 디자인 */
.noUi-target {
	border: none;
}

</style>
<!-- 양방향 슬라이더 nouislider 끝 -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true" >
	<div class="modal-dialog modal-xl">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">(여기엔 무엇을 출력해야할까? 매물정보는 x)</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body"></div>
		</div>
	</div>
</div>


<div class="container-fluid">
<form id="searchConditionForm">
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
							<div class="d2-link">가양동</div>
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
							<div class="d2-link">판암동</div>
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
							<div class="d2-link">문화동</div>
							<div class="d2-link">부사동</div>
							<div class="d2-link">산성동</div>
							<div class="d2-link">석교동</div>
							<div class="d2-link">오류동</div>
							<div class="d2-link">용두동</div>
							<div class="d2-link">유천동</div>
							<div class="d2-link">은행동</div>
							<div class="d2-link">중천동</div>
							<div class="d2-link">태평동</div>
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
							data-bs-auto-close="outside"
							aria-expanded="false" style="width: 80%;">원룸, 오피스텔</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px;">
									<h4>방종류</h4>
									<h6>중복선택이 가능합니다.</h6>

									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="0"
											id="type0" name="type" checked> <label
											class="form-check-label" for="type0"> 원룸 </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="1"
											id="type1" name="type" checked> <label
											class="form-check-label" for="type1"> 오피스텔
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
							data-bs-auto-close="outside"
							aria-expanded="false" style="width: 80%;">보증금/월세</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px;">

									<h4>가격</h4>

									<div class="form-label">보증금</div>
									<div class="slider" data-min="0" data-max="1000" data-name="deposit" data-step="50"></div>
									<div class="row mt-2 mb-3">
										<div class="col-md-6">
											<input type="number" class="w-100" name="deposit" min="0" max="1000" value="0" step="50" data-idx="0" pattern="\d*">
										</div>
										<div class="col-md-6">
											<input type="number" class="w-100" name="deposit" min="0" max="1000" value="1000" step="50" data-idx="1" pattern="\d*">
										</div>
									</div>
									
									<div class="form-label">월세</div>
									<div class="slider" data-min="5" data-max="100" data-name="rent" data-step="5"></div>
									<div class="row mt-2 mb-3">
										<div class="col-md-6">
											<input type="number" class="w-100" name="rent" min="5" max="100" value="0" step="5" data-idx="0" pattern="\d*">
										</div>
										<div class="col-md-6">
											<input type="number" class="w-100" name="rent" min="5" max="100" value="100" step="5" data-idx="1" pattern="\d*">
										</div>
									</div>

								</div>
							</li>
						</ul>
					</div>
					<!-- 가격 끝 -->

					<!-- 관리비 시작 -->
					<div class="dropdown" style="float: left; width: 15%;">
						<button class="btn btn-light" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							data-bs-auto-close="outside"
							aria-expanded="false" style="width: 80%;">관리비</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px;">

									<h4>관리비</h4>
									<div class="slider" data-min="0" data-max="20" data-name="manage" data-step="1"></div>
									<div class="row mt-2 mb-3">
										<div class="col-md-6">
											<input type="number" class="w-100" name="manage" min="0" max="20" value="0" step="1" data-idx="0" pattern="\d*">
										</div>
										<div class="col-md-6">
											<input type="number" class="w-100" name="manage" min="0" max="20" value="20" step="1" data-idx="1" pattern="\d*">
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
							data-bs-auto-close="outside"
							aria-expanded="false" style="width: 80%;">방크기</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px;">

									<h4>방크기</h4>
									<div class="slider" data-min="5" data-max="50" data-name="area" data-step="5"></div>
									<div class="row mt-2 mb-3">
										<div class="col-md-6">
										</div>
										<div class="col-md-6">
										</div>
									</div>
									<input type="number" class="w-100" name="area" min="5" max="50" value="5" step="5" data-idx="0" pattern="\d*">
									<input type="number" class="w-100" name="area" min="5" max="50" value="50" step="5" data-idx="1" pattern="\d*">
									

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
							data-bs-auto-close="outside"
							aria-expanded="false" style="width: 80%;">추가필터</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px;">

									<div class="row" style="width: 650px;">
										<div class="col-4" style="padding: 10px;">
											<h4>층수</h4>
											<input class="form-check-input" type="checkbox" value=""
												id="flexCheckChecked" checked>
												<label class="form-check-label" for="flexCheckChecked" style="width: 35%">전체</label>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width: 35%">1층</label>
												<br>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width: 35%">2층</label>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width: 35%">3층</label>
												<br>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width: 35%">4층</label>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width: 35%">5층</label>
												<br>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width: 35%">6층</label>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width: 35%">7층 이상</label>
												<br>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width: 35%">반지층</label>
												<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
												<label class="form-check-label" for="flexCheckChecked" style="width: 35%">옥탑방</label>
												<br>
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
<%--
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
 --%>
					<!-- 필터 메뉴 끝 -->


				</div>
			</div>




		</div>
	</div>
</form>
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



<script>
// 매물 사진 클릭시 매물 정보 모달 열림
	function openModal(addr){
		$('#exampleModal').modal('show').find('.modal-body').load(addr);
	}


	var ztmp;
// 마커가 점프하게
	function jumpMarker(idx) {
		markList[idx].setAnimation(google.maps.Animation.BOUNCE);
		ztmp = markList[idx].getZIndex();
		markList[idx].setZIndex(1234567890);
	}
	
// 마커가 점프를 멈추게
	function stopMarker(idx) {
		markList[idx].setAnimation(null);
		markList[idx].setZIndex(ztmp);
	}


</script>



<!-- 지도 검색 조건 script 시작 -->
<script>
//양방향 슬라이더
	$(function (){
		/* 각 슬라이더 옵션에 대해 */
		$(".slider").each(function(idx, slider) {
			minVal = parseInt(slider.dataset.min);
			maxVal = parseInt(slider.dataset.max);
			stepVal = parseInt(slider.dataset.step);
			
			
			noUiSlider.create(slider, {
				start: [ minVal, maxVal],
				step: stepVal,
				connect: true,
				margin: stepVal,
				range: {
					'min':[minVal],
					'max':[maxVal]
				},
				format: wNumb({
					decimal: 0
				}),
								
			});
			// slider.dataset.name를 변수로 만들어 두면 모든 on에 대하여 같은 값으로 묶임
			slider.noUiSlider.on("update", function (values, handle){
				$("input[name='"+slider.dataset.name+"']")[handle].value = parseInt(values[handle]);
			});
	
			$("input[name='"+slider.dataset.name+"']").on("change", function(){
				var inNumIdx = $("input[name='"+slider.dataset.name+"']").index($(this));
				console.log(inNumIdx);
				if (inNumIdx) {
					leftVal = $("input[name='"+slider.dataset.name+"']")[0].value;
					console.log("right diff", $(this).val() - leftVal < slider.dataset.step);
					if ($(this).val() - leftVal < slider.dataset.step) {
						$(this).val(leftVal+slider.dataset.step);
					}
					else slider.noUiSlider.set([null, $(this).val()]);
				} else {
					rightVal = $("input[name='"+slider.dataset.name+"']")[1].value;
					console.log("left diff", rightVal - $(this).val() < slider.dataset.step);
					if (rightVal - $(this).val() < slider.dataset.step) {
						$(this).val(rightVal-slider.dataset.step);
					}
					else slider.noUiSlider.set([$(this).val(), null]);
				}
			});
	
			slider.noUiSlider.on("set", function (){
				getList(null);
			});
		});
	});

	// 선택한 정보를 이용하여 목록 받아오기(ajax)
	function getList(dong) {
		const header = "${_csrf.headerName}";
	    const token = "${_csrf.token}";

	    var list = [];

		$.ajax({
			type: 'post',
			url: '/map/getList.do',
			data: $('#searchConditionForm').serialize()+(dong?"&dong="+dong:""),
			datatype: 'json',
			//contentType: "application/json; charset=utf-8",
			beforeSend: function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success: function(result, status, xhr) {
				list = result;
				var htmlStr = "";

				for (var i=0; i<markList.length; i++) markList[i].setMap(null);

				markList = [];
				
				for (var i=0; i<list.length; i++) {
					htmlStr += `<div class="card w-100">
						<div class="card-body">
							<div class="row m-0 gx-3">
								<div class="col-5"
									style="background: blue; background-clip: content-box; height: calc(200px - 32px);">
									<!-- 썸네일 이미지 출력 -->
									<img class="product_view"
										src="/upload/`+list[i].thumbnail+`"
										style="width: 100%; height: 100%;" data-bs-toggle="modal"
										data-bs-target="#exampleModal" data-idx=`+i+`
										href="/map/map_modal_view.do?pno=`+list[i].pno+`"
										onclick="openModal(this.getAttribute('href'));"
										onmouseover="jumpMarker(this.dataset.idx);"
										onmouseout="stopMarker(this.dataset.idx);">
								</div>
								<div class="col-7">
									<div class="iamnls">
										<div class="fOVNCS">
											<h1 class="kPmScS">보증금 / 월세
												`+list[i].deposit+`/`+list[i].rent+`</h1>
											<p class="fGfKPR">
												`+(list[i].type==1?"오피스텔":"원룸")+`
											</p>
											<p class="fYtEsj">`+list[i].floor+`층,
												`+list[i].area+`m², 관리비`+list[i].manage+`만</p>
											<p class="fYtEsj">`+list[i].contents+`</p>
										</div>
										<div class="eCimNy"></div>
									</div>
								</div>
							</div>
						</div>
					</div>`;

					const marker = new google.maps.Marker({
						position: {lat:list[i].lat, lng:list[i].lng},
						map: map,
						zIndex: list[i].pno,
					});

					marker.addListener("click", () => {
						openModal("/map/map_modal_view.do?pno="+marker.getZIndex());
					});

					markList.push(marker);
				}
				
				
				$("#nav-home").html(htmlStr);
				
			},
			error: function(xhr, status, err) {
				console.log(xhr, status, err);
			}
		});
	}

	$("input[type!=number]").on("change", function (){getList(null);}); // 조건 선택이 바뀔 때마다 매물 목록을 가져옴
	$(".d2-link").on("click", function (){getList($(this).html())}); // 지역 설정에서 동 클릭시 매물 목록을 가져옴
</script>
<!-- 지도 검색 조건 script 끝 -->



<!-- 구글 지도 스크립트 시작 -->
<script>
	let map;
	let markList = [];
  function initMap() {
    map = new google.maps.Map(document.getElementById("map"), {
      center: { lat: 36.32843039, lng: 127.40531874 }, // 처음 로딩시 보여지는 중심점
      // latLngBounds: {north: northLat, south: southLat, west: westLng, east: eastLng}, 
      zoom: 13, // 클수록 확대
    });

    getList(null);
  }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCPxvrQTmFrf14CPepU3kV_wb8wIpwrwSs&callback=initMap&v=weekly" async></script>
<!-- 구글 지도 스크립트 끝 -->
<!-- sub contents end -->
<%--
	<%@ include file="../include/footer.jsp"%>
 --%>
</body>
</html>