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
<style>
.profile{
	overflow:hidden; 
	display:flex; 
	width:100%; 
	height:100%; 
	object-fit:cover;
}
</style>
<body> 
<%@ include file="header.jsp" %>  
<section>  
<!-- main section -->
<div id="main_section" class="container-fluid">   
   
<!-- main lecture list section --> 
	<div class="container" style="max-width:fit-content; margin:auto;"> 
		<div class="row">   
		<c:forEach var="dto" items="${dtos}">
			<div class="col-lg-3 col-md-6" style="margin:2% 0; ">
				<div class="card" style="height:450px; width: 300px;margin:auto;">
					<div class="row">
		                  <div  class="mx-auto"  style="width: 250px; padding:auto;">
		                   <div class="pro_img" id="thumb_container" style="height:250px;">
		                   		<img class="profile" src="${imagepath}${dto.thu}">
		                   	</div>    
		                    </div>
		                </div>
				 
				  <div class="card-body">
				    <h4 class="card-title">[${dto.cate}]&nbsp;&nbsp;&nbsp;${dto.sub}</h4>
				    <h7 class="card-text" style="display:block; margin-bottom:5px;">${dto.intr}</h7>
				    <div style="bottom:0px;">
				    <h5 class="card-text" style="padding:5px 10px; display:inline;color:#ff6f61; margin-right:auto;">월 ${dto.pri}원</h5>
				    <!-- like 
				    <a href="#"><i class="fa-regular fa-heart cc_pink" style="padding:5px 10px; inline"></i></a>
				    -->
				    <a href="classForm.do?lec_num=${dto.lec_num}" class="btn btn-primary"
				    style="float:right;">상세정보</a>
					</div>
				    <!-- classForm.jsp?classNum=${classNum} -->
				  </div>
				</div>
			</div>
		</c:forEach>
		</div>
	</div>
   
	<div class="cb_orange" style="width:100%; height:500px; ">
		<span class="c_font_main cc_white">검색결과${p}/</span> 
		<span class="c_font_main cc_white">카테고리결과${c}</span> 
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