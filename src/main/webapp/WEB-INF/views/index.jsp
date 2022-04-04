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
   font-size: 1.1rem;
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
         <img src="/resources/images/imsi_01.png">
         <div class="carousel-caption text-end">
            <h1>One more for good measure.</h1>
            <p>Some representative placeholder content for the third slide
               of this carousel.</p>
            <p>
               <a class="btn btn-lg btn-primary" href="#">Browse gallery</a>
            </p>
         </div>
      </div>
      <div class="carousel-item">
         <img src="/resources/images/imsi_02.png">
         <div class="carousel-caption text-start">
            <h1>Example headline.</h1>
            <p>Some representative placeholder content for the first slide
               of the carousel.</p>
            <p>
               <a class="btn btn-lg btn-primary" href="#">Sign up today</a>
            </p>
         </div>
      </div>
      <div class="carousel-item">
         <img src="/resources/images/imsi_01.png">
         <div class="carousel-caption text-end">
            <h1>One more for good measure.</h1>
            <p>Some representative placeholder content for the third slide
               of this carousel.</p>
            <p>
               <a class="btn btn-lg btn-primary" href="#">Browse gallery</a>
            </p>
         </div>
      </div>
      <div class="carousel-item">
         <img src="/resources/images/imsi_02.png">
         <div class="carousel-caption text-start">
            <h1>Example headline.</h1>
            <p>Some representative placeholder content for the first slide
               of the carousel.</p>
            <p>
               <a class="btn btn-lg btn-primary" href="#">Sign up today</a>
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

					<<sec:authorize access="isAuthenticated()">
					<p><sec:authentication property="principal"/></p>
					<p><sec:authentication property="principal.user"/></p>
					<p><sec:authentication property="principal.user.cor.username"/></p>
					</sec:authorize>


<!-- 인기매물 시작 (수정) -->
<div class="container-fluid">
   <div class="container newitem">
      <h2>
         <strong>이번주</strong> 인기매물
      </h2>
      <div class="row">
         <div class="col-sm-6 col-md-3">
            <div class="row">
               <div class="thumbnail">
                  <a href="/product/product_view.do"><img
                     src="/resources/images/s_001.png" alt="..."></a>
               </div>
            </div>
            <div class="row">
               <h5>원룸</h5>
               <h3><strong>월세 1000/55</strong></h3>
               <h5>5층 / 방 1개 / 욕실 1개 <br>
               위치 서울특별시 서대문구 연희동 353-85</h5>
            </div>
         </div>
         
         <div class="col-sm-6 col-md-3">
            <div class="row">
               <div class="thumbnail">
                  <a href="/product/product_view.do"><img
                     src="/resources/images/s_001.png" alt="..."></a>
               </div>
            </div>
            <div class="row">
               <h5>원룸</h5>
               <h3><strong>월세 1000/55</strong></h3>
               <h5>5층 / 방 1개 / 욕실 1개 <br>
               위치 서울특별시 서대문구 연희동 353-85</h5>
            </div>
         </div>
         
         <div class="col-sm-6 col-md-3">
            <div class="row">
               <div class="thumbnail">
                  <a href="/product/product_view.do"><img
                     src="/resources/images/s_001.png" alt="..."></a>
               </div>
            </div>
            <div class="row">
               <h5>원룸</h5>
               <h3><strong>월세 1000/55</strong></h3>
               <h5>5층 / 방 1개 / 욕실 1개 <br>
               위치 서울특별시 서대문구 연희동 353-85</h5>
            </div>
         </div>
         
         <div class="col-sm-6 col-md-3">
            <div class="row">
               <div class="thumbnail">
                  <a href="/product/product_view.do"><img
                     src="/resources/images/s_001.png" alt="..."></a>
               </div>
            </div>
            <div class="row">
               <h5>원룸</h5>
               <h3><strong>월세 1000/55</strong></h3>
               <h5>5층 / 방 1개 / 욕실 1개 <br>
               위치 서울특별시 서대문구 연희동 353-85</h5>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- 인기매물 끝 -->


<!-- 관심동네 시작 -->
<div class="container-fluid mt-5">
   <div class="container newitem bg-light">
      <div class="row">
         <div class="index_subtitle my-2">
            51기님의 관심매물의 <strong>평균</strong>은 얼마일까요?
         </div>
      </div>
      <div class="row">

         <div class="col-4">
            <div class="d-flex justify-content-center">
               <div class="card my-3 d-inline-block" style="width: 15rem;">
                  <div class="card-body">
                     <h5 class="card-title">원룸 평균 매물가</h5>
                     <p
                        class="card-text border-top border-secondary border-1 pt-3 pb-5 my-3">월세
                        500/84</p>
                  </div>
               </div>
            </div>
         </div>

         <div class="col-4">
            <div class="d-flex justify-content-center">
               <div class="card my-3 d-inline-block" style="width: 15rem;">
                  <div class="card-body">
                     <h5 class="card-title">오피스텔 평균 매물가</h5>
                     <p
                        class="card-text border-top border-secondary border-1 pt-3 pb-5 my-3">월세
                        2000/124</p>
                  </div>
               </div>
            </div>
         </div>

         <div class="col-4">
            <div class="d-flex justify-content-center">
               <div class="card my-3 d-inline-block" style="width: 15rem;">
                  <div class="card-body">
                     <h5 class="card-title">원룸 평균 매물가</h5>
                     <p
                        class="card-text border-top border-secondary border-1 pt-3 pb-5 my-3">월세
                        500/84</p>
                  </div>
               </div>
            </div>
         </div>

      </div>
   </div>
</div>
<!-- 관심동네 끝 -->


<!-- FAQ 시작 -->
<div class="container-fluid mt-5">

   <div class="container newitem bg-light">
      <div class="row">
         <div class="index_subtitle my-2">
            자주묻는 <strong>질문</strong>
         </div>
      </div>
      <div class="row">

         <div class="col-3">
            <div class="d-flex justify-content-center">
               <div class="card my-3 d-inline-block" style="width: 15rem;">
                  <div class="card-body">
                     <h5 class="card-title">FAQ 제목</h5>
                     <p
                        class="card-text border-top border-secondary border-1 pt-3 pb-5 my-3">
                        FAQ 내용 원픽 허위매물 예방 5계명</p>
                  </div>
               </div>
            </div>
         </div>

         <div class="col-3">
            <div class="d-flex justify-content-center">
               <div class="card my-3 d-inline-block" style="width: 15rem;">
                  <div class="card-body">
                     <h5 class="card-title">FAQ 제목</h5>
                     <p
                        class="card-text border-top border-secondary border-1 pt-3 pb-5 my-3">
                        FAQ 내용 원픽 허위매물 예방 5계명</p>
                  </div>
               </div>
            </div>
         </div>

         <div class="col-3">
            <div class="d-flex justify-content-center">
               <div class="card my-3 d-inline-block" style="width: 15rem;">
                  <div class="card-body">
                     <h5 class="card-title">FAQ 제목</h5>
                     <p
                        class="card-text border-top border-secondary border-1 pt-3 pb-5 my-3">
                        FAQ 내용 원픽 허위매물 예방 5계명</p>
                  </div>
               </div>
            </div>
         </div>
         
         <div class="col-3">
            <div class="d-flex justify-content-center">
               <div class="card my-3 d-inline-block" style="width: 15rem;">
                  <div class="card-body">
                     <h5 class="card-title">FAQ 제목</h5>
                     <p
                        class="card-text border-top border-secondary border-1 pt-3 pb-5 my-3">
                        FAQ 내용 원픽 허위매물 예방 5계명</p>
                  </div>
               </div>
            </div>
         </div>

      </div>
   </div>
</div>
<!-- FAQ 끝 -->


<%@ include file="./include/footer.jsp"%>


</body>

</html>