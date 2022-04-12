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

	<!-- 회원 알림내용 -->
	<sec:authorize access="hasAnyRole('USER' , 'MEMBER')">

		<ul class="nav nav-tabs nav-fill" id="myTab" role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active" id="home-tab" data-bs-toggle="tab"
					data-bs-target="#home" type="button" role="tab"
					aria-controls="home" aria-selected="true">관심목록</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="profile-tab" data-bs-toggle="tab"
					data-bs-target="#profile" type="button" role="tab"
					aria-controls="profile" aria-selected="false">최근에 본 목록</button>
			</li>
		</ul>
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="home" role="tabpanel"
				aria-labelledby="home-tab">

				<div
					class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<div class="container">
							<sec:authorize access="isAuthenticated()">
								<div class="fCMewi">
									<div class="iOHiXt" style="list-style: none;">
										<div class="jcFemG">
											<ul class="kKQMSn">
												<c:if test="${!empty list }">
													<div class="row">
														<c:forEach var="list" items="${list }">
															<div class="col-md-3" style="padding-bottom: 5%;">
																<li class="gAcyGl"><div class="hObDcQ">
																		<div class="hkMQhb">
																			<div class="gMnRzx" onClick="pSend(this)"
																				data-pno="${list.pno}">
																				<!-- 중개사의 다른 매물에 대한 이미지 -->
																				<img src="/upload/${list.thumbnail }"
																					onClick="submit()" width="60" height="60" alt=""
																					draggable="false" loading="lazy"
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
															</div>
														</c:forEach>
													</div>
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
					</div>
				</div>
			</div>
		



<!-- 최근에 본 목록 시작 -->
			<div class="tab-pane fade" id="profile" role="tabpanel"
				aria-labelledby="profile-tab">
				<div
					class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				
					<div class="col p-4 d-flex flex-column position-static">
						<div class="container">
	
							<div class="fCMewi">
								<div class="iOHiXt" style="list-style: none;">
									<div class="jcFemG">
										<ul class="kKQMSn">
											<c:if test="${!empty clist }">
												<div class="row">
													<c:forEach var="cookieProduct" items="${clist }">
														<div class="col-md-3" style="padding-bottom: 5%;">
															<li class="gAcyGl"><div class="hObDcQ">
																	<div class="hkMQhb">
																		<div class="gMnRzx" onClick="pSend(this)"
																			data-pno="${cookieProduct.pno}">
																			<img src="/upload/${cookieProduct.thumbnail }"
																				onClick="submit()" width="60" height="60" alt=""
																				draggable="false" loading="lazy"
																				style="width: 100%; height: 100%;">
																			<div class="styled__Cover-ami2sx-1 dZAvTS cover"></div>
																		</div>
																	</div>
	
																	<div class="bSKZAI">
																		<p class="hybbHD">
																			<c:if test="${cookieProduct.type eq 0 }">원룸</c:if>
																			<c:if test="${cookieProduct.type eq 1 }">오피스텔</c:if>
																		</p>
																		<p class="styled__Price-n321y7-2 bYNMgs">보증금/월세
																			${cookieProduct.deposit }/${cookieProduct.rent }</p>
																		<p class="styled__Desc-n321y7-3 eHtuHa">${cookieProduct.floor },
																			${cookieProduct.area }m², 관리비 ${cookieProduct.manage }만</p>
																		<p class="styled__Desc-n321y7-3 eHtuHa">${cookieProduct.contents }</p>
																		<div class="styled__TagWrap-n321y7-4 guJBBw"></div>
																	</div>
																</div></li>
														</div>
													</c:forEach>
												</div>
											</c:if>
											<c:if test="${empty clist }">
												<p>최근에 본 목록이 없습니다.</p>
											</c:if>
	
										</ul>
									</div>
								</div>
						</div>
					</div>
	
				</div>
			</div>
		</div>
	
<!-- 최근에 본 목록 끝 -->
	</div>
	</sec:authorize>
</div>

<!-- 다른 매물 뷰로 넘어가기 시작-->
<sec:authorize access="isAuthenticated()">
	<c:set var="username">
		<sec:authentication property="principal.user.username" />
	</c:set>
</sec:authorize>

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
<!-- 다른 매물 뷰로 넘어가기  끝 -->

<!-- sub contents end -->
<%@ include file="../include/footer.jsp"%>
</body>
</html>