<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/class365/setting.jsp" %>    
<link href="style.css" rel="stylesheet" type="text/css">  
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
 <link href="${project}/tutorMain_style.css" rel="stylesheet" type="text/css"> 
<script src="https://kit.fontawesome.com/811e29d39a.js" crossorigin="anonymous"></script>
<script src="${project}/jquery-3.6.0.js"></script> 

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
						<div style="height: 4px; display : flex;">	</div>
							<div class="cate_div">
								<div class="cate_subject">
									<div class="cate_space">
										<span class="cate_icon">
										<i class="fa-solid fa-bell icon_pos"></i>
										</span>
										<div class="cate_icon_space"></div>
										<span class="cate_name_css">공지사항</span>
									</div>
								</div>
							
							</div>
					
						
						</div>
						<!-- 강사 정보 -->
						<div id="side_top_div" onclick="location='tutorInfoForm.do'">
						<div style="height: 4px; display : flex;">	</div>
							<div class="cate_div">
								<div class="cate_subject">
									<div class="cate_space">
										<span class="cate_icon">

										<i class="fa-solid fa-chalkboard-user icon_pos"></i>
									
										</span>
										<div class="cate_icon_space"></div>
										<span class="cate_name_css">강사 정보</span>
									</div>
								</div>
							
							</div>
					
						
						</div>
						<!-- 클래스 관리 -->
							<div id="side_top_div">
						<div style="height: 4px; display : flex;">	</div>
							<div class="cate_div">
								<div class="cate_subject">
									<div class="cate_space">
										<span class="cate_icon">

										<i class="fa-solid fa-school icon_pos"></i>
									
										</span>
										<div class="cate_icon_space"></div>
										<span class="cate_name_css">강의 관리</span>
									</div>
								</div>
							
							</div>
					
						
						</div>
						<!-- 리뷰 관리 -->
							<div id="side_top_div">
						<div style="height: 4px; display : flex;">	</div>
							<div class="cate_div">
								<div class="cate_subject">
									<div class="cate_space">
										<span class="cate_icon">

										<i class="fa-solid fa-pen-to-square icon_pos"></i>
									
										</span>
										<div class="cate_icon_space"></div>
										<span class="cate_name_css">리뷰 관리</span>
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
	<div id="tutor_div">
		<div id="tutor_main_article">
			<div id="tutor_main_margin">
				<div id="tutor_top_topic">
					<h3 class="topic">강의</h3>
					<c:if test="${tutorInfo ne 0}">
					<a href="createClassForm1.do" style="color:inherit;">
						<button id="make_class_btn">
							<span id="inher_span">
								<span id="btn_icon_span">
									<i class="fa-solid fa-plus"></i>
								</span>
								<div style="width:6px; height:0px;"></div>
								<span id="btn_subject"> 상품 만들기</span>
							</span>
						</button>					
					</a>
					</c:if>
				</div>
				<div id="table_div">
					<table class="tutor_table">
						<c:if test="${tutorInfo ne 0}">
						<tr style="border-bottom:solid 1px lightgrey" >
							<th style="width:5%"><input type="checkbox"></th>
							<th style="width:15%">강좌명</th>
							<th>상태</th>
							<th >카테고리</th>
							<th style="width:15%">지역</th>
							<th>난이도</th>
							<th>현재인원</th>
							<th style="width:15%">생성일</th>
						</tr>	
						</c:if>
						<c:if test="${tutorInfo eq 0}">
						<tr style="border-bottom:solid 1px lightgrey" >
							<th> 강사 정보를 먼저 수정해주세요!</th>
							<th><input type="button" class="btn" value="정보 수정" 
								onclick="location='tutorInfoForm.do'"></th>
						</tr>	
						</c:if>				
					</table>
						
				</div>
			</div>
		</div>
	
	
	  <div id="tutor_div_space"></div>
	</div>
</div>
</div>
<!-- bootstrap ver4.6 JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
 