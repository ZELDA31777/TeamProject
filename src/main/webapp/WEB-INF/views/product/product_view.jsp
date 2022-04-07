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
				<img src="/upload/${pvo.thumbnail }">
			</div>
		</div>

		<div class="col-md-6 align-self-center" style="position: relative;">
			<div class="gSwvZYY">
				<button type="button" class="btn btn-secondary eBlbuFF">사진 모두 보기</button>
			</div>
			<div class="row mb-2">
			<!-- 사진 출력 시작 -->
			<c:forEach var="i" begin="0" end="3" >
				<div class="col-md-6 py-2 px-2">
					<div class="img_wrap">
						<img src='
						<c:choose>
							<c:when test="${i < picListLength}">/upload/${picList[i] }</c:when>
							<c:otherwise>/resources/images/logo_002_opacity.png</c:otherwise>
						</c:choose>
						' style="width: 100%">
					</div>
				</div>
			</c:forEach>
			<!-- 사진 출력 끝 -->
			</div>
		</div>
	</div>


	<p id="scrollspyHeading1"></p>
	<div class="row g-5">
		<div class="col-md-8">
			<!-- 스크롤 스파이 navar 시작 -->
			<nav id="navbar-example"
				class="navbar navbar-light bg-light px-3 fixed-top"
				style="top: -80px; transition: all 0.2s; justify-content: center; width: -webkit-fill-available;">
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
			<h4 class="cBaPiP" style="margin-top: 35px;">가격정보</h4>
			<div class="iOHiXt" style="list-style: none;">
				<li>
					<div class="row"
						style="margin-bottom: 16px; padding-bottom: 16px; border-bottom: 1px solid rgb(245, 245, 245);">
						<div class="iehkos col-md-3">월세 / 보증금</div>
						<div class="gEjpOz col-md-9">${pvo.rent }/${pvo.deposit }</div>

					</div>
				</li>
				<li>
					<div class="row"
						style="margin-bottom: 16px; padding-bottom: 16px; border-bottom: 1px solid rgb(245, 245, 245);">
						<div class="iehkos col-md-3">관리비</div>
						<div class="gEjpOz col-md-9">
							<div
								style="margin-bottom: 16px; padding-bottom: 16px; border-bottom: 1px solid rgb(245, 245, 245);">
								<p>매월 ${pvo.manage }만원</p>
								<p class="gray-700">청소비, 승강기유지비, 기타</p>
							</div>
							<div>
								<p>별도 금액으로 부과되는 항목</p>
								<p class="gray-700">전기료, 수도료, 가스사용료</p>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="row"
						style="margin-bottom: 16px; padding-bottom: 16px; border-bottom: 1px solid rgb(245, 245, 245);">
						<div class="iehkos col-md-3">
							<p>한달</p>
							<p>예상 주거비용</p>
						</div>
						<div class="gEjpOz col-md-9">
							<p class="blue-500 bold">${pvo.rent }+${pvo.manage }만원</p>
							<p class="gray-700">월세 + 관리비</p>
							<p class="body-3 gray-700">별도 금액으로 부과되는 항목 제외</p>
						</div>
					</div>
				</li>
			</div>

			<p id="scrollspyHeading2"></p>
			<div class="fCMewi">
				<h4 class="styled__Title-sc-16d1qhz-2 cBaPiP">상세정보</h4>
				<div class="iOHiXt" style="list-style: none;">
					<li>
						<div class="row"
							style="margin-bottom: 16px; padding-bottom: 16px; border-bottom: 1px solid rgb(245, 245, 245);">
							<div class="iehkos col-md-3">방종류</div>
							<div class="gEjpOz col-md-9">
								<c:if test="${pvo.type eq 1}">오피스텔</c:if>
								<c:if test="${pvo.type eq 0}">원룸</c:if>
							</div>
						</div>
					</li>
					<li>
						<div class="row"
							style="margin-bottom: 16px; padding-bottom: 16px; border-bottom: 1px solid rgb(245, 245, 245);">
							<div class="iehkos col-md-3">해당층/건물층</div>
							<div class="gEjpOz col-md-9">
								<p>${pvo.floor }층/${pvo.totalfloor }층</p>
							</div>
						</div>
					</li>
					<li>
						<div class="row"
							style="margin-bottom: 16px; padding-bottom: 16px; border-bottom: 1px solid rgb(245, 245, 245);">


							<div class="iehkos col-md-3">전용/공급면적</div>

							<div class="gEjpOz flex col-md-9">
								<label>${pvo.area }</label>
								<button width="56" height="28" class="klhTP">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg" style="flex: 0 0 auto;">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M15.9516 8.1744C14.9224 7.11154 13.5092 6.5 12 6.5C9.15079 6.5 6.80759 8.66652 6.52795 11.442L5.60355 10.5178L5.53431 10.4599C5.33944 10.3249 5.07001 10.3442 4.89645 10.5178C4.70118 10.713 4.70118 11.0296 4.89645 11.2249L7.01777 13.3462L9.13909 11.2249L9.19694 11.1556C9.33194 10.9608 9.31265 10.6913 9.13909 10.5178L9.06984 10.4599C8.87497 10.3249 8.60555 10.3442 8.43198 10.5178L7.53828 11.4104C7.82708 9.20371 9.71458 7.5 12 7.5C13.2356 7.5 14.3905 7.99976 15.2332 8.87003C15.4538 9.09785 15.6499 9.34827 15.818 9.61696C15.9645 9.85106 16.273 9.92211 16.5071 9.77565C16.7412 9.62919 16.8122 9.32068 16.6658 9.08658C16.4604 8.75834 16.2209 8.45254 15.9516 8.1744ZM14.8787 12.7751L17 10.6538L19.1213 12.7751C19.3166 12.9704 19.3166 13.287 19.1213 13.4822C18.9478 13.6558 18.6783 13.6751 18.4835 13.5401L18.4142 13.4822L17.4898 12.5578C17.2103 15.3334 14.867 17.5 12.0178 17.5C10.5085 17.5 9.09538 16.8885 8.06621 15.8256C7.79688 15.5475 7.55736 15.2417 7.35201 14.9134C7.20555 14.6793 7.27659 14.3708 7.5107 14.2244C7.7448 14.0779 8.05331 14.1489 8.19977 14.383C8.36787 14.6517 8.56401 14.9022 8.78461 15.13C9.62729 16.0002 10.7821 16.5 12.0178 16.5C14.3036 16.5 16.1914 14.7956 16.4797 12.5884L15.5858 13.4822C15.4122 13.6558 15.1428 13.6751 14.9479 13.5401L14.8787 13.4822C14.7051 13.3087 14.6858 13.0392 14.8208 12.8444L14.8787 12.7751Z"
											fill="#222222"></path></svg>
									<span><span>평</span></span>
								</button>
							</div>
						</div>
					</li>
					<li>
						<div class="row"
							style="margin-bottom: 16px; padding-bottom: 16px; border-bottom: 1px solid rgb(245, 245, 245);">
							<div class="iehkos col-md-3">방 수/욕실 수</div>
							<div class="gEjpOz col-md-9">${pvo.room }개/${pvo.shower }개</div>
						</div>
					</li>
				</div>
			</div>

			<div class="fCMewi">
				<p id="scrollspyHeading3"></p>
				<h4 class="styled__Title-sc-16d1qhz-2 cBaPiP">옵션</h4>
				<div class="iOHiXt" style="list-style: none;">
					<c:if test="${pvo.fulloption eq 0 }">
						<p>
							<img src="/resources/images/o_100.png">
						</p>
					</c:if>
					<c:if test="${pvo.fulloption eq 1 }">
						<p>이 방의 옵션은 중개사무소에게 문의 바랍니다.</p>
					</c:if>

				</div>
			</div>
			<div class="fCMewi">
				<p id="scrollspyHeading4"></p>
				<h4 class="cBaPiP">상세설명</h4>
				<div class="iOHiXt" style="list-style: none;">
					<div class="styled__InfoWrap-sc-13shacj-0 jGAWeI">
						<p class="title">대형풀옵션투룸동물가능</p>
						<p class="styled__Memo-sc-13shacj-1 hhaHrn">${pvo.contents }</p>
					</div>
				</div>
			</div>
			<div class="fCMewi">
				<p id="scrollspyHeading5"></p>
				<h4 class="cBaPiP">이 중개사무소의 다른 방</h4>
				<div class="iOHiXt" style="list-style: none;">
					<div class="jcFemG">
						<ul class="kKQMSn">
							<c:forEach var="list" items="${pList }">
								<li class="gAcyGl"><div class="hObDcQ">
										<div class="gSwvZY">
											<button class="eBlbuF">
												<!-- 좋아요 버튼 include 화 -->
												<%@ include file="../include/interest_img.jsp"%>

											</button>
										</div>
										<div class="styled__ImgWrap-sc-14w4no0-0 hkMQhb">
											<div class="styled__Image-ami2sx-0 gMnRzx">

												<!-- 중개사의 다른 매물에 대한 이미지 -->

												<img src="/resources/images/ex_000.png" width="60"
													height="60" alt="" draggable="false" loading="lazy"
													style="width: 100%; height: 100%;">
												<div class="styled__Cover-ami2sx-1 dZAvTS cover"></div>
											</div>
										</div>
										<!-- 중개사의 다른 매물에 대한 정보 -->

										<div class="bSKZAI">
											<p class="hybbHD">
												<c:if test="${list.type eq 0 }">원룸</c:if>
												<c:if test="${list.type eq 1 }">오피스텔</c:if>
											</p>
											<p class="styled__Price-n321y7-2 bYNMgs">보증금/월세
												${list.deposit }/${list.rent }</p>
											<p class="styled__Desc-n321y7-3 eHtuHa">${list.floor },
												${list.area }m², 관리비 ${list.manage }만</p>
											<p class="styled__Desc-n321y7-3 eHtuHa">${list.contents }</p>
											<div class="styled__TagWrap-n321y7-4 guJBBw"></div>
										</div>
									</div></li>
							</c:forEach>


						</ul>
					</div>
				</div>
			</div>



		</div>
		<div class="col-md-4" style="margin-top: 80px">
			<div class="position-sticky" style="top: 7rem;">
				<div class="jtcdhj">
					<div class="biKwOB">
						<div>
							<div class="dtGkBV">매물번호 ${pvo.pno }</div>
						</div>
						<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
							xmlns="http://www.w3.org/2000/svg" style="flex: 0 0 auto;">
							<path
								d="M10.4627 3C11.015 3 11.4627 3.44772 11.4627 4C11.4627 4.51284 11.0767 4.93551 10.5794 4.99327L10.4627 5H5V19H19V13.6069C19 13.094 19.386 12.6714 19.8834 12.6136L20 12.6069C20.5128 12.6069 20.9355 12.9929 20.9933 13.4903L21 13.6069V19.5C21 20.2797 20.4051 20.9204 19.6445 20.9931L19.5 21H4.5C3.7203 21 3.07955 20.4051 3.00687 19.6445L3 19.5V4.5C3 3.7203 3.59489 3.07955 4.35554 3.00687L4.5 3H10.4627ZM21 3V10C21 10.5523 20.5523 11 20 11C19.4872 11 19.0645 10.614 19.0067 10.1166L19 10V6.414L12.7071 12.7071C12.3166 13.0976 11.6834 13.0976 11.2929 12.7071C10.9324 12.3466 10.9047 11.7794 11.2097 11.3871L11.2929 11.2929L17.584 5H14C13.4872 5 13.0645 4.61396 13.0067 4.11662L13 4C13 3.48716 13.386 3.06449 13.8834 3.00673L14 3H21Z"
								fill="#CCCCCC"></path></svg>
					</div>
					<div class="styled__PriceWrap-cvrpi1-5 fzGgeZ">
						<p class="eswqdM">월세 ${pvo.deposit }/${pvo.rent }</p>
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
								<span><c:if test="${pvo.type eq 1}">오피스텔</c:if> <c:if
										test="${pvo.type eq 0}">원룸</c:if></span>
							</div>
							<div class="styled__Item-cvrpi1-9 fYSHvV">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
									xmlns="http://www.w3.org/2000/svg" style="flex: 0 0 auto;">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M8 2C8.51284 2 8.93551 2.38604 8.99327 2.88338L9 3V14.999L21 15C21.4734 15 21.8699 15.3289 21.9736 15.7707L21.9933 15.8834L22 16V21C22 21.5128 21.614 21.9355 21.1166 21.9933L21 22H3C2.48716 22 2.06449 21.614 2.00673 21.1166L2 21V3C2 2.48716 2.38604 2.06449 2.88338 2.00673L3 2H8ZM8.708 15.998L3.706 21H9V18.875C9 18.5989 9.22386 18.375 9.5 18.375C9.74546 18.375 9.94961 18.5519 9.99194 18.7851L10 18.875V21H12V18.875C12 18.5989 12.2239 18.375 12.5 18.375C12.7455 18.375 12.9496 18.5519 12.9919 18.7851L13 18.875V21H15V18.875C15 18.5989 15.2239 18.375 15.5 18.375C15.7455 18.375 15.9496 18.5519 15.9919 18.7851L16 18.875V21H18V18.875C18 18.5989 18.2239 18.375 18.5 18.375C18.7455 18.375 18.9496 18.5519 18.9919 18.7851L19 18.875V21H21V16L8.708 15.998ZM3 3H8V15.292L3 20.292V15H5.125L5.21488 14.9919C5.44812 14.9496 5.625 14.7455 5.625 14.5C5.625 14.2239 5.40114 14 5.125 14H3V12H5.125L5.21488 11.9919C5.44812 11.9496 5.625 11.7455 5.625 11.5C5.625 11.2239 5.40114 11 5.125 11H3V9H5.125L5.21488 8.99194C5.44812 8.94961 5.625 8.74546 5.625 8.5C5.625 8.22386 5.40114 8 5.125 8H3V6H5.125L5.21488 5.99194C5.44812 5.94961 5.625 5.74546 5.625 5.5C5.625 5.22386 5.40114 5 5.125 5H3V3Z"
										fill="#222222"></path></svg>
								<span>${pvo.area }</span>
							</div></li>
						<li><div class="styled__Item-cvrpi1-9 fYSHvV left">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
									xmlns="http://www.w3.org/2000/svg" style="flex: 0 0 auto;">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M16 1C16.5128 1 16.9355 1.38604 16.9933 1.88338L17 2V22C17 22.5128 16.614 22.9355 16.1166 22.9933L16 23H1C0.487164 23 0.0644928 22.614 0.00672773 22.1166L0 22V2C0 1.48716 0.38604 1.06449 0.883379 1.00673L1 1H16ZM8 2H1V22H8V2ZM9 2H16V22H9V2ZM19.7843 13.5886L19.8536 13.6464L21.25 15.043L22.6464 13.6464C22.82 13.4729 23.0894 13.4536 23.2843 13.5886L23.3536 13.6464C23.5271 13.82 23.5464 14.0894 23.4114 14.2843L23.3536 14.3536L21.25 16.4571L19.1464 14.3536C18.9512 14.1583 18.9512 13.8417 19.1464 13.6464C19.32 13.4729 19.5894 13.4536 19.7843 13.5886ZM23.3585 9.45146L21.25 7.28272L19.1415 9.45146L19.0846 9.52152C18.9524 9.71827 18.9755 9.98739 19.1515 10.1585L19.2215 10.2154C19.4183 10.3476 19.6874 10.3245 19.8585 10.1485L21.25 8.717L22.6415 10.1485L22.7099 10.2074C22.9029 10.3451 23.1725 10.3296 23.3485 10.1585C23.5465 9.966 23.551 9.64945 23.3585 9.45146Z"
										fill="#222222"></path></svg>
								<span>${pvo.floor }층</span>
							</div>
							<div class="styled__Item-cvrpi1-9 fYSHvV">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
									xmlns="http://www.w3.org/2000/svg" style="flex: 0 0 auto;">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M17 2C17.5128 2 17.9355 2.38604 17.9933 2.88338L18 3V11.689C20.5878 12.3551 22.5 14.7042 22.5 17.5C22.5 20.8137 19.8137 23.5 16.5 23.5C14.7 23.5 13.0851 22.7073 11.9853 21.4521L11.6247 21.7406C11.2927 22.0062 10.8336 22.0303 10.4785 21.813L10.3753 21.7406L9 20.64L7.62469 21.7406C7.29268 22.0062 6.83361 22.0303 6.47849 21.813L6.37531 21.7406L5 20.64L3.6247 21.7406C3.22661 22.059 2.65978 22.0239 2.30358 21.6775L2.21913 21.5844C2.10565 21.4425 2.0335 21.2732 2.00917 21.0948L2 20.9597V3C2 2.48716 2.38604 2.06449 2.88338 2.00673L3 2H17ZM11.3902 20.6464C10.8257 19.7316 10.5 18.6538 10.5 17.5C10.5 14.1863 13.1863 11.5 16.5 11.5C16.6684 11.5 16.8351 11.5069 17 11.5205V3H3V20.9597L5 19.3597L7 20.9597L9 19.3597L10.999 20.959L11.3902 20.6464ZM13.5 7C13.7761 7 14 7.22386 14 7.5C14 7.77614 13.7761 8 13.5 8H6.5C6.22386 8 6 7.77614 6 7.5C6 7.22386 6.22386 7 6.5 7H13.5ZM12 10.5C12 10.2239 11.7761 10 11.5 10H6.5C6.22386 10 6 10.2239 6 10.5C6 10.7761 6.22386 11 6.5 11H11.5C11.7761 11 12 10.7761 12 10.5ZM9.5 13C9.77614 13 10 13.2239 10 13.5C10 13.7761 9.77614 14 9.5 14H6.5C6.22386 14 6 13.7761 6 13.5C6 13.2239 6.22386 13 6.5 13H9.5ZM11.5 17.5C11.5 14.7386 13.7386 12.5 16.5 12.5C19.2614 12.5 21.5 14.7386 21.5 17.5C21.5 20.2614 19.2614 22.5 16.5 22.5C13.7386 22.5 11.5 20.2614 11.5 17.5ZM19.0318 15.8244C19.1288 15.5659 19.417 15.4349 19.6756 15.5318C19.9054 15.618 20.0344 15.8553 19.9922 16.0886L19.9682 16.1756L19.4715 17.5H20C20.2761 17.5 20.5 17.7239 20.5 18C20.5 18.2455 20.3231 18.4496 20.0899 18.4919L20 18.5H19.0965L18.4682 20.1756C18.3175 20.5772 17.7792 20.6059 17.5732 20.2616L17.5318 20.1756L16.5 17.424L15.4682 20.1756C15.3175 20.5772 14.7792 20.6059 14.5732 20.2616L14.5318 20.1756L13.9035 18.5H13C12.7239 18.5 12.5 18.2761 12.5 18C12.5 17.7545 12.6769 17.5504 12.9101 17.5081L13 17.5H13.5285L13.0318 16.1756C12.9349 15.917 13.0659 15.6288 13.3244 15.5318C13.5543 15.4456 13.8075 15.5396 13.9291 15.7431L13.9682 15.8244L15 18.575L16.0318 15.8244C16.1825 15.4228 16.7208 15.3941 16.9268 15.7384L16.9682 15.8244L18 18.575L19.0318 15.8244Z"
										fill="#222222"></path></svg>
								<span>${pvo.manage }</span>
							</div></li>
						<li class="kRCkkj"><div>
								<p class="title">방/욕실</p>
								<p class="content">${pvo.room }개/${pvo.shower }개</p>
							</div>
							<div>
								<p class="title">위치</p>
								<p class="content">${pvo.addr1 }${pvo.addr2 }${pvo.addr3 }</p>
							</div></li>
					</ul>
					<div class="styled__LessorWrap-cvrpi1-13 jVGbJb">
						<div class="styled__Name-cvrpi1-14 jueGPM">
							<p>우리공인중개사사무소</p>
						</div>
					</div>

					<sec:authorize access="isAnonymous()">
						<c:set var="testvalue" value="없습니다." />
						<label>${testvalue }</label>
					</sec:authorize>


					<sec:authorize access="isAuthenticated()">
						<c:set var="testvalue">
							<sec:authentication property="principal.user.username" />
						</c:set>
						<label>${testvalue } </label>
					</sec:authorize>

					<div class="styled__BtnWrap-cvrpi1-15 brpHbd row">
						<button color="blue" class="fiEZwu3 col-md-10">
							<span><span>연락처보기</span></span>
						</button>

						<div class="col-md-2">
							<div>${username }</div>
							<c:choose>
								<%-- 로그인 상태일때 - 하트 클릭 되게 --%>
								<c:when test="${not empty sessionScope.nick}">
									<c:choose>
										<c:when test="${empty tmp.hno}">
											<%-- 빈 하트일때 --%>
											<span> <a idx="${tmp.no }" href="javascript:"
												class="heart-click heart_icon${tmp.no }"><svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-suit-heart"
														viewBox="0 0 16 16">
                                  <path
															d="M8 6.236l-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" />
                                </svg></a>
											</span>
										</c:when>
										<c:otherwise>
											<%-- 꽉찬 하트일때 --%>
											<span> <a idx="${tmp.no }" href="javascript:"
												class="heart-click heart_icon${tmp.no }"><svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-suit-heart-fill"
														viewBox="0 0 16 16">
                                  <path
															d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z" />
                                </svg></a>
											</span>
										</c:otherwise>
									</c:choose>
								</c:when>
								<%-- 로그인 상태가 아닐때  - 하트클릭 안되게 --%>
								<c:otherwise>
									<span> <a href="javascript:" class="heart-notlogin">
											<svg class="heart3" xmlns="http://www.w3.org/2000/svg"
												width="16" height="16" fill="currentColor"
												class="bi bi-suit-heart" viewBox="0 0 16 16">
                          <path
													d="M8 6.236l-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" />
                        </svg>
									</a>
									</span>
								</c:otherwise>
							</c:choose>
							<span id="heart${tmp.no }">${tmp.heart }</span>
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

<script>
	$(document).ready(function() {
		GetList(1);
		/* 카드가 나타나는 애니메이션
		$(document).ready(function() {
		    $(window).scroll( function(){
		        $('.thumb').each( function(i){

		            var bottom_of_element = $(this).offset().top + $(this).outerHeight();
		            var bottom_of_window = $(window).scrollTop() + $(window).height();

		            if( bottom_of_window > bottom_of_element ){
		                $(this).animate({'opacity':'1','margin-bottom':'0px'},1000);
		            }

		        }); 
		    });
		});
		 */

		// 게시물 이미지를 클릭했을 때 실행된다
		// 해당 게시물을 hit+1하는 함수를 호출한다.
		$(document).on('click', '.card-img', function() {
			// 게시물 번호(no)를 idx로 전달받아 저장합니다.
			let no = $(this).attr('idx');

			console.log(no + "에 hit + 1을 함");

			// hit+1하고 그 값을 불러온다.
			$.ajax({
				url : 'picture_view.do',
				type : 'get',
				data : {
					no : no
				},
				success : function(to) {
					let hit = to.hit;

					$('#m_hit' + no).text(hit);
					$('#hit' + no).text(hit);

				},
				error : function() {
					alert('서버 에러');
				}
			});
		});

	});
</script>
<script>
	//로그인 한 상태에서 하트를 클릭했을 때 (로그인한 상태인 하트의 <a></a> class명: heart-click)
	$(".heart-click")
			.click(
					function() {

						// 게시물 번호(no)를 idx로 전달받아 저장합니다.
						let no = $(this).attr('idx');
						console.log("heart-click");

						// 빈하트를 눌렀을때
						if ($(this).children('svg').attr('class') == "bi bi-suit-heart") {
							console.log("빈하트 클릭" + no);

							$.ajax({
								url : 'saveHeart.do',
								type : 'get',
								data : {
									no : no,
								},
								success : function(pto) {
									//페이지 새로고침
									//document.location.reload(true);

									let heart = pto.heart;

									// 페이지, 모달창에 하트수 갱신
									$('#m_heart' + no).text(heart);
									$('#heart' + no).text(heart);

									console.log("하트추가 성공");
								},
								error : function() {
									alert('서버 에러');
								}
							});
							console.log("꽉찬하트로 바껴라!");

							// 꽉찬하트로 바꾸기
							$(this)
									.html(
											"<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-suit-heart-fill' viewBox='0 0 16 16'><path d='M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z'/></svg>");
							$('.heart_icon' + no)
									.html(
											"<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-suit-heart-fill' viewBox='0 0 16 16'><path d='M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z'/></svg>");

							// 꽉찬 하트를 눌렀을 때
						} else if ($(this).children('svg').attr('class') == "bi bi-suit-heart-fill") {
							console.log("꽉찬하트 클릭" + no);

							$.ajax({
								url : 'removeHeart.do',
								type : 'get',
								data : {
									no : no,
								},
								success : function(pto) {
									//페이지 새로고침
									//document.location.reload(true);

									let heart = pto.heart;
									// 페이지, 모달창에 하트수 갱신
									$('#m_heart' + no).text(heart);
									$('#heart' + no).text(heart);

									console.log("하트삭제 성공");
								},
								error : function() {
									alert('서버 에러');
								}
							});
							console.log("빈하트로 바껴라!");

							// 빈하트로 바꾸기
							$(this)
									.html(
											'<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16"><path d="M8 6.236l-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" /></svg>');

							$('.heart_icon' + no)
									.html(
											'<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16"><path d="M8 6.236l-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" /></svg>');
						}

					});

	// 로그인 안한 상태에서 하트를 클릭하면 로그인해야한다는 알림창이 뜹니다.
	// (로그인한 상태인 하트의 <a></a> class명: heart-notlogin)

	$(".heart-notlogin").unbind('click');
	$(".heart-notlogin ").click(function() {
		alert('로그인 하셔야 하트를 누를수 있습니다!');
		location.href = "/user/user_login.do";
	});
</script>

</body>

</html>