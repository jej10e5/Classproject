<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@include file="setting.jsp" %>
<head> 
<!-- font awesome -->
<script src="https://kit.fontawesome.com/811e29d39a.js" crossorigin="anonymous"></script>
<!-- bootstrap ver4.6 css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
 <link href="${project}/style.css" rel="stylesheet" type="text/css"> 
<script src="${project}/script.js"></script>

<title>${title_main}</title> 
</head>
<body> 
<%@ include file="header.jsp" %>  
<section>  
<!-- main section -->
<div id="main_section" class="container-fluid">   

<!-- main ads section -->
  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-bottom:5%;">
  	<!-- main ads list controller -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li> 
    </ol> 
    <div class="carousel-inner cb_main">  
      <div class="carousel-item active">  
      <!-- image ads1 -->   
      	<img class="bd-placeholder-img main_ads" src="${ads}/ads1.jpg"/>  
        <div class="container" > 
        <!-- 왼쪽정렬 --> 
          <div class="carousel-caption text-left" > 
            <h1>Example headline.</h1> 
            <p>Some representative placeholder content for the first slide of the carousel.</p>
            <p><a class="btn btn-lg btn-primary " href="#">Sign up today</a></p>
          </div> 
        </div>
      </div>  
      <div class="carousel-item">
		<!-- image ads2 --> 
		<img class="bd-placeholder-img main_ads" src="${ads}/ads2.jpg"/>
        <div class="container">
         <!-- 가운데 정렬 --> 
          <div class="carousel-caption">
            <h1>Another example headline.</h1> 
            <p>Some representative placeholder content for the second slide of the carousel.</p>
            <p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>
          </div>
        </div> 
      </div>
      <div class="carousel-item">
      <!-- image ads3 -->
		<img class="bd-placeholder-img main_ads" src="${ads}/ads3.jpg"/>
        <div class="container">
         <!-- 오른쪽정렬 -->
          <div class="carousel-caption text-right">
            <h1>One more for good measure.</h1>
            <p>Some representative placeholder content for the third slide of this carousel.</p>
            <p><a class="btn btn-lg btn-primary" href="#">Browse gallery</a></p>
          </div>
        </div>
      </div>
    </div>
    <!-- main ads left button -->
    <button class="carousel-control-prev" type="button" data-target="#myCarousel" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </button>
    <!-- main ads right controller -->
    <button class="carousel-control-next" type="button" data-target="#myCarousel" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </button>
  </div>
  
<!-- main lecture list section --> 
	<div class="container mg_zero" style="max-width:fit-content;"> 
		<div class="row">   
		<c:forEach begin="1" end="10">
			<div class="col-lg-3 col-md-6" style="margin:2% 0;">
				<div class="card"> 
				  <img src="${class_image}/bear1.png" class="card-img-top" alt="...">
				  <div class="card-body">
				    <h5 class="card-title">Card title</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#"><i class="fa-regular fa-heart cc_pink" style="padding:5px 10px; inline"></i></a>
				    <a href="classForm.jsp" class="btn btn-primary">Go somewhere</a>

				    <!-- classForm.jsp?classNum=${classNum} -->
				  </div>
				</div>
			</div>
		</c:forEach>
		</div>
	</div>
   
	<div class="cb_orange" style="width:100%; height:500px; ">
		<span class="c_font_main cc_white">메인 페이지입니다.</span> 
	</div>
	<div class="cb_main" style="width:100%; height:500px; "></div>
	<div class="cb_purple" style="width:100%; height:500px; "></div>
</div>
	
</section> 
<!-- bootstrap ver4.6 JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
 </body>
<footer> 
<a href='https://kr.freepik.com/photos/woman'>Woman 사진는 freepik - kr.freepik.com가 제작함</a>
<a href='https://kr.freepik.com/photos/hand'>Hand 사진는 pressfoto - kr.freepik.com가 제작함</a>
<a href='https://kr.freepik.com/photos/woman'>Woman 사진는 freepik - kr.freepik.com가 제작함</a>
</footer> 