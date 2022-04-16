<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./include/header.jsp"%>
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

.index_subtitle {
	font-size: 1rem;
}

.pcl {
	padding: 2%;
}

.qstyle {
	color: blue;
	font-size: 22px;
	font-weight: bold;
	font-style: italic;
	letter-spacing: 0.25rem;
	padding-right: 10px
}

.naityousize {
	font-size: 15px;
}

.product_list_image {
	width: -webkit-fill-available;
	float: left;
}

.dongSelect{
	width: -webkit-fill-available;
}


.spanAl{
	float: right;
	width: 49%;
}

h1{
	font-size: 75px;
}


</style>
<link href="/resources/css/carousel.css" rel="stylesheet">


<!-- Carousel 시작 -->
<div id="myCarousel" class="carousel slide pointer-event"
	data-bs-ride="carousel">
	<div class="carousel-indicators">
		<button type="button" data-bs-target="#myCarousel"
			data-bs-slide-to="0" class="active" aria-label="Slide 1"
			aria-current="true"></button>
		<button type="button" data-bs-target="#myCarousel"
			data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
		<button type="button" data-bs-target="#myCarousel"
			data-bs-slide-to="2" aria-label="Slide 3" class=""></button>
		<button type="button" data-bs-target="#myCarousel"
			data-bs-slide-to="3" aria-label="Slide 4" class=""></button>
	</div>

	<div class="carousel-inner">
		<div class="carousel-item active">
			<img src="/resources/images/main_carousel/main_001.png">
			<div class="carousel-caption text-end">
				<h1>사람과 집을 연결하고</h1>
				<p>고객에게 투명하고, 편리한, 합리적인 경험을 제공하는 더 나은 삶의 방식을 만듭니다</p>
				<p>
					<a class="btn btn-lg btn-primary" href="#">원픽</a>
				</p>
			</div>
		</div>
		<div class="carousel-item">
			<img src="/resources/images/main_carousel/main_002.png">
			<div class="carousel-caption text-start">
				<h1>우리는</h1>
				<p>세상에 없던 부동산 서비스를 만들어갑니다.</p>
				<p>
					<a class="btn btn-lg btn-primary" href="#">원룸</a>
				</p>
			</div>
		</div>
		<div class="carousel-item">
			<img src="/resources/images/main_carousel/main_003.png">
			<div class="carousel-caption text-end">
				<h1>도전적인 자세로</h1>
				<p>변화를 이끄는 사람들이 원픽을 만들어 갑니다.</p>
				<p>
					<a class="btn btn-lg btn-primary" href="#">오피스텔</a>
				</p>
			</div>
		</div>
		<div class="carousel-item">
			<img src="/resources/images/main_carousel/main_004.png">
			<div class="carousel-caption text-start">
				<h1>글로벌한 문화를</h1>
				<p>만들어가는 원픽이 되어 우리를 찾는 고객에게 만족할 수 있는 서비스를 제공합니다.</p>
				<p>
					<a class="btn btn-lg btn-primary" href="#">내 입맛대로</a>
				</p>
			</div>
		</div>

	</div>
	<button class="carousel-control-prev" type="button"
		data-bs-target="#myCarousel" data-bs-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Previous</span>
	</button>
	<button class="carousel-control-next" type="button"
		data-bs-target="#myCarousel" data-bs-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Next</span>
	</button>
</div>
<!-- Carousel 끝 -->

<!-- 로그인시 정보 가져오기 -->
<sec:authorize access="isAuthenticated()">
	<c:set var="username">
		<sec:authentication property="principal.user.username" />
	</c:set>
</sec:authorize>

<sec:authorize access="hasAnyRole('ROLE_USER','NON')">
	<c:set var="nickname">
		<sec:authentication property="principal.user.nickname"/>
	</c:set>
</sec:authorize>

<!-- 인기매물(조회수 순) 시작 (수정) -->
<div class="container-fluid">
	<div class="container newitem">
		<div class="index_style">
			<h2>
				<strong>원픽</strong>의 인기매물(조회수 순)
			</h2>
		</div>
		<div class="row">
			<c:if test="${!empty top}">
				<c:forEach var="top" items="${top}">
					<div class="col-md-3">
						<li class="gAcyGl" onClick="pSend(this)" data-pno="${top.pno}">
							<!-- onClick의 경우에는 li에 Function을 걸어주어야 인식됩니다. -->
							<div class="hObDcQ">
								<div class="gMnRzx">
									<div class="thumbnail">
										<img class="product_list_image" src="/upload/${top.thumbnail}"
											width="60" height="60" alt="" draggable="false"
											loading="lazy" style="width: 100%; height: 100%;">
									</div>
								</div>
								<div class="bSKZAI">
									<p class="hybbHD">
										<c:if test="${top.type eq 0 }">원룸</c:if>
										<c:if test="${top.type eq 1 }">오피스텔</c:if>
									</p>
									<p class="styled__Price-n321y7-2 bYNMgs">보증금/월세
										${top.deposit }/${top.rent }</p>
									<p class="styled__Desc-n321y7-3 eHtuHa">${top.floor }층,
										${top.area }m², 관리비 ${top.manage }만</p>
									<p class="styled__Desc-n321y7-3 eHtuHa">방 ${top.room}개 / 욕실
										${top.shower}개, 위치 ${top.addr1} ${top.addr2}</p>
									<div class="styled__TagWrap-n321y7-4 guJBBw"></div>
								</div>
							</div>
						</li>
					</div>
				</c:forEach>
			</c:if>
		</div>
	</div>
</div>
<!-- 인기 매물(조회수 순) 끝 -->


<!-- 인기매물(좋아요 순) 시작 (수정) -->
<div class="container-fluid">
	<div class="container newitem">
		<div class="index_style">
			<h2>
				<strong>원픽</strong>의 인기매물(좋아요 순)
			</h2>
		</div>
		<div class="row">
			<c:if test="${!empty heart}">
				<c:forEach var="top" items="${heart}">
					<div class="col-md-3">
						<li class="gAcyGl" onClick="pSend(this)" data-pno="${top.pno}">
							<!-- onClick의 경우에는 li에 Function을 걸어주어야 인식됩니다. -->
							<div class="hObDcQ">
								<div class="gMnRzx">
									<div class="thumbnail">
										<img class="product_list_image" src="/upload/${top.thumbnail}"
											width="60" height="60" alt="" draggable="false"
											loading="lazy" style="width: 100%; height: 100%;">
									</div>
								</div>
								<div class="bSKZAI">
									<p class="hybbHD">
										<c:if test="${top.type eq 0 }">원룸</c:if>
										<c:if test="${top.type eq 1 }">오피스텔</c:if>
									</p>
									<p class="styled__Price-n321y7-2 bYNMgs">보증금/월세
										${top.deposit }/${top.rent }</p>
									<p class="styled__Desc-n321y7-3 eHtuHa">${top.floor }층,
										${top.area }m², 관리비 ${top.manage }만</p>
									<p class="styled__Desc-n321y7-3 eHtuHa">방 ${top.room}개 / 욕실
										${top.shower}개, 위치 ${top.addr1} ${top.addr2}</p>
									<div class="styled__TagWrap-n321y7-4 guJBBw"></div>
								</div>
							</div>
						</li>
					</div>
				</c:forEach>
			</c:if>
		</div>
	</div>
</div>
<!-- 인기 매물(좋아요 순) 끝 -->


<!-- 인기 매물 페이지 이동 Function -->
<form name="productForm" action="/product/product_view.do" method="post">
	<input type="hidden" name="${_csrf.parameterName }"
		value="${_csrf.token }"> <input type="hidden" name="username"
		value="${username}"> <input type="hidden" name="pno" value="">
</form>
<script>
	function pSend(el) {
		productForm.pno.value = el.dataset.pno;
		productForm.submit();
	}
</script>
<!-- 인기매물 끝 -->

<!-- 관심동네 시작 -->
<sec:authorize access="isAnonymous() or hasAnyRole('ROLE_USER' , 'ROLE_NON')">

	<div class="container-fluid mt-5">
		<div class="container newitem bg-light">
			<!-- 회원 시 -->
			<sec:authorize access="hasAnyRole('ROLE_USER' , 'ROLE_NON')">
				<div class="row">
						<div class="row">
							<div class="index_subtitle my-2">
								${nickname}&nbsp;님의 관심지역의 <strong>평균</strong>은 얼마일까요?
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<select class="form-select dongSelect" name="arr" id="arr">
									<option value="">=== 동선택 ===</option>
										<c:if test="${!empty faArr}">
											<c:forEach var="arr" items="${faArr}">
												<option value="${arr }">${arr }</option>
											</c:forEach>
										</c:if>
								</select>
							</div>
							<div class="col-md-9">
								<span></span>
							</div>
						</div>
				</div>
			</sec:authorize>
			
			<!-- 비회원 시 -->
			<sec:authorize access="isAnonymous()">
				<div class="row">
						<div class="row">
							<div class="index_subtitle my-2" style="font-size: 1.1rem;">
								<a href="/user/user_login.do"><span>&nbsp;로그인&nbsp;</span></a>하시면 관심지역의 정보를 확인하실 수 있습니다
							</div>
						</div>
						<div class="row">
							<div class="index_subtitle my-2">
								&nbsp;용두동 <strong>평균</strong>은 얼마일까요?
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<input type="hidden" class="form-select dongSelect" name="arr" id="arr" value="용두동">

							</div>
							<div class="col-md-9">
								<span></span>
							</div>
						</div>

				</div>
			</sec:authorize>
			<div class="row">
	
				<div class="col-4">
					<div class="d-flex justify-content-center">
						<div class="card my-3 d-inline-block" style="width: 18rem;">
							<div class="card-body">
								<h5 class="card-title">원룸 평균 매물가</h5>
								<p class="card-text border-top border-1 pt-3 pb-1 my-3">
								월세&nbsp;<span id="roomRent" class="spanAl" style="text-align: center;"></span></p>
								<p class="card-text pt-3 pb-1 my-3">
								보증금&nbsp;<span id="roomDeposit" class="spanAl" style="text-align: center;"></span></p>
							</div>
						</div>
					</div>
				</div>
	
				<div class="col-4">
					<div class="d-flex justify-content-center">
						<div class="card my-3 d-inline-block" style="width: 18rem;">
							<div class="card-body">
								<h5 class="card-title">오피스텔 평균 매물가</h5>
								<p class="card-text border-top border-1 pt-3 pb-1 my-3">
								월세&nbsp;<span id="offRent" class="spanAl" style="text-align: center;"></span></p>
								<p class="card-text pt-3 pb-1 my-3">
								보증금&nbsp;<span id="offDeposit" class="spanAl" style="text-align: center;"></span></p>
							</div>
						</div>
					</div>
				</div>
	
				<div class="col-4">
					<div class="d-flex justify-content-center">
						<div class="card my-3 d-inline-block" style="width: 18rem;">
							<div class="card-body">
								<h5 class="card-title">전체 평균 매물가</h5>
								<p class="card-text border-top border-1 pt-3 pb-1 my-3">
								월세&nbsp;<span id="allRent" class="spanAl" style="text-align: center;"></span></p>
								<p class="card-text pt-3 pb-1 my-3">
								보증금&nbsp;<span id="allDeposit" class="spanAl" style="text-align: center;"></span></p>
							</div>
						</div>
					</div>
				</div>
	
			</div>
		</div>
	</div>
	</sec:authorize>
<!-- 관심동네 끝 -->

<!-- 가이드&팁 시작 -->
<div class="container-fluid mt-5">
	<div class="container newitem bg-light">
		<div class="row">
			<div class="index_subtitle my-2">
				<strong>원픽</strong>에서 알려주는 생활꿀팁
			</div>
		</div>
		<c:if test="${!empty tip}">
			<c:forEach var="tip" items="${tip}">
				<a href="/tip/tip_view.do?tip_no=${tip.tip_no}">
					<div class="index_subtitle my-2">
						<div class="list-group-item list-group-item-action">
							<div class="row">
								<div class="col-md-7">${tip.tip_title}</div>
								<div class="col-md-3">
									<fmt:formatDate value="${tip.tip_regdate}" pattern="yyyy-MM-dd" />
								</div>
								<div class="col-md-2">관리자</div>
							</div>
						</div>
					</div>
				</a>
			</c:forEach>
		</c:if>
		<div class="container-fluid row">
		<div><p>  </p></div>
		</div>
	</div>
</div>
<!-- 가이드&팁 끝 -->

<!-- FAQ 시작 -->
<div class="container-fluid mt-5">

	<div class="container newitem bg-light">
		<div class="row">
			<div class="index_subtitle my-2">
				자주묻는 <strong>질문</strong>
			</div>
		</div>
		<div class="row">

			<div class="pcl">
				<div class="row">
					<div class="col-6">
						<div class="accordion accordion-flush" id="accordionFlushExample">
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-heading01">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#flush-collapse01"
										aria-expanded="false" aria-controls="flush-collapseOne">
										<p class="qstyle">Q</p>
										<p>원픽은 어떤 서비스인가요?</p>
									</button>
								</h2>
								<div id="flush-collapse01" class="accordion-collapse collapse"
									aria-labelledby="flush-heading01">
									<div class="accordion-body">
										<p class="qstyle">A</p>
										<p class="naityousize">
											'원픽'에서 살고 싶은 집을 만나보세요.<br> ▶ 유학생들을 위한 일본어 안내 서비스<br>
											▶ 지도로 쉽게 알수있는 매물의 위치 !<br> ▶ 지역별 전월세 평균가 !
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-6">
						<div class="accordion accordion-flush" id="accordionFlushExample">
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-heading02">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#flush-collapse02"
										aria-expanded="false" aria-controls="flush-collapseOne">
										<p class="qstyle">Q</p>
										<p>계약 과정은 어떻게 되나요?</p>
									</button>
								</h2>
								<div id="flush-collapse02" class="accordion-collapse collapse"
									aria-labelledby="flush-heading02">
									<div class="accordion-body">
										<p class="qstyle">A</p>
										<p class="naityousize">
											(1) 원픽에서 원하는 매물을 고른다.<br> (2) 해당 매물의 중개사에게 연락하여 일정을 정한다.<br>
											(3) 직접 매물 방문후 중개사와 계약을 진행한다.
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="pcl">
				<div class="row">
					<div class="col-6">
						<div class="accordion accordion-flush" id="accordionFlushExample">
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-heading03">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#flush-collapse03"
										aria-expanded="false" aria-controls="flush-collapseOne">
										<p class="qstyle">Q</p>
										<p>회원가입을 하면 어떤 점이 좋나요?</p>
									</button>
								</h2>
								<div id="flush-collapse03" class="accordion-collapse collapse"
									aria-labelledby="flush-heading03">
									<div class="accordion-body">
										<p class="qstyle">A</p>
										<p class="naityousize">
											원픽 회원가입후 로그인을 하시면<br> ▶원하는 매물을 저장할수 있는'관심매물'기능 !<br>
											▶관심지역의 새 등록매물을 알림창을 통해 확인 가능합니다 !
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-6">
						<div class="accordion accordion-flush" id="accordionFlushExample">
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-heading04">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#flush-collapse04"
										aria-expanded="false" aria-controls="flush-collapseOne">
										<p class="qstyle">Q</p>
										<p>회원탈퇴는 어떻게 하나요?</p>
									</button>
								</h2>
								<div id="flush-collapse04" class="accordion-collapse collapse"
									aria-labelledby="flush-heading04">
									<div class="accordion-body">
										<p class="qstyle">A</p>
										<p class="naityousize">마이페이지에서 비밀번호를 입력하시고, <br>
										회원탈퇴 버튼을 누르시면 탈퇴하실 수 있습니다.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="pcl">
				<div class="row">
					<div class="col-6">
						<div class="accordion accordion-flush" id="accordionFlushExample">
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-heading05">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#flush-collapse05"
										aria-expanded="false" aria-controls="flush-collapseOne">
										<p class="qstyle">Q</p>
										<p>원픽에 등록된 방은 믿을수 있나요?</p>
									</button>
								</h2>
								<div id="flush-collapse05" class="accordion-collapse collapse"
									aria-labelledby="flush-heading05">
									<div class="accordion-body">
										<p class="qstyle">A</p>
										<p class="naityousize">
											원픽은 사용자 분들에게 믿을 수 있는 정보를 제공하는 것을 최우선으로 합니다.<br> ▶ 지도에
											정확한 매물의 위치를 표시하여 매물의 위치를 쉽게 파악할수 있습니다.<br> ▶ 또한 지속적인
											허위매물 관리를 통해 사용자 분들이 허위정보로 인한 불편함을 느끼지 않도록 노력하고 있습니다.
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-6">
						<div class="accordion accordion-flush" id="accordionFlushExample">
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-heading06">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#flush-collapse06"
										aria-expanded="false" aria-controls="flush-collapseOne">
										<p class="qstyle">Q</p>
										<p>원픽의 회원중개사들은 어떻게 관리되고 있나요?</p>
									</button>
								</h2>
								<div id="flush-collapse06" class="accordion-collapse collapse"
									aria-labelledby="flush-heading06">
									<div class="accordion-body">
										<p class="qstyle">A</p>
										<p class="naityousize">원픽의 회원중개자들은 가입시 사업자번호와 중개사사진을 등록하여
											믿을수 있는 중개사 회원들로 이루어져있습니다.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="pcl">
				<div class="row">
					<div class="col-6">
						<div class="accordion accordion-flush" id="accordionFlushExample">
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-heading07">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#flush-collapse07"
										aria-expanded="false" aria-controls="flush-collapseOne">
										<p class="qstyle">Q</p>
										<p>믿을수 있는 중개사는 어떤 중개사인가요?</p>
									</button>
								</h2>
								<div id="flush-collapse07" class="accordion-collapse collapse"
									aria-labelledby="flush-heading07">
									<div class="accordion-body">
										<p class="qstyle">A</p>
										<p class="naityousize">해당 중개사와 거래한 회원만 작성할 수 있는 이용자 후기를 통해
											중개사의 평판확인이 가능합니다.</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-6">
						<div class="accordion accordion-flush" id="accordionFlushExample">
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-heading08">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#flush-collapse08"
										aria-expanded="false" aria-controls="flush-collapseOne">
										<p class="qstyle">Q</p>
										<p>이사는 어떻게 하나요?</p>
									</button>
								</h2>
								<div id="flush-collapse08" class="accordion-collapse collapse"
									aria-labelledby="flush-heading08">
									<div class="accordion-body">
										<p class="qstyle">A</p>
										<p class="naityousize">
											1인 가구기준 대부분의 이사는 용달 한대로 옮길수 있습니다.<br> 원픽의 이사도우미 회원 기능을
											위해 더욱 열심히 하겠습니다.
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<!-- FAQ 끝 -->


<%@ include file="./include/footer.jsp"%>
<script>

	$(document).ready(function(){
		
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
		
		$(document).ajaxSend(function(e, xhr, options){
			xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		});
		
		$("#arr").on("change", function(){
			
			var that = $(this).val()
			
			if(that != ""){
				$.ajax({
					url : '/dongCheck',
					type : 'POST',
					data : {'arr' : that},
					
					success : function(data){
						$("#roomRent").html((data.roomRent == -1) ? '-' : data.roomRent);
						$("#roomDeposit").html((data.roomDeposit == -1) ? '-' : data.roomDeposit);
						$("#offRent").html((data.offRent == -1) ? '-' : data.offRent);
						$("#offDeposit").html((data.offRent == -1) ? '-' : data.offDeposit);
						$("#allRent").html((data.allRent == -1) ? '-' : data.allRent);
						$("#allDeposit").html((data.allDeposit== -1) ? '-' : data.allDeposit);
					}
				});
			}
			
		});
	})
	
	
</script>
<sec:authorize access="isAnonymous()">
<script>
	$(function(){
		$("#arr").trigger("change");
	})
</script>
</sec:authorize>
</body>

</html>