<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!-- sub contents start -->



<!-- 마우스 오버 드롭다운 메뉴 css 시작 -->
<style>
.d1, .d2 {
	height: 100%;
	width: 100%;
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
	background-color: #fff;
	width: 50%;
	top: 0px;
	opacity: 0;
}

.d1-content .d1-link, .d2-content .d2-link {
	display: block;
	padding: 0.8rem 1rem;
	font-size: 1.2rem;
	text-align: center;
	border-top: 1px solid rgba(0,0,0,.125);
	border-bottom: 1px solid rgba(0,0,0,.125);
	border-collapse: collapse;
	color: rgba(0,0,0,.5) !important;
}

.d2-content .d2-link {
	font-size: 1rem;
}

.d2-content {
	position: absolute;
	width: 100%;
	left: 70%;
}

.d1-link:hover, .d2-link:hover {
	background-color: rgba(113,201,206,.3);
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

.cursor-pointer {
	cursor: pointer;
}

.border-btn {
	border: 1.5px solid rgba(0,0,0,.125);
}

.border-btn:hover {
	border: 1.5px solid rgba(113,201,206,.5);
	background-color: rgba(113,201,206,.3);
}

.border-set {
	border: 1.7px solid rgba(0,0,0,.2);
}

.tab-title {
	font-size: 1.15rem;
	font-weight: 600;
}


/* map 영역 높이 계산 */
#nav-tabContent {
	height: calc(92.5vh - 1rem - 133.4px);
}
</style>
<!-- 마우스 오버 드롭다운 메뉴 css 끝 -->


<style>
h4 {
	text-align: left;
}

/* 조건 선택 버튼  */
.btn-light:focus {
	color: #000;
	background-color: #f8f9fa;
	border-color: #f8f9fa;
	box-shadow: none;
}

/*  */
.spinner-border {
	color: rgba(113,201,206,1);
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
	background: #71c9ce;
	border: none;
	box-shadow: none;

}
/* 최대 핸들 색상 */
.noUi-handle-upper {
	background: #71c9ce;
	border: none;
	box-shadow: none;

}
/* 사이 색상 */
.noUi-connect {
    background: rgba(0,0,0,0.05);
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
				<h5 class="modal-title" id="exampleModalLabel"></h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body"></div>
		</div>
	</div>
</div>


<div class="container-fluid">
<form id="searchConditionForm" name="searchConditionForm">
	<div class="row">
		<div class="col-3 p-0 border-set border-end-0" style="height: 60px;">
			<!-- 지역 선택 시작 -->
			<div class="d1">
				<div class="d1btn">
					<div class="align-self-center fw-bold">지역 설정</div>
				</div>
				<div class="d1-content">
					<div class="d1-link d2">
						<div class="d2btn">
							<div class="align-self-center fw-bold">동구</div>
						</div>
						<div class="d2-content overflow-scroll cursor-pointer" style="height: 30vh">
							<div class="d2-link" data-dong="가양동">가양동</div>
							<div class="d2-link" data-dong="대동">대동</div>
							<div class="d2-link" data-dong="대청동">대청동</div>
							<div class="d2-link" data-dong="산내동">산내동</div>
							<div class="d2-link" data-dong="삼성동">삼성동</div>
							<div class="d2-link" data-dong="성남동">성남동</div>
							<div class="d2-link" data-dong="신인동">신인동</div>
							<div class="d2-link" data-dong="용운동">용운동</div>
							<div class="d2-link" data-dong="용전동">용전동</div>
							<div class="d2-link" data-dong="자양동">자양동</div>
							<div class="d2-link" data-dong="중앙동">중앙동</div>
							<div class="d2-link" data-dong="판암동">판암동</div>
							<div class="d2-link" data-dong="홍도동">홍도동</div>
							<div class="d2-link" data-dong="효동">효동</div>
						</div>
					</div>
					<div class="d1-link d2">
						<div class="d2btn">
							<div class="align-self-center fw-bold">중구</div>
						</div>
						<div class="d2-content overflow-scroll cursor-pointer" style="height: 30vh">
							<div class="d2-link" data-dong="대사동">대사동</div>
							<div class="d2-link" data-dong="대흥동">대흥동</div>
							<div class="d2-link" data-dong="목동">목동</div>
							<div class="d2-link" data-dong="문창동">문창동</div>
							<div class="d2-link" data-dong="문화동">문화동</div>
							<div class="d2-link" data-dong="부사동">부사동</div>
							<div class="d2-link" data-dong="산성동">산성동</div>
							<div class="d2-link" data-dong="석교동">석교동</div>
							<div class="d2-link" data-dong="오류동">오류동</div>
							<div class="d2-link" data-dong="용두동">용두동</div>
							<div class="d2-link" data-dong="유천동">유천동</div>
							<div class="d2-link" data-dong="은행동">은행동</div>
							<div class="d2-link" data-dong="중천동">중천동</div>
							<div class="d2-link" data-dong="태평동">태평동</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 지역 선택 끝 -->
		</div>
		<div class="col-9 border-set">
			<div class="row align-items-center h-100">
				<div class="col">
					<!-- 필터 메뉴 시작 -->
					<!-- 방종류 시작 -->
					<div class="dropdown" style="float: left; width: 15%;">
						<button class="btn fw-bold border-btn" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							data-bs-auto-close="outside"
							aria-expanded="false" style="width: 80%;" >방 종류</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px;">
									<h4>방종류</h4>
									<h6>중복선택이 가능합니다.</h6>

									<input class="form-check-input select-all" type="checkbox" value="999"
										id="typeall" name="type" data-name="type" checked> <label
										class="form-check-label" for="typeall"> 전체 </label><br>
									
									<input class="form-check-input" type="checkbox" value="0"
										id="type0" name="type"> <label
										class="form-check-label" for="type0"> 원룸 </label> <br>
								
								
									<input class="form-check-input" type="checkbox" value="1"
										id="type1" name="type"> <label
										class="form-check-label" for="type1"> 오피스텔
									</label>
									
								</div>
							</li>
						</ul>
					</div>
					<!-- 방종류 끝 -->

					<!-- 가격 시작 -->
					<div class="dropdown" style="float: left; width: 15%;">
						<button class="btn fw-bold border-btn" type="button"
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
						<button class="btn border-btn" type="button"
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
						<button class="btn border-btn" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							data-bs-auto-close="outside"
							aria-expanded="false" style="width: 80%;">방 크기</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px;">

									<h4>방크기</h4>
									<div class="slider" data-min="5" data-max="50" data-name="area" data-step="5"></div>
									<div class="row mt-2 mb-3">
										<div class="col-md-6">
											<input type="number" class="w-100" name="area" min="5" max="50" value="5" step="5" data-idx="0" pattern="\d*">
										</div>
										<div class="col-md-6">
											<input type="number" class="w-100" name="area" min="5" max="50" value="50" step="5" data-idx="1" pattern="\d*">
										</div>
									</div>
									

									<button type="button" class="btn btn-light"
										style="float: right;">조건 삭제</button>

								</div>
							</li>
						</ul>
					</div>
					<!-- 방크기 끝 -->

					<!-- 추가 필터 시작 -->
					<div class="dropdown" style="float: left; width: 15%;">
						<button class="btn border-btn" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							data-bs-auto-close="outside"
							aria-expanded="false" style="width: 80%;">추가필터</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li>
								<div style="padding: 20px;">

									<div class="row" style="width: 650px;">
										<div class="col-4" style="padding: 10px;">
											<h4>층수</h4>
											<%-- 999가 넘어오면 전체로 생각 --%>
											<input name="floor" class="form-check-input select-all" type="checkbox" value="999" id="flexCheckChecked" data-name="floor" checked>
											<label class="form-check-label" for="flexCheckChecked" style="width: 35%">전체</label>
											<input name="floor" class="form-check-input" type="checkbox" value="1" id="flexCheckChecked">
											<label class="form-check-label" for="flexCheckChecked" style="width: 35%">1층</label>
											<br>
											<input name="floor" class="form-check-input" type="checkbox" value="2" id="flexCheckChecked">
											<label class="form-check-label" for="flexCheckChecked" style="width: 35%">2층</label>
											<input name="floor" class="form-check-input" type="checkbox" value="3" id="flexCheckChecked">
											<label class="form-check-label" for="flexCheckChecked" style="width: 35%">3층</label>
											<br>
											<input name="floor" class="form-check-input" type="checkbox" value="4" id="flexCheckChecked">
											<label class="form-check-label" for="flexCheckChecked" style="width: 35%">4층</label>
											<input name="floor" class="form-check-input" type="checkbox" value="5" id="flexCheckChecked">
											<label class="form-check-label" for="flexCheckChecked" style="width: 35%">5층</label>
											<br>
											<input name="floor" class="form-check-input" type="checkbox" value="6" id="flexCheckChecked">
											<label class="form-check-label" for="flexCheckChecked" style="width: 35%">6층</label>
											<input name="floor" class="form-check-input" type="checkbox" value="7" id="flexCheckChecked">
											<label class="form-check-label" for="flexCheckChecked" style="width: 35%">7층 이상</label>
											<br>
											<input name="floor" class="form-check-input" type="checkbox" value="-1" id="flexCheckChecked">
											<label class="form-check-label" for="flexCheckChecked" style="width: 35%">반지층</label>
											<input name="floor" class="form-check-input" type="checkbox" value="0" id="flexCheckChecked">
											<label class="form-check-label" for="flexCheckChecked" style="width: 35%">옥탑방</label>
											<br>
										</div>

										<div class="col-8">
											<div class="container-fluid">
												<div class="row">
													<div class="col-6" style="padding: 10px;">
														<h4>방수</h4>
														<%-- 999가 넘어오면 전체로 생각 --%>
														<input name="room" class="form-check-input select-all" type="checkbox" value="999" id="flexCheckChecked" data-name="room" checked>
														<label class="form-check-label" for="flexCheckChecked" style="width: 35%">전체</label>
														<input name="room" class="form-check-input" type="checkbox" value="1" id="flexCheckChecked">
														<label class="form-check-label" for="flexCheckChecked" style="width: 35%">1개</label>
														<br>
														<input name="room" class="form-check-input" type="checkbox" value="2" id="flexCheckChecked">
														<label class="form-check-label" for="flexCheckChecked" style="width: 35%">2개</label>
														<input name="room" class="form-check-input" type="checkbox" value="3" id="flexCheckChecked">
														<label class="form-check-label" for="flexCheckChecked">3개 이상</label>
													</div>

													<div class="col-6" style="padding: 10px;">
														<h4>욕실수</h4>
														<input name="shower" class="form-check-input select-all" type="checkbox" value="999" id="flexCheckChecked" data-name="shower" checked>
														<label class="form-check-label" for="flexCheckChecked" style="width: 35%">전체</label>
														<input name="shower" class="form-check-input" type="checkbox" value="1" id="flexCheckChecked">
														<label class="form-check-label" for="flexCheckChecked" style="width: 35%">1개</label>
														<br>
														<input name="shower" class="form-check-input" type="checkbox" value="2" id="flexCheckChecked">
														<label class="form-check-label" for="flexCheckChecked" style="width: 35%">2개</label>
														<input name="shower" class="form-check-input" type="checkbox" value="3" id="flexCheckChecked">
														<label class="form-check-label" for="flexCheckChecked">3개 이상</label>
													</div>
												</div>
												<div class="row">
													<div class="col" style="padding: 20px;">
														<h4>풀옵션 여부</h4>
																												
														<input name="fulloption" class="form-check-input select-all" type="checkbox" value="999" data-name="fulloption"  checked>
														<label class="form-check-label" for="flexCheckChecked" style="width: 25%">전체</label>
														<input name="fulloption" class="form-check-input" type="checkbox" value="0" id="flexCheckChecked">
														<label class="form-check-label" for="flexCheckChecked" style="width: 25%">선택</label>
														<input name="fulloption" class="form-check-input" type="checkbox" value="1" id="flexCheckChecked">
														<label class="form-check-label" for="flexCheckChecked" style="width: 25%">미선택</label>
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

					<div class="dropdown" style="float: right; width: 25%;">
						<button class="btn border-btn fw-bold" type="button"
							id="dropdownMenuButton1" onclick="formReset();"
							>조건 초기화</button>
						
					</div>
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
					<button class="nav-link tab-title active" id="nav-home-tab"
						data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
						role="tab" aria-controls="nav-home" aria-selected="true">전체
						방</button>
					<button class="nav-link tab-title" id="nav-profile-tab" data-bs-toggle="tab"
						data-bs-target="#nav-profile" type="button" role="tab"
						aria-controls="nav-profile" aria-selected="false">중개사무소</button>
				</div>
			</nav>
			<div class="tab-content overflow-auto" id="nav-tabContent">
				<div class="tab-pane fade show active h-100" id="nav-home"
					role="tabpanel" aria-labelledby="nav-home-tab">
					<!-- 지도에 표시되는 방 목록 시작-->
					
					<!-- 없을때 시작 -->
					<div class="container-fluid h-100">
						<div class="row h-100">
							<div class="col align-self-center">
								<!--
										조건에 맞는 방이 없습니다.
										위치 및 맞춤필터를 조정해보세요. 
									 -->
								<div class="d-flex justify-content-center">
									<div class="spinner-border " role="status">
										<span class="visually-hidden">Loading...</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 없을때 끝 -->
					
					
<%-- 
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
--%>
					<!-- 지도에 표시되는 방 목록 끝 -->
				</div>
				
				
				<!-- 지도에 표시되는 중개사무소 목록 시작 -->
				<div class="tab-pane fade h-100" id="nav-profile" role="tabpanel"
					aria-labelledby="nav-profile-tab">
					
				</div>
				<!-- 지도에 표시되는 중개사무소 목록 끝 -->
			</div>
		</div>
		<div id="map" class="col-9"></div>
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

// 로딩 화면
	const loadingStr = `
		<div class="container-fluid h-100">
			<div class="row h-100">
				<div class="col align-self-center">
					<div class="d-flex justify-content-center">
						<div class="spinner-border" role="status">
							<span class="visually-hidden">Loading...</span>
						</div>
					</div>
				</div>
			</div>
		</div>`;


// 각 탭별 선택 시 내용을 채워넣어야할 div의 id 정보
	const navContent = ["#nav-home", "#nav-profile"];

// 검색된 정보가 없을 때 보여줄 것
	const noList = [`
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
						조건에 맞는 방이 없습니다.<br> 지역 및 조건필터를 조정해보세요.
					<p>
				</div>
			</div>
		</div>
		<!-- 없을때 끝 -->
		`,`
		<!-- 없을때 시작 -->
		<div class="container-fluid h-100">
			<div class="row h-100">
				<div class="col align-self-center">
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
		`];
</script>



<!-- 지도 검색 조건 script 시작 -->
<script>
//양방향 슬라이더
	$(function (){
		
		$(".test").css("overflow", "hidden");
		
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

			// 슬라이더 와 연동되는 input type number의 값을 사용자가 바꾸는 경우	
			$("input[name='"+slider.dataset.name+"']").on("change", function(){
				var inNumIdx = $("input[name='"+slider.dataset.name+"']").index($(this)); // 0:최소, 1:최대 
				if (inNumIdx) { // 최대값을 변경하는 경우
					leftVal = $("input[name='"+slider.dataset.name+"']")[0].value; // 현재 최소값
					if ($(this).val() - leftVal < slider.dataset.step) { // 바뀐 최대값과 현재 최소값과의 차이가 변하는 수치 보다 작은 경우
						$(this).val(leftVal+slider.dataset.step); // 수치 만큼 차이가 나도록 값을 강제로 변경
					}
					else slider.noUiSlider.set([null, $(this).val()]); // 차이가 적당하다면 슬라이더의 오른쪽 버튼 위치를 변경
				} else { // 최소값을 변경하는 경우
					rightVal = $("input[name='"+slider.dataset.name+"']")[1].value; // 현재 최대값
					if (rightVal - $(this).val() < slider.dataset.step) { // 바뀐 최소값과 현재 최대값과의 차이가 변하는 수치 보다 작은 경우
						$(this).val(rightVal-slider.dataset.step); // 수치 만큼 차이가 나도록 값을 강제로 변경
					}
					else slider.noUiSlider.set([$(this).val(), null]); // 차이가 적당하다면 슬라이더의 왼쪽 버튼 위치를 변경
				}
			});

			// 슬라이더의 버튼 위치가 변경되는 경우(마우스 드래그 후 놓음) 리스트 갱신
			slider.noUiSlider.on("set", function (){
				getList(null);
			});
		});
	});

	// 선택한 정보를 이용하여 목록 받아오기(ajax) - 리스트 갱신
	// 동을 선택한 경우 dong값을 가져옴, dong 값이 없는 경우엔 null
	function getList(dong) {

		
		const header = "${_csrf.headerName}";
	    const token = "${_csrf.token}";

	    var list = [];

		var flag = 1; // [전체 방] 탭이 활성화 되어있는 경우를 0로 , [중개사무소] 탭이 활성화 되어있는 경우를 1
	    var submitData = "";
	    if ($("#nav-home-tab").hasClass("active")) { // 전체 방 탭이 활성화 되어있는 경우
		    submitData = $('#searchConditionForm').serialize();
		    flag = 0;
		}
		submitData += (dong?"&addr2="+dong:"");

		// 로딩 동작 보여주기
		$(navContent[flag]).html(loadingStr);

		// 맨 앞의 & 제거
		if (submitData[0] == '&') submitData = submitData.substring(1);
		

		$.ajax({
			type: 'post',
			url: '/map/getList'+flag+'.do',
			data: submitData,
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
					if (flag == 0) { // [전체 방] 탭 선택
						htmlStr += `<div class="card w-100">
							<div class="card-body">
								<div class="row m-0 gx-3">
									<div class="col-5"
										style="background-clip: content-box; height: calc(200px - 32px);">
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
												<p class="fYtEsj">`+(list[i].floor==-1?"반지층":((list[i].floor==0)?"옥탑":list[i].floor+"층"))+`,
													`+list[i].area.toFixed(2)+`m², 관리비`+list[i].manage+`만</p>
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
						
					} else { // [중개사무소] 탭 상태
						htmlStr += `<div class="card w-100">
							<div class="card-body">
								<div class="row m-0 gx-3">
									<div class="col-5"
										style="background: blue; background-clip: content-box; height: calc(200px - 32px);">
										<!-- 썸네일 이미지 출력 -->
										<img class="product_view"
											src="/upload/`+list[i].profile+`"
											style="width: 100%; height: 100%;" data-idx=`+i+`
											href="/coroperation/cor_view.do?username=`+list[i].username+`"
											onclick="window.open(this.getAttribute('href'), '_blank');"
											onmouseover="jumpMarker(this.dataset.idx);"
											onmouseout="stopMarker(this.dataset.idx);">
									</div>
									<div class="col-7">
										<div class="iamnls">
											<div class="fOVNCS">
												<h1 class="kPmScS">
													`+list[i].corname+`</h1>
												<p class="fGfKPR">
													대표자 : `+list[i].name+`
												</p>
												<p class="fYtEsj">연락처 : `+list[i].tel+`</p>
												<p class="fYtEsj">`+list[i].addr.substring(6)+`</p>
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
							//zIndex: list[i].pno
							title: list[i].username,
						});
	
						marker.addListener("click", () => {
							window.open("/coroperation/cor_view.do?username="+marker.getTitle(),"_blank");
						});

						markList.push(marker);
					}

					
				}
				
				
				$(navContent[flag]).html(htmlStr.length==0?noList[flag]:htmlStr);
				
			},
			error: function(xhr, status, err) {
				console.log(xhr, status, err);
			}
		});
	}

	// 조건 선택이 바뀔 때마다 매물 목록을 가져옴
	$("input[type!=number]").on("change", function (){
		var checked = $(this).is(":checked"); // check 되어있으면 true
		var name = $(this).parent().find(".select-all").data("name"); // data-name 값 가져오기 (jquery ver.)
		
		if ($(this).hasClass("select-all")) { // [전체] 값이 체크되는 경우 다른 체크 모두 지우기
			if (checked) {
				var allIdx = $("input[name='"+name+"']").index($(this));
				$("input:checkbox[name='"+name+"']").each(function (idx, chkbox){
					if (idx != allIdx) {
						chkbox.checked = false;
					}
				});
			} else { // 전체가 선택되어있을때 해제 시 다시 체크 , 리스트 갱신 없음
				$(this).prop("checked", true);
				return ;
			}
		} else { // [전체] 값이 아닌 것을 클릭
			if (checked) { // check될때 전체를 선택해제
				$(this).siblings(".select-all").prop("checked", false);
			} else { // check가 해제 될때 선택된 값이 하나도 없다면 다시 선택되게
				var chk = false; // 한개라도 체크 되어있으면 true
				$("input[name='"+name+"']").each(function (idx, chkbox){
					if (chk) return ;
					if(chkbox.checked) {
						chk = true;
						return ;
					}
				});

				if (!chk){ // 자기자신을 다시 선택해줄 땐 목록 갱신 안되게
					$(this).prop("checked", true);
					return ;
				}
			}
		}
		
		getList(null);
	});
	

	// 지역 설정에서 동 클릭시 매물 목록을 가져옴
	$(".d2-link").on("click", function (){getList($(this).data("dong"));});

	
	// 탭 전환 시
	$(".tab-title").on("click", function (){ getList(null); });

	// 조건 초기화
	function formReset() {
		searchConditionForm.reset();
		$(".slider").each(function(idx, slider) {
			slider.noUiSlider.set([parseInt(slider.dataset.min), parseInt(slider.dataset.max)], false, false);
		});
		getList(null);
	}
	
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