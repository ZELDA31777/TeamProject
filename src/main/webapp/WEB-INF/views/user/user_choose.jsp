<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/pricing/">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
      .jb-percentage { font-size: 100%; }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="/resources/css/pricing.css" rel="stylesheet">
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<!-- sub contents start -->

<div class="container py-3">
  <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
    <div class="row text-center">
    
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-body">
            <img src="/resources/images/ANKO.jpg" width="100%">
            <ul class="list-unstyled mt-3 mb-4">
              <li>원픽의 회원이 되어</li>
              <li>원하는 방을 찾아보세요!</li>
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-outline-primary">일반회원</button>
          </div>
        </div>
      </div>
 
      <div class="col">
      </div>
      
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-body">
            <img src="/resources/images/ANKO.jpg" width="100%">
            <ul class="list-unstyled mt-3 mb-4">
              <li>원픽의 파트너 중개사가 되어</li>
              <li>다양한 매물을 소개해보세요!</li>
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-outline-primary">중개사 회원</button>
          </div>
        </div>
      </div>
      
   </div>
  </div>
</div>

<div class="row">
<div class="d-flex justify-content-evenly">

	<div class="col-md-2">
       <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-body">
            <img src="/resources/images/ANKO.jpg" width="100%">
            <ul class="list-unstyled mt-3 mb-4">
              <li>원픽의 회원이 되어
              	원하는 방을 찾아보세요!</li>
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-outline-primary">일반회원</button>
          </div>
        </div>
	</div>
	

	<div class="col-md-2">
       <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-body">
            <img src="/resources/images/ANKO.jpg" width="100%">
            <ul class="list-unstyled mt-3 mb-4">
              <li>원픽의 파트너 중개사가 되어
              	다양한 매물을 소개해보세요!</li>
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-outline-primary">중개사 회원</button>
          </div>
        </div>
	</div>

</div>	
</div>

	<!-- sub contents end -->
	<%@ include file="../include/footer.jsp"%>
</body>
</html>