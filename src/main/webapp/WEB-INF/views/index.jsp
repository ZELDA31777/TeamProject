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


<!-- 인기매물 시작 -->
<div class="container-fluid">
	<div class="container newitem">
		<h2>금주의 인기매물</h2>
		<div class="row">
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<img src="/resources/images/s_001.png" alt="...">
				</div>
			</div>
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<img src="/resources/images/s_001.png" alt="...">
				</div>
			</div>
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<img src="/resources/images/s_001.png" alt="...">
				</div>
			</div>
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<img src="/resources/images/s_001.png" alt="...">
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
    
      <div class="col-4 text-center">
        <div class="index_subtitle my-2">51기님의 관심매물의 <strong>평균</strong>은 얼마일까요?</div>
        <div class="card my-3 d-inline-block" style="width: 15rem;">
          <div class="card-body text-start">
            <h5 class="card-title">원룸 평균 매물가</h5>
            <p class="card-text border-top border-secondary border-1 pt-3 pb-5 my-3">월세 500/84</p>
          </div>
        </div>
      </div>
      
      <div class="col-7">
        <div class="card my-5" style="width: 18rem;">
          <img src="/resources/images/s_001.png" class="card-img-top" alt="설명">
        </div>
      </div>
      
    </div>
  </div>
</div>
<!-- 관심동네 끝 -->


<footer>
	<div class="container-fluid footerbg">
		<div class="container">
			<p>Copyright All rights Reserved</p>
		</div>
	</div>
</footer>

<!-- 
	<div class="modal fade jslhrd" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<ul>
					<li>
						
					</li>
				</ul>
			</div>
		</div>
	</div>
 	-->


<!-- jquery를 기반으로 로드함 -->
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</body>

</html>