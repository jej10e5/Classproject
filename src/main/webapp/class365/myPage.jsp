
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/class365/setting.jsp" %>    
<link href="style.css" rel="stylesheet" type="text/css">  
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
 <link href="${project}/tutorMain_style.css" rel="stylesheet" type="text/css"> 
<script src="https://kit.fontawesome.com/811e29d39a.js" crossorigin="anonymous"></script>
<script src="${project}/jquery-3.6.0.js"></script> 
<style>
.btn_modify{
	border: none;
	border-radius:2px;
	background-color:#fec9a5;
}
.btn_modify:hover{
	border: none;
	border-radius:2px;
	background-color:#fda166;
	
}
.btn_delete{
	border: none;
	border-radius:2px;
	background-color:#ff968a;
}
.btn_delete:hover{
	border: none;
	border-radius:2px;
	background-color:#ff6f61;
	
}
.btn_sta1{
	border: none;
	border-radius:2px;
	background-color:#ff8ec7;
}
.btn_sta1:hover{
	border: none;
	border-radius:2px;
	background-color:#ff0080;
	
}
.btn_sta2{
	border: none;
	border-radius:2px;
	background-color:#c67d9f;
}
.btn_sta2:hover{
	border: none;
	border-radius:2px;
	background-color:#9c446e;
	
}
.profile-card{
	background-color: rgb(255 111 97 / 83%);
    background-size: cover;
    width: 100%;
    min-height: 90px;
    border-radius: 4px;
    padding: 10px 20px;
    color: #fff;

}
.profile-photo{
	border: 7px solid #fff;
    float: left;
    margin-right: 20px;
    position: relative;
    margin-top: -5;
    height: 70px;
    width: 70px;
    border-radius: 50%;
}
.text-white{
font-size: 18px;
color: #fff!important;

}
.my_lec{
    
    font-size: 18px;
    margin-right: 15px;
    float: left;
    font-family: "Font Awesome 6 Free";
    
}
.icon1{
	color: #8dc63f;
}
.icon2{
	color:#662d91;
}
.icon3{

}
.icon4{
	color: #ee2a7b;
}
.cate_name_css{
	margin-left: 15px;
    margin-top: 3px;
}
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
<div id="total_div">
<jsp:include page="header.jsp"/>
<div id="mid_div">
	<!--  사이드바 -->
	<div id="side_bar_div">
		<div id="side_bar_size">
			<div id="side_bar_pos">
				<div id="side_menu">
					<div id="side_cate">
						<div id="side_top_div">
						 <div class="profile-card">
            			<h3 class="text-white">${memid} 님</h3>
            			<h5 class="text-white">안녕하세요</h5> 
            	
            			</div><!--profile card ends-->

						</div>
						<!-- 강사 정보 -->
						<div id="side_top_div" onclick="location='myPage.do'">
						<div style="height: 4px; display : flex;">	</div>
							<div class="cate_div">
								<div class="cate_subject">
									<div class="cate_space">
										<span class="cate_icon">

										<i class="fa fa-list-alt icon1 my_lec"></i>
									
										</span>
										<div class="cate_icon_space"></div>
										<span class="cate_name_css">내 강의</span>
									</div>
								</div>
							
							</div>
					
						
						</div>
						<!-- 클래스 관리 -->
							<div id="side_top_div" onclick="location='modifyForm.do'">
						<div style="height: 4px; display : flex;">	</div>
							<div class="cate_div">
								<div class="cate_subject">
									<div class="cate_space">
										<span class="cate_icon">

										<i class="fa fa-users icon2 my_lec"></i>
									
										</span>
										<div class="cate_icon_space"></div>
										<span class="cate_name_css">내 정보 수정</span>
									</div>
								</div>
							
							</div>
					
						
						</div>
						<!-- 리뷰 관리 -->
							<div id="side_top_div" onclick="location=''">
						<div style="height: 4px; display : flex;">	</div>
							<div class="cate_div">
								<div class="cate_subject">
									<div class="cate_space">
										<span class="cate_icon">

										<i class="fa-solid fa-pen-to-square icon3 my_lec"></i>
									
										</span>
										<div class="cate_icon_space"></div>
										<span class="cate_name_css">리뷰 관리</span>
									</div>
								</div>
							
							</div>
					
						
						</div>
						<!-- 회원 탈퇴 -->	
							<div id="side_top_div" onclick="location='deleteForm.do'">
						<div style="height: 4px; display : flex;">	</div>
							<div class="cate_div">
								<div class="cate_subject">
									<div class="cate_space">
										<span class="cate_icon">

										<i class="fa fa-user icon4 my_lec"></i>
									
										</span>
										<div class="cate_icon_space"></div>
										<span class="cate_name_css">회원 탈퇴</span>
									</div>
								</div>
							
							</div>
					
						
						</div>
						
						
					</div>
				</div>
				<div id="side_line">				
				</div>
			</div>
		</div>	
	</div>
 <!-- 사이드바 -->	
	<!-- main lecture list section --> 
	<div class="container" style="max-width:fit-content; margin-left:280px;"> 
		<h2>수강중인 강의</h2>
		<div class="row">   
		<c:forEach var="dto" items="${dtos}">
			<div class="col" style="margin:2% 0;" >
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
	
	
</div>
</div>

<!-- bootstrap ver4.6 JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
 

