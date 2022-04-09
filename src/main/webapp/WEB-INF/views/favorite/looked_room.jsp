<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!-- sub contents start -->

<div class="container sub_title"
	style="margin-bottom: 16px; padding-bottom: 16px; border-bottom: 1px solid rgb(245, 245, 245);">
	<h1 class="sub_title_text">관심목록</h1>
</div>

<div class="container">
	<!-- 비회원 알림 내용 -->
	<sec:authorize access="isAnonymous()">
		<div align="center">
			로그인이 필요한 서비스입니다.
			<div>
				<a href="/user/user_login.do"><button type="button"
						class="btn btn-light">로그인</button></a>
			</div>
		</div>
	</sec:authorize>

	<sec:authorize access="isAuthenticated()">
		<div class="fCMewi">
			<div class="iOHiXt" style="list-style: none;">
				<div class="jcFemG">
					<ul class="kKQMSn">
					
					<c:if test="${!empty list }">
						<c:forEach var="list" items="${list }">
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

											<img src="/upload/${list.thumbnail }" width="60"
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
					</c:if>
					
					<c:if test="${empty list }">
						<label>찜한 목록이 없습니다.</label>
					</c:if>

					</ul>
				</div>
			</div>
		</div>
	</sec:authorize>



</div>

<!-- sub contents end -->
<%@ include file="../include/footer.jsp"%>
</body>
</html>