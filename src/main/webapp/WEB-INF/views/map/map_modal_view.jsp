<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<style>
.image-box {
	width: 100%;
	height: 500px;
	overflow: hidden;
	margin: 0 auto;
}

.image-thumbnail {
	width: 100%;
	height: 100%;
	object-fit: cover;
}
</style>
<body>

	<div class="row">
		<div class="col-md-8">
			<div id="carouselExampleInterval" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active" data-bs-interval="10000">
						<div class="image-box">
							<img src="/upload/${pvo.thumbnail }"
								class="d-block image-thumbnail" alt="...">
						</div>
					</div>

					<!-- picture에 기록된 사진 출력 시작 -->
					<c:forEach var="pic" items="${picList}">
						<div class="carousel-item " data-bs-interval="2000">
							<div class="image-box">
								<img src="/upload/${pic }" class="d-block image-thumbnail"
									alt="...">
							</div>
						</div>
					</c:forEach>
					<!-- picture에 기록된 사진 출력 끝 -->

				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleInterval" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>

		<!-- 비로그인 상태의 정보를 받아옴 -->
		<sec:authorize access="isAnonymous()">
			<c:set var="username" value="" />
		</sec:authorize>
		<!-- 비로그인 상태의 정보를 받아옴 종료 -->

		<!-- 현재 로그인 한 유저의 정보를 받아옴 -->
		<sec:authorize access="isAuthenticated()">
			<c:set var="username">
				<sec:authentication property="principal.user.username" />
			</c:set>
		</sec:authorize>
		<!-- 현재 로그인 한 유저의 정보를 받아옴 종료 -->

		<div class="col-md-4">
			<div class="map_modal_info">
				<div class="biKwOB">
					<div>
						<div class="dtGkBV">매물번호 ${pvo.pno}</div>
					</div>

					<a href="mailto:${pvo.username }"><svg width="24" height="24"
							viewBox="0 0 24 24" fill="none"
							xmlns="http://www.w3.org/2000/svg" style="flex: 0 0 auto;">
							<path
								d="M10.4627 3C11.015 3 11.4627 3.44772 11.4627 4C11.4627 4.51284 11.0767 4.93551 10.5794 4.99327L10.4627 5H5V19H19V13.6069C19 13.094 19.386 12.6714 19.8834 12.6136L20 12.6069C20.5128 12.6069 20.9355 12.9929 20.9933 13.4903L21 13.6069V19.5C21 20.2797 20.4051 20.9204 19.6445 20.9931L19.5 21H4.5C3.7203 21 3.07955 20.4051 3.00687 19.6445L3 19.5V4.5C3 3.7203 3.59489 3.07955 4.35554 3.00687L4.5 3H10.4627ZM21 3V10C21 10.5523 20.5523 11 20 11C19.4872 11 19.0645 10.614 19.0067 10.1166L19 10V6.414L12.7071 12.7071C12.3166 13.0976 11.6834 13.0976 11.2929 12.7071C10.9324 12.3466 10.9047 11.7794 11.2097 11.3871L11.2929 11.2929L17.584 5H14C13.4872 5 13.0645 4.61396 13.0067 4.11662L13 4C13 3.48716 13.386 3.06449 13.8834 3.00673L14 3H21Z"
								fill="#CCCCCC"></path></svg></a>
				</div>

				<!-- 비로그인 상태의 정보를 받아옴 -->
				<sec:authorize access="isAnonymous()">
					<c:set var="username" value="" />
				</sec:authorize>
				<!-- 비로그인 상태의 정보를 받아옴 종료 -->

				<!-- 현재 로그인 한 유저의 정보를 받아옴 -->
				<sec:authorize access="isAuthenticated()">
					<c:set var="username">
						<sec:authentication property="principal.user.username" />
					</c:set>
					<input type="hidden" id="username1" name="username1"
						value="${username}">
				</sec:authorize>
				<!-- 현재 로그인 한 유저의 정보를 받아옴 종료 -->


				<div class="styled__PriceWrap-cvrpi1-5 fzGgeZ">
					<p class="eswqdM">보증금/월세 ${pvo.deposit }/${pvo.rent }</p>
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
							<span>${Math.round(pvo.area * 100) / 100.0}</span>
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
							<p class="content">${pvo.addr1 }${pvo.addr3 }</p>
						</div></li>
				</ul>
				<div class="styled__LessorWrap-cvrpi1-13 jVGbJb">
					<div class="styled__Name-cvrpi1-14 jueGPM">
						<p>우리공인중개사사무소</p>
					</div>
				</div>
				<div class="styled__BtnWrap-cvrpi1-15 brpHbd row">
					<div class="col-md-10">
						<form name="test" method="post" action="/product/product_view.do">
							<input type="hidden" name="pno" value="${pvo.pno }"> <input
								type="hidden" name="username" value="${username }"> <input
								type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}">
							<button color="blue" class="fiEZwu3">
								<span><span>상세보기</span></span>
							</button>
						</form>
					</div>
					<div class="col-md-2">
						<a class="text-dark heart"> <img id="heart"
							src="/resources/icon/heart.svg"
							style="filter: invert(41%) sepia(87%) saturate(7008%) hue-rotate(327deg) brightness(91%) contrast(88%); width: 100%; object-fit: cover; vertical-align: -55%;">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
    $(document).ready(function () {
		
    	var csrfHeaderName = "${_csrf.headerName}";
        var csrfTokenValue = "${_csrf.token}";
        //스프링 시큐리티을 이용한다면 csrf 토큰을 같이 전송하도록 해야 한다
    	
         $(document).ajaxSend(function(e, xhr, options) {
               xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
            })
	// 좋아요가 있는지 확인한 값을 heartval에 저장
			var heartval = 0;
        
        
        if(${!empty fvo and !empty fvo.heart}){
			heartval = 1;
        }
        
	// heartval이 1이면 좋아요가 이미 되있는것이므로 heart-fill.svg를 출력하는 코드
        if(heartval>0) {
            console.log(heartval);
            $("#heart").prop("src", "/resources/icon/heart-fill.svg");
            $(".heart").prop('name',heartval)
        }
        else {
            console.log(heartval);
            $("#heart").prop("src", "/resources/icon/heart.svg");
            $(".heart").prop('name',heartval)
        }

	// 좋아요 버튼을 클릭 시 실행되는 코드
        $(".heart").on("click", function () {
            var that = $(".heart");
            console.log("${fvo}");
	    $.ajax({
	    	url :'/favorite/saveHeart',
	        type :'POST',
	        data : {'pno':${pvo.pno},'username': "${username}" },
	    	success : function(data){
	    		console.log(data);
	    		that.prop('name',data);
	        	if(data==1) {
	            	     $('#heart').prop("src","/resources/icon/heart-fill.svg");
	        	} else if (data==0) {
                    	     $('#heart').prop("src","/resources/icon/heart.svg");
	        	} else {
	        		alert("로그인 이후에 이용해주십시오.");
	        		location.href="/user/user_login.do";
	        	}
	    	}
	    });
        });
    });
</script>
</body>
</html>