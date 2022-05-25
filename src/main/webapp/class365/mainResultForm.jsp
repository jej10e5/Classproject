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
.pro_img{
	border-radius:20px;
}
.profile{
	overflow:hidden; 
	display:flex; 
	width:100%; 
	height:100%; 
	object-fit:cover;
	transition: all 0.2s linear;
	max-width:100%;
}
.lvbox{
	position:absolute; 
	top:10px; 
	left:10px;
	border:solid 1px white;
	border-radius:7px;
	color:white;
	padding:3px 5px;
}
.cbox{
	position:absolute; 
	top:10px; 
	left:80px;
	border:solid 1px white;
	border-radius:7px;
	color:white;
	padding:3px 5px;
}
.sbox{
	position:absolute; 
	bottom:210px; 
	left:10px;
	border:solid 1px white;
	border-radius:7px;
	color:white;
	padding:3px 5px;
}
.hebox{
	position:absolute; 
	top:15px; 
	right:15px;
	z-index:100;

}
.lv1{
	background-color:#fda166;
}
.lv2{
	background-color:#ff6f61;
}
.lv3{
	background-color:#9c446e;
}
.ca1{
	background-color:#fda166;
}
.ca2{
	background-color:#ff6f61;
}
.ca3{
	background-color:#9c446e;
}
.s1{
	background-color:#ff6f61;
}
.s2{
	background-color:#9c446e;
}
.card{
	border:none;
}
.card img{
	border-radius:20px;
}
.card:hover{
	cursor:pointer;
}
.card:hover img{
	transform:scale(1.2);
}
</style>
<body> 
<%@ include file="header.jsp" %>  
<section>   
<!-- main section -->
	<div class="container" style="max-width:fit-content; margin:auto;"> 
		<div class="row">   
		<c:forEach var="dto" items="${dtos}">
			<div class="col-lg-3 col-md-6" style="margin:2% 0;" >
				<div class="card" style="height:500px; width: 300px; margin:auto;"
					onclick="location.href='classForm.do?lec_num=${dto.lec_num}'">
					<div class="row">
		                  <div  class="mx-auto"  style="width: 300px;">
		                   <div class="pro_img" id="thumb_container" style="height:300px; overflow:hidden;">
		                   		<img class="profile" src="${imagepath}${dto.thu}" style="position:relative;">
		                   		<c:if test="${dto.lv eq '입문자'}">
		                   		<span class="lvbox lv1">${dto.lv}</span>
		                   		</c:if>
		                   		<c:if test="${dto.lv eq '초급자'}">
		                   		<span class="lvbox lv2">${dto.lv}</span>
		                   		</c:if>
		                   		<c:if test="${dto.lv eq '중급자'}">
		                   		<span class="lvbox lv3">${dto.lv}</span>
		                   		</c:if>
		                   		
		                   		<c:if test="${dto.cate eq '요리'}">
		                   		<span class="cbox ca1">${dto.cate}</span>
		                   		</c:if>
		                   		<c:if test="${dto.cate eq '운동'}">
		                   		<span class="cbox ca2">${dto.cate}</span>
		                   		</c:if>
		                   		<c:if test="${dto.cate eq '금융'}">
		                   		<span class="cbox ca3">${dto.cate}</span>
		                   		</c:if>
		                   		
		                   		<c:if test="${dto.sta eq 1}">
		                   		<span class="sbox s1">모집중</span>
		                   		</c:if>
		                   		<c:if test="${dto.sta eq 2}">
		                   		<span class="sbox s2">마감</span>
		                   		</c:if>
		                   		<!-- 좋아요기능 -->
		                   		<c:forEach var="ldto" items="${ldtos}">
			                   		<c:if test="${dto.lec_num eq ldto.lec_num}">
								     	<a class="hebox" style="z-index:200;" href="deleteHeart.do?lec_num=${dto.lec_num}">
								     	 	<i class="fa-solid fa-heart cc_pink" style="padding-top:5px; font-size:25px;"></i>
								     	 </a>
							     	 </c:if>
						     	</c:forEach>
						     	<c:if test="${memid eq null or memid eq '' }">
						     	<a class="hebox" href="loginForm.do">
								     <i class="fa-regular fa-heart cc_pink" style="padding-top:5px; font-size:25px;"></i>
								 </a>
								 </c:if>
								 <c:if test="${memid ne null and memid ne '' }">
								 <a class="hebox" href="insertHeart.do?lec_num=${dto.lec_num}">
								     <i class="fa-regular fa-heart cc_pink" style="padding-top:5px; font-size:25px;"></i>
								 </a>
								 </c:if>
		                   	</div>    
		                    </div>
		                </div>
				  <div class="card-body">
				    <h4 class="card-title" style="text-overflow: ellipsis; overflow:hidden;"> ${dto.sub}</h4>
				    <h7 class="card-text" style="display:block; margin-bottom:5px;">${dto.id}</h7>
				    <h7 class="card-text" style="display:block; margin-bottom:5px;text-overflow: ellipsis; overflow:hidden;">${dto.intr}</h7>
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