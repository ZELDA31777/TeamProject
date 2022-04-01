<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- ##### cor_view.jsp로 병합 후 삭제 예정 ##### -->

<%@ include file="../include/header.jsp"%>
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

<!-- Custom styles for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="/resources/css/blog.css" rel="stylesheet">

<main class="container">
	<div class="row mb-2">
		<div class="col-md-6 align-self-center">
			<div class="img_wrap" id="height_img">
				<img src="/resources/images/m_011.jpg">
			</div>
		</div>

		<div class="col-md-6 align-self-center" style="position: relative;">
			<div class="gSwvZYY">
				<button type="button" class="btn btn-secondary eBlbuFF">사진
					모두 보기</button>
			</div>
			<div class="row mb-2">
				<div class="col-md-6 py-2 px-2">
					<div class="img_wrap">
						<img src="/resources/images/m_011.jpg" style="width: 100%">
					</div>
				</div>
				<div class="col-md-6 py-2 px-2">
					<div class="img_wrap">
						<img src="/resources/images/m_011.jpg" style="width: 100%">
					</div>
				</div>
				<div class="col-md-6 py-2 px-2">
					<div class="img_wrap">
						<img src="/resources/images/m_011.jpg" style="width: 100%">
					</div>
				</div>
				<div class="col-md-6 py-2 px-2">
					<div class="img_wrap">
						<img src="/resources/images/m_011.jpg" style="width: 100%">
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 스크롤 스파이 navar 시작 -->
	<nav id="navbar-example"
		class="navbar navbar-light bg-light px-3 fixed-top"
		style="top: -80px; transition: all 0.2s">
		<a class="navbar-brand" href="#">TOP</a>
		<ul class="nav nav-pills">
			<li class="nav-item"><a class="nav-link"
				href="#scrollspyHeading1">가격정보</a></li>
			<li class="nav-item"><a class="nav-link"
				href="#scrollspyHeading2">상세정보</a></li>
			<li class="nav-item"><a class="nav-link"
				href="#scrollspyHeading3">옵션</a></li>
			<li class="nav-item"><a class="nav-link"
				href="#scrollspyHeading4">상세설명</a></li>
			<li class="nav-item"><a class="nav-link"
				href="#scrollspyHeading5">이 중개사무소의 다른 방</a></li>
		</ul>
	</nav>
	<!-- 스크롤 스파이 navar 끝 -->
	<p id="scrollspyHeading1"></p>
	<div class="row g-5">
		<div class="col-md-8">
			<div>
				<div name="dealType" class="styled__Box-sc-1tbsltx-3 gxMjHR">
					<h1>거래 정보</h1>
					<table>
						<tbody>
							<tr>
								<th>거래 종류</th>
								<td><div class="styled__BtnWrap-sc-1xx7qac-6 fRTOlw">
										<div class="styled__Wrap-sc-1xx7qac-0 fzNWUu">
											<div class="styled__Price-sc-1xx7qac-5 iNyxMi">
												<p class="styled__Tag-sc-1xx7qac-1 jNHAt">월세</p>
												<input name="deposit" placeholder="보증금"
													class="styled__PriceInput-sc-1xx7qac-2 ceburN" value="">
												<p class="styled__Space-sc-1xx7qac-3 kzCtLl">/</p>
												<input name="price" placeholder="월세"
													class="styled__PriceInput-sc-1xx7qac-2 ceburN" value="">
												<p class="styled__Won-sc-1xx7qac-4 ceMnZE">
													만원<span>(예 월세 1000만원/50만원)</span>
												</p>
											</div>
										</div>
									</div></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div name="roomType" class="styled__Box-sc-1tbsltx-3 gxMjHR">
					<h1>매물 종류</h1>
					<table>
						<tbody>
							<tr>
								<th>종류 선택</th>
								<td class="kYmWlH">
									<ul class="gMKyVw" style="list-style: none;">
										<li><label class="blvQKJ"><input type="radio"
												name="roomType" checked="">
												<p>원룸</p></label></li>
										<li><label class="blvQKJ"><input type="radio"
												name="roomType">
												<p>오피스텔 • 도시형</p></label></li>
									</ul>
								</td>
							</tr>
							<tr>
								<th>건물 유형</th>
								<td class="kYmWlH">
									<ul class="gMKyVw" style="list-style: none;">
										<li><label class="styled__BtnLabel-sc-18ujk9f-2 blvQKJ"><input
												type="radio" name="buildingType">
												<p>단독주택</p></label></li>
										<li><label class="styled__BtnLabel-sc-18ujk9f-2 blvQKJ"><input
												type="radio" name="buildingType">
												<p>다가구주택</p></label></li>
										<li><label class="styled__BtnLabel-sc-18ujk9f-2 blvQKJ"><input
												type="radio" name="buildingType">
												<p>빌라/연립/다세대</p></label></li>
										<li><label class="styled__BtnLabel-sc-18ujk9f-2 blvQKJ"><input
												type="radio" name="buildingType">
												<p>상가주택</p></label></li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div name="baseInfo" class="styled__Box-sc-1tbsltx-3 gxMjHR">
					<h1>기본 정보</h1>
					<table>
						<colgroup>
							<col width="150px">
							<col width="450px">
							<col width="150px">
							<col width="430px">
						</colgroup>
						<tbody>
							<tr>
								<th rowspan="2"><p>건물 크기</p> <span>(1P = 3.3058㎡)</span></th>
								<td><div class="styled__Wrap-wlma5f-0 nIpBu">
										<p class="styled__SubTitle-wlma5f-5 boOTqL">공급 면적</p>
										<div class="styled__SizeInputWrap-wlma5f-7 bSHhTa">
											<input name="provisionSizePyeong"
												class="styled__Input-wlma5f-2 jkqspU" value="">
											<p class="styled__Space-wlma5f-3 kBhohh">평</p>
											<input name="provisionSize"
												class="styled__Input-wlma5f-2 jkqspU" value="">
											<p class="styled__Space-wlma5f-3 kBhohh">㎡</p>
										</div>
									</div></td>
								<th rowspan="2">건물 층수</th>
								<td><div class="styled__Wrap-wlma5f-0 nIpBu">
										<p class="styled__SubTitle-wlma5f-5 boOTqL">건물 층수</p>
										<select name="buildingFloor" width="170"
											class="styled__Select-wlma5f-1 gwaqis"><option
												value="">건물 층수 선택</option>
											<option value="1">1층</option>
											<option value="2">2층</option>
											<option value="3">3층</option>
											<option value="4">4층</option>
											<option value="5">5층</option>
											<option value="6">6층</option>
											<option value="7">7층</option>
											<option value="8">8층</option>
											<option value="9">9층</option>
											<option value="10">10층</option>
											<option value="11">11층</option>
											<option value="12">12층</option>
											<option value="13">13층</option>
											<option value="14">14층</option>
											<option value="15">15층</option>
											<option value="16">16층</option>
											<option value="17">17층</option>
											<option value="18">18층</option>
											<option value="19">19층</option>
											<option value="20">20층</option>
											<option value="21">21층</option>
											<option value="22">22층</option>
											<option value="23">23층</option>
											<option value="24">24층</option>
											<option value="25">25층</option>
											<option value="26">26층</option>
											<option value="27">27층</option>
											<option value="28">28층</option>
											<option value="29">29층</option>
											<option value="30">30층</option>
											<option value="31">31층</option>
											<option value="32">32층</option>
											<option value="33">33층</option>
											<option value="34">34층</option>
											<option value="35">35층</option>
											<option value="36">36층</option>
											<option value="37">37층</option>
											<option value="38">38층</option>
											<option value="39">39층</option>
											<option value="40">40층</option>
											<option value="41">41층</option>
											<option value="42">42층</option>
											<option value="43">43층</option>
											<option value="44">44층</option>
											<option value="45">45층</option>
											<option value="46">46층</option>
											<option value="47">47층</option>
											<option value="48">48층</option>
											<option value="49">49층</option>
											<option value="50">50층</option></select>
									</div></td>
							</tr>
							<tr>
								<td><div class="styled__Wrap-wlma5f-0 nIpBu">
										<p class="styled__SubTitle-wlma5f-5 boOTqL">전용 면적</p>
										<input name="roomSizePyeong"
											class="styled__Input-wlma5f-2 jkqspU" value="">
										<p class="styled__Space-wlma5f-3 kBhohh">평</p>
										<input name="roomSize" class="styled__Input-wlma5f-2 jkqspU"
											value="">
										<p class="styled__Space-wlma5f-3 kBhohh">㎡</p>
									</div></td>
								<td><div class="styled__Wrap-wlma5f-0 nIpBu">
										<p class="styled__SubTitle-wlma5f-5 boOTqL">해당 층수</p>
										<select name="roomFloor" width="170"
											class="styled__Select-wlma5f-1 gwaqis"><option
												value="">해당 층수 선택</option>
											<option value="-1">반지층</option>
											<option value="0">옥탑</option>
											<option value="1">1층</option>
											<option value="2">2층</option>
											<option value="3">3층</option>
											<option value="4">4층</option>
											<option value="5">5층</option>
											<option value="6">6층</option>
											<option value="7">7층</option>
											<option value="8">8층</option>
											<option value="9">9층</option>
											<option value="10">10층</option>
											<option value="11">11층</option>
											<option value="12">12층</option>
											<option value="13">13층</option>
											<option value="14">14층</option>
											<option value="15">15층</option>
											<option value="16">16층</option>
											<option value="17">17층</option>
											<option value="18">18층</option>
											<option value="19">19층</option>
											<option value="20">20층</option>
											<option value="21">21층</option>
											<option value="22">22층</option>
											<option value="23">23층</option>
											<option value="24">24층</option>
											<option value="25">25층</option>
											<option value="26">26층</option>
											<option value="27">27층</option>
											<option value="28">28층</option>
											<option value="29">29층</option>
											<option value="30">30층</option>
											<option value="31">31층</option>
											<option value="32">32층</option>
											<option value="33">33층</option>
											<option value="34">34층</option>
											<option value="35">35층</option>
											<option value="36">36층</option>
											<option value="37">37층</option>
											<option value="38">38층</option>
											<option value="39">39층</option>
											<option value="40">40층</option>
											<option value="41">41층</option>
											<option value="42">42층</option>
											<option value="43">43층</option>
											<option value="44">44층</option>
											<option value="45">45층</option>
											<option value="46">46층</option>
											<option value="47">47층</option>
											<option value="48">48층</option>
											<option value="49">49층</option>
											<option value="50">50층</option></select>
									</div></td>
							</tr>
							<tr>
								<th>난방 종류</th>
								<td colspan="3"><div class="styled__Wrap-wlma5f-0 nIpBu">
										<select name="heatingType" width="180"
											class="styled__Select-wlma5f-1 gwaqmT"><option
												value="">난방 종류 선택</option>
											<option value="0">중앙 난방</option>
											<option value="1">개별 난방</option>
											<option value="2">지역 난방</option></select>
									</div></td>
							</tr>
							<tr>
								<th>입주 가능일</th>
								<td colspan="3"><div class="styled__Wrap-wlma5f-0 nIpBu">
										<button class="styled__MoveDate-wlma5f-9 czmmBl">즉시
											입주</button>
										<button class="styled__MoveDate-wlma5f-9 czmmBl">날짜
											협의</button>
										<button class="styled__MoveDate-wlma5f-9 czmmBl">날짜
											선택</button>
									</div></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div name="additional" class="styled__Box-sc-1tbsltx-3 gxMjHR">
					<h1>추가 정보</h1>
					<table>
						<colgroup>
							<col width="150px">
							<col width="450px">
							<col width="150px">
							<col width="430px">
						</colgroup>
						<tbody>
							<tr>
								<th rowspan="2">관리비</th>
								<td colspan="3"><div
										class="styled__Wrap-sc-1nti3md-0 bTJwPT">
										<input name="maintenanceCost"
											class="styled__Cost-sc-1nti3md-2 dZzEqg" value="">
										<p class="styled__Space-sc-1nti3md-3 ipuDqc">만원</p>
										<div class="styled__CheckWrap-sc-1nti3md-5 fa-DpEA">
											<label class="styled__CheckLabel-sc-1nti3md-6 dDOghw"><input
												type="checkbox" name="maintenanceOption">
												<p>협의가능</p></label><label
												class="styled__CheckLabel-sc-1nti3md-6 dDOghw"><input
												type="checkbox" name="maintenance">
												<p>관리비 없음</p></label>
										</div>
										<div class="styled__Notice-sc-1nti3md-4 cJTEJp">
											<svg width="18" height="18" viewBox="0 0 25 25">
												<g fill="none" fill-rule="evenodd">
												<circle cx="12.6" cy="12.6" r="12.6" fill="#E6E7EA"></circle>
												<path fill="#9C9EA3"
													d="M12.596 18.9a1.05 1.05 0 1 1 0-2.1 1.05 1.05 0 0 1 0 2.1zm.014-3.498c-.888 0-1.05-7.629-1.05-8.402 0-.773.47-1.4 1.05-1.4.58 0 1.05.627 1.05 1.4 0 .773-.162 8.402-1.05 8.402z"></path></g></svg>
											<p>협의가능 선택 시, 숫자 뒤에 (협의가능) 문구가 표시됩니다.</p>
											<p>협의가능 옵션은 금액을 입력해야만 선택 가능합니다.</p>
										</div>
									</div></td>
							</tr>
							<tr>
								<th>구조</th>
								<td><div class="styled__Wrap-sc-1nti3md-0 bTJwPT">
										<label
											class="styled__OptionCheckbox-sc-1nti3md-7 styled__OptionLargeCheckbox-sc-1nti3md-8 eXAGyI kkuWgy"><input
											type="checkbox" name="duplex">
											<p>복층</p></label><label
											class="styled__OptionCheckbox-sc-1nti3md-7 styled__OptionLargeCheckbox-sc-1nti3md-8 eXAGyI kkuWgy"><input
											type="checkbox" name="division">
											<p>1.5룸/주방분리형</p></label>
									</div></td>
							</tr>
							<tr>
								<th>옵션항목</th>
								<td colspan="3"><div
										class="styled__Wrap-sc-1nti3md-0 bTJwPT"
										style="flex-wrap: wrap;">
										<label class="styled__OptionCheckbox-sc-1nti3md-7 eXAGyI"
											style="margin: 5px 10px 5px 0px;"><input
											type="checkbox" name="room_options">
											<p>인덕션</p></label><label
											class="styled__OptionCheckbox-sc-1nti3md-7 eXAGyI"
											style="margin: 5px 10px 5px 0px;"><input
											type="checkbox" name="room_options">
											<p>전자레인지</p></label><label
											class="styled__OptionCheckbox-sc-1nti3md-7 eXAGyI"
											style="margin: 5px 10px 5px 0px;"><input
											type="checkbox" name="room_options">
											<p>에어컨</p></label><label
											class="styled__OptionCheckbox-sc-1nti3md-7 eXAGyI"
											style="margin: 5px 10px 5px 0px;"><input
											type="checkbox" name="room_options">
											<p>세탁기</p></label><label
											class="styled__OptionCheckbox-sc-1nti3md-7 eXAGyI"
											style="margin: 5px 10px 5px 0px;"><input
											type="checkbox" name="room_options">
											<p>TV</p></label><label
											class="styled__OptionCheckbox-sc-1nti3md-7 eXAGyI"
											style="margin: 5px 10px 5px 0px;"><input
											type="checkbox" name="room_options">
											<p>옷장</p></label><label
											class="styled__OptionCheckbox-sc-1nti3md-7 eXAGyI"
											style="margin: 5px 10px 5px 0px;"><input
											type="checkbox" name="room_options">
											<p>침대</p></label><label
											class="styled__OptionCheckbox-sc-1nti3md-7 eXAGyI"
											style="margin: 5px 10px 5px 0px;"><input
											type="checkbox" name="room_options">
											<p>책상</p></label><label
											class="styled__OptionCheckbox-sc-1nti3md-7 eXAGyI"
											style="margin: 5px 10px 5px 0px;"><input
											type="checkbox" name="room_options">
											<p>신발장</p></label><label
											class="styled__OptionCheckbox-sc-1nti3md-7 eXAGyI"
											style="margin: 5px 10px 5px 0px;"><input
											type="checkbox" name="room_options">
											<p>비데</p></label><label
											class="styled__OptionCheckbox-sc-1nti3md-7 eXAGyI"
											style="margin: 5px 10px 5px 0px;"><input
											type="checkbox" name="room_options">
											<p>가스레인지</p></label><label
											class="styled__OptionCheckbox-sc-1nti3md-7 eXAGyI"
											style="margin: 5px 10px 5px 0px;"><input
											type="checkbox" name="room_options">
											<p>냉장고</p></label><label
											class="styled__OptionCheckbox-sc-1nti3md-7 eXAGyI"
											style="margin: 5px 10px 5px 0px;"><input
											type="checkbox" name="room_options">
											<p>전자도어락</p></label>
									</div></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div name="detailInfo" class="styled__Box-sc-1tbsltx-3 gxMjHR">
					<h1>상세 설명</h1>
					<table>
						<colgroup>
							<col width="150px">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th>제목</th>
								<td><div class="styled__Wrap-sc-17hggnx-0 gUYVyr">
										<input name="title" type="text"
											placeholder="예)신논현역 도보 5분거리, 혼자 살기 좋은 방 입니다."
											class="styled__Title-sc-17hggnx-1 dFOPJc" value="">
									</div></td>
							</tr>
							<tr>
								<th>상세 설명</th>
								<td><div class="styled__Wrap-sc-17hggnx-0 gUYVyr">
										<textarea name="memo"
											placeholder="[상세설명 작성 주의사항]

  - 매물 정보와 관련없는 홍보성 정보는 입력할 수 없습니다.
  - 매물등록규정에 위반되는 금칙어는 입력할 수 없습니다.
  
  위 주의사항 위반시 임의로 매물 삭제 혹은 서비스 이용이 제한될 수 있습니다."
											class="styled__Memo-sc-17hggnx-2 knSOrZ"></textarea>
									</div></td>
							</tr>
							<tr>
								<th>비공개 메모</th>
								<td><div class="styled__Wrap-sc-17hggnx-0 gUYVyr">
										<textarea name="privateMemo"
											placeholder="외부에 공개되지 않으며, 등록자에게만 보이는 메모입니다."
											class="styled__Private-sc-17hggnx-3 fbJuVv"></textarea>
									</div></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div name="photo" class="styled__Box-sc-1tbsltx-3 gxMjHR">
					<h1>사진 등록</h1>
					<div class="styled__Wrap-wjzlfv-0 iEQbFd">
						<div class="styled__TabWrap-wjzlfv-1 cVGnCj">
							<button class="styled__Tab-wjzlfv-2 iDIMSt">일반사진</button>
							<button class="styled__Tab-wjzlfv-2 iokHEK">360˚사진</button>
						</div>
						<div class="styled__DescWrap-l8ol3j-0 ldqoTx">
							<p>- 사진은 가로로 찍은 사진을 권장합니다. (가로 사이즈 최소 800px)</p>
							<p>- 사진 용량은 사진 한 장당 10MB 까지 등록이 가능합니다.</p>
							<p>- 사진은 최소 3장 이상 등록해야하며, 최대 15장 까지 권장합니다. 그 이상 등록할 경우 업로드
								시간이 다소 지연될 수 있습니다.</p>
						</div>
						<div class="styled__Screen-l8ol3j-1 jiOwMe">
							<svg width="70" height="70" viewBox="0 0 70 70">
								<g fill="none" fill-rule="evenodd">
								<circle cx="35" cy="35" r="35" fill="#D8D8D8"></circle>
								<g transform="translate(19 23)">
								<rect width="30" height="22" x="1" y="1" stroke="#777"
									stroke-width="2" rx="3"></rect>
								<circle cx="25" cy="7" r="2" fill="#777"></circle>
								<path fill="#777"
									d="M3.996 13.038l6.042-6.042 4 4 2.981-2.98 10.988 10.988v1.015H3.984z"></path></g></g></svg>
							<p class="styled__Text-l8ol3j-2 eerxgz">실 사진 최소 3장 이상 등록 하셔야
								하며, 가로 사진을 권장합니다.</p>
							<p class="styled__WarningText-l8ol3j-3 ntKoY">다방 로고를 제외한 불필요한
								정보(워터마크, 상호, 전화번호 등)가 있는 매물은 비공개 처리 됩니다.</p>
							<div>
								<button id="uploader" class="dz-clickable">사진 추가하기</button>
							</div>
						</div>
						<p class="styled__Text-wjzlfv-3 cyVvon">
							<svg width="18" height="18" viewBox="0 0 18 18">
								<g fill="none" fill-rule="evenodd">
								<circle cx="9" cy="9" r="9" fill="#E6E7EA"></circle>
								<path fill="#9C9EA3"
									d="M8.997 13.5a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5zm.01-2.499c-.634 0-.75-5.449-.75-6.001 0-.552.336-1 .75-1s.75.448.75 1-.116 6.001-.75 6.001z"></path></g></svg>
							<span>허위 매물을 등록할 경우 다방에서 임의로 계정 및 매물 전체 삭제 처리됩니다.</span><a
								href="https://pro.dabangapp.com/terms/7" target="_blank"
								rel="noopener noreferrer">허위매물 제재 정책 확인하기</a>
						</p>
					</div>
				</div>
				<div class="styled__AgreeWrap-sc-1tbsltx-4 egZnIW">
					<label class="styled__CheckLabel-sc-1tbsltx-5 lhiCpH"><input
						type="checkbox">
						<p>매물관리규정을 확인하였으며, 입력한 정보는 실제 매물과 다름이 없습니다.</p></label>
					<div class="btn-wrap">
						<button class="cancel">취소</button>
						<button class="add">매물등록</button>
					</div>
				</div>
			</div>



		</div>
		<div class="col-md-4" style="margin-top: 80px">
			<div class="position-sticky" style="top: 7rem;">
				<div class="jtcdhj">
					<div class="biKwOB">
						<div>
							<div class="dtGkBV">매물번호 26598061</div>
						</div>
						<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
							xmlns="http://www.w3.org/2000/svg" style="flex: 0 0 auto;">
							<path
								d="M10.4627 3C11.015 3 11.4627 3.44772 11.4627 4C11.4627 4.51284 11.0767 4.93551 10.5794 4.99327L10.4627 5H5V19H19V13.6069C19 13.094 19.386 12.6714 19.8834 12.6136L20 12.6069C20.5128 12.6069 20.9355 12.9929 20.9933 13.4903L21 13.6069V19.5C21 20.2797 20.4051 20.9204 19.6445 20.9931L19.5 21H4.5C3.7203 21 3.07955 20.4051 3.00687 19.6445L3 19.5V4.5C3 3.7203 3.59489 3.07955 4.35554 3.00687L4.5 3H10.4627ZM21 3V10C21 10.5523 20.5523 11 20 11C19.4872 11 19.0645 10.614 19.0067 10.1166L19 10V6.414L12.7071 12.7071C12.3166 13.0976 11.6834 13.0976 11.2929 12.7071C10.9324 12.3466 10.9047 11.7794 11.2097 11.3871L11.2929 11.2929L17.584 5H14C13.4872 5 13.0645 4.61396 13.0067 4.11662L13 4C13 3.48716 13.386 3.06449 13.8834 3.00673L14 3H21Z"
								fill="#CCCCCC"></path></svg>
					</div>
					<div class="styled__PriceWrap-cvrpi1-5 fzGgeZ">
						<p class="eswqdM">월세 1000/65</p>
						<p class="iVhrbX">최근 7일 매물 조회 수 31회</p>
					</div>
					<ul class="bIRVVc">
						<li><div class="styled__Item-cvrpi1-9 fYSHvV left">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
									xmlns="http://www.w3.org/2000/svg" class="building"
									style="flex: 0 0 auto;">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M11.4845 1.12518L11.5941 1.19559L20.5941 7.8423C20.8175 8.00727 20.9607 8.25644 20.993 8.52876L21 8.64671L21.0007 13.4264C21.9338 14.484 22.5 15.8731 22.5 17.3944C22.5 20.7081 19.8137 23.3944 16.5 23.3944C14.7234 23.3944 13.1272 22.6223 12.0286 21.3953L2 21.3944C1.48716 21.3944 1.06449 21.0084 1.00673 20.511L1 20.3944V8.64671C1 8.36902 1.11533 8.10576 1.31519 7.91798L1.40592 7.8423L10.4059 1.19559C10.7237 0.960882 11.1459 0.937411 11.4845 1.12518ZM16.5 12.3944C13.7386 12.3944 11.5 14.633 11.5 17.3944C11.5 20.1558 13.7386 22.3944 16.5 22.3944C19.2614 22.3944 21.5 20.1558 21.5 17.3944C21.5 14.633 19.2614 12.3944 16.5 12.3944ZM16.9919 17.3045C16.9496 17.0713 16.7455 16.8944 16.5 16.8944C16.2239 16.8944 16 17.1183 16 17.3944V20.1944L16.0081 20.2843C16.0504 20.5175 16.2545 20.6944 16.5 20.6944C16.7761 20.6944 17 20.4705 17 20.1944V17.3944L16.9919 17.3045ZM11 2L2 8.64671V20.3944L11.303 20.3948C10.7923 19.5122 10.5 18.4874 10.5 17.3944C10.5 14.0807 13.1863 11.3944 16.5 11.3944C17.8066 11.3944 19.0156 11.812 20.0009 12.5211L20 8.64671L11 2ZM17.2 15.0944C17.2 14.7078 16.8866 14.3944 16.5 14.3944C16.1134 14.3944 15.8 14.7078 15.8 15.0944C15.8 15.481 16.1134 15.7944 16.5 15.7944C16.8866 15.7944 17.2 15.481 17.2 15.0944Z"
										fill="#222222"></path></svg>
								<span><c:if test=""/></span>
							</div>
							<div class="styled__Item-cvrpi1-9 fYSHvV">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
									xmlns="http://www.w3.org/2000/svg" style="flex: 0 0 auto;">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M8 2C8.51284 2 8.93551 2.38604 8.99327 2.88338L9 3V14.999L21 15C21.4734 15 21.8699 15.3289 21.9736 15.7707L21.9933 15.8834L22 16V21C22 21.5128 21.614 21.9355 21.1166 21.9933L21 22H3C2.48716 22 2.06449 21.614 2.00673 21.1166L2 21V3C2 2.48716 2.38604 2.06449 2.88338 2.00673L3 2H8ZM8.708 15.998L3.706 21H9V18.875C9 18.5989 9.22386 18.375 9.5 18.375C9.74546 18.375 9.94961 18.5519 9.99194 18.7851L10 18.875V21H12V18.875C12 18.5989 12.2239 18.375 12.5 18.375C12.7455 18.375 12.9496 18.5519 12.9919 18.7851L13 18.875V21H15V18.875C15 18.5989 15.2239 18.375 15.5 18.375C15.7455 18.375 15.9496 18.5519 15.9919 18.7851L16 18.875V21H18V18.875C18 18.5989 18.2239 18.375 18.5 18.375C18.7455 18.375 18.9496 18.5519 18.9919 18.7851L19 18.875V21H21V16L8.708 15.998ZM3 3H8V15.292L3 20.292V15H5.125L5.21488 14.9919C5.44812 14.9496 5.625 14.7455 5.625 14.5C5.625 14.2239 5.40114 14 5.125 14H3V12H5.125L5.21488 11.9919C5.44812 11.9496 5.625 11.7455 5.625 11.5C5.625 11.2239 5.40114 11 5.125 11H3V9H5.125L5.21488 8.99194C5.44812 8.94961 5.625 8.74546 5.625 8.5C5.625 8.22386 5.40114 8 5.125 8H3V6H5.125L5.21488 5.99194C5.44812 5.94961 5.625 5.74546 5.625 5.5C5.625 5.22386 5.40114 5 5.125 5H3V3Z"
										fill="#222222"></path></svg>
								<span>62.81㎡</span>
							</div></li>
						<li><div class="styled__Item-cvrpi1-9 fYSHvV left">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
									xmlns="http://www.w3.org/2000/svg" style="flex: 0 0 auto;">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M16 1C16.5128 1 16.9355 1.38604 16.9933 1.88338L17 2V22C17 22.5128 16.614 22.9355 16.1166 22.9933L16 23H1C0.487164 23 0.0644928 22.614 0.00672773 22.1166L0 22V2C0 1.48716 0.38604 1.06449 0.883379 1.00673L1 1H16ZM8 2H1V22H8V2ZM9 2H16V22H9V2ZM19.7843 13.5886L19.8536 13.6464L21.25 15.043L22.6464 13.6464C22.82 13.4729 23.0894 13.4536 23.2843 13.5886L23.3536 13.6464C23.5271 13.82 23.5464 14.0894 23.4114 14.2843L23.3536 14.3536L21.25 16.4571L19.1464 14.3536C18.9512 14.1583 18.9512 13.8417 19.1464 13.6464C19.32 13.4729 19.5894 13.4536 19.7843 13.5886ZM23.3585 9.45146L21.25 7.28272L19.1415 9.45146L19.0846 9.52152C18.9524 9.71827 18.9755 9.98739 19.1515 10.1585L19.2215 10.2154C19.4183 10.3476 19.6874 10.3245 19.8585 10.1485L21.25 8.717L22.6415 10.1485L22.7099 10.2074C22.9029 10.3451 23.1725 10.3296 23.3485 10.1585C23.5465 9.966 23.551 9.64945 23.3585 9.45146Z"
										fill="#222222"></path></svg>
								<span>4층</span>
							</div>
							<div class="styled__Item-cvrpi1-9 fYSHvV">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
									xmlns="http://www.w3.org/2000/svg" style="flex: 0 0 auto;">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M17 2C17.5128 2 17.9355 2.38604 17.9933 2.88338L18 3V11.689C20.5878 12.3551 22.5 14.7042 22.5 17.5C22.5 20.8137 19.8137 23.5 16.5 23.5C14.7 23.5 13.0851 22.7073 11.9853 21.4521L11.6247 21.7406C11.2927 22.0062 10.8336 22.0303 10.4785 21.813L10.3753 21.7406L9 20.64L7.62469 21.7406C7.29268 22.0062 6.83361 22.0303 6.47849 21.813L6.37531 21.7406L5 20.64L3.6247 21.7406C3.22661 22.059 2.65978 22.0239 2.30358 21.6775L2.21913 21.5844C2.10565 21.4425 2.0335 21.2732 2.00917 21.0948L2 20.9597V3C2 2.48716 2.38604 2.06449 2.88338 2.00673L3 2H17ZM11.3902 20.6464C10.8257 19.7316 10.5 18.6538 10.5 17.5C10.5 14.1863 13.1863 11.5 16.5 11.5C16.6684 11.5 16.8351 11.5069 17 11.5205V3H3V20.9597L5 19.3597L7 20.9597L9 19.3597L10.999 20.959L11.3902 20.6464ZM13.5 7C13.7761 7 14 7.22386 14 7.5C14 7.77614 13.7761 8 13.5 8H6.5C6.22386 8 6 7.77614 6 7.5C6 7.22386 6.22386 7 6.5 7H13.5ZM12 10.5C12 10.2239 11.7761 10 11.5 10H6.5C6.22386 10 6 10.2239 6 10.5C6 10.7761 6.22386 11 6.5 11H11.5C11.7761 11 12 10.7761 12 10.5ZM9.5 13C9.77614 13 10 13.2239 10 13.5C10 13.7761 9.77614 14 9.5 14H6.5C6.22386 14 6 13.7761 6 13.5C6 13.2239 6.22386 13 6.5 13H9.5ZM11.5 17.5C11.5 14.7386 13.7386 12.5 16.5 12.5C19.2614 12.5 21.5 14.7386 21.5 17.5C21.5 20.2614 19.2614 22.5 16.5 22.5C13.7386 22.5 11.5 20.2614 11.5 17.5ZM19.0318 15.8244C19.1288 15.5659 19.417 15.4349 19.6756 15.5318C19.9054 15.618 20.0344 15.8553 19.9922 16.0886L19.9682 16.1756L19.4715 17.5H20C20.2761 17.5 20.5 17.7239 20.5 18C20.5 18.2455 20.3231 18.4496 20.0899 18.4919L20 18.5H19.0965L18.4682 20.1756C18.3175 20.5772 17.7792 20.6059 17.5732 20.2616L17.5318 20.1756L16.5 17.424L15.4682 20.1756C15.3175 20.5772 14.7792 20.6059 14.5732 20.2616L14.5318 20.1756L13.9035 18.5H13C12.7239 18.5 12.5 18.2761 12.5 18C12.5 17.7545 12.6769 17.5504 12.9101 17.5081L13 17.5H13.5285L13.0318 16.1756C12.9349 15.917 13.0659 15.6288 13.3244 15.5318C13.5543 15.4456 13.8075 15.5396 13.9291 15.7431L13.9682 15.8244L15 18.575L16.0318 15.8244C16.1825 15.4228 16.7208 15.3941 16.9268 15.7384L16.9682 15.8244L18 18.575L19.0318 15.8244Z"
										fill="#222222"></path></svg>
								<span>없음</span>
							</div></li>
						<li class="kRCkkj"><div>
								<p class="title">방/욕실</p>
								<p class="content">2개 / 1개</p>
							</div>
							<div>
								<p class="title">위치</p>
								<p class="content">서울특별시 관악구 신림동</p>
							</div></li>
					</ul>
					<div class="styled__LessorWrap-cvrpi1-13 jVGbJb">
						<div class="styled__Name-cvrpi1-14 jueGPM">
							<p>우리공인중개사사무소</p>
						</div>
					</div>
					<div class="styled__BtnWrap-cvrpi1-15 brpHbd">
						<button color="blue" class="button__Button-sc-153m1au-0 fiEZwu">
							<span><span>연락처보기</span></span>
						</button>
						<div class="styled__FavoriteBtn-cvrpi1-16 ceYkeN">
							<button class="styled__LikeBtn-jmubsw-1 ezZqwh">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24">
									<g fill="none" fill-rule="evenodd">
									<g stroke="#222" stroke-width="1.5">
									<g>
									<g>
									<g>
									<path
										d="M12.945 3.518c2.096-2.028 5.423-2.028 7.518 0l.117.117c1.945 2.01 1.892 5.215-.117 7.16h0l-3.768 3.646-4.699 4.548-3.752-3.631-.016-.015-4.699-4.548c-2.009-1.945-2.061-5.15-.116-7.16l.116-.117h0c2.096-2.028 5.423-2.028 7.518 0l.949.92z"
										transform="translate(-250 -216) translate(250 121) translate(0 92) translate(0 3)"></path></g></g></g></g></g></svg>
								<span class="styled__CntText-jmubsw-2 iXjxft">2</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>

<%@ include file="../include/footer.jsp"%>

<!-- 스크롤 스파이 navar 관련 script 시작 -->
<script>
	$(function() {
		$('body').css('position', 'relative').attr('data-bs-spy', 'scroll')
				.attr('data-bs-target', '#navbar-example').attr(
						'data-bs-offset', '80');

		var scrollSpy = new bootstrap.ScrollSpy(document.body, {
			target : '#navbar-example'
		});

		$(window).scroll(function() {
			var height = $(document).scrollTop();
			console.log($('#height_img').height());
			if (height >= $('#height_img').height()) {
				$('#navbar-example').css('top', '0px');
			} else {
				$('#navbar-example').css('top', '-80px');
			}
		})

	});
</script>
<!-- 스크롤 스파이 navar 관련 script 끝 -->

</body>

</html>