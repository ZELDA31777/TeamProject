<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>

<!-- Button trigger modal -->
<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#option">
  옵션선택
</button>
<!-- 바탕클릭해도 안닫힘 -->
<div class="modal fade" id="option" data-bs-keyboard="false" tabindex="-1" 
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
   <div class="modal-content">
    <div class="modal-body">
     <div class="row">
      <div class="col-md-7">
      	<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
      	 <div class="carousel-inner">
      	  <!-- 썸네일 -->
      	  <div class="carousel-item active"> 
            <img src ="/resources/images/DENNE.jpg" style="width:100%;">
          </div>
          <div class="carousel-item">
      	  <img src ="/resources/images/ANKO.jpg" style="width:100%;">
    	  </div>
    	  <div class="carousel-item">
      	  <img src ="/resources/images/JUIN.jpg" style="width:100%;">
    	  </div>
      	 </div>
      	 <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    	 <span class="carousel-control-prev-icon" aria-hidden="true"></span>
   		 <span class="visually-hidden"></span>
  		 </button>
 		 <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    	 <span class="carousel-control-next-icon" aria-hidden="true"></span>
    	 <span class="visually-hidden"></span>
 		 </button>
      	</div>
      </div>
      <div class="col-md-5">
       <table border="1" width="100%" height="100%">
          <tr align="right">
           <td>매물번호 &nbsp&nbsp</td>
          </tr>
   		  <tr align="center">
           <td><h2>월세 1500/90</h2></td>
          </tr>
          <tr>
           <td>최근 n 일 조회수 n회</td>
          </tr>
          <tr>
           <td>내용내용</td>
          </tr>
          <tr align="center">
           <td>
            <button type="button" class="btn btn-dark" onClick="#">상세보기</button>&nbsp&nbsp
   			<button type="button" class="btn btn-danger" onClick="#">♡</button>&nbsp&nbsp
           </td>
          </tr>
       </table>
      </div>
     </div>
    </div>
   </div>
  </div>
</div>


</body>
</html>