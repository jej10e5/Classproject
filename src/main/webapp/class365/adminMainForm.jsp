
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/class365/setting.jsp" %>    
<link href="${project}/style.css" rel="stylesheet" type="text/css">  
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
 <link href="${project}/tutorMain_style.css" rel="stylesheet" type="text/css"> 
 <link href="${project}/style.css" rel="stylesheet" type="text/css"> 
<script src="https://kit.fontawesome.com/811e29d39a.js" crossorigin="anonymous"></script>
<script src="${project}/jquery-3.6.0.js"></script> 
<script type="text/javascript">

</script> 
<style>
.btn_info{
	border: none;
	border-radius:2px;
	background-color:lightgray;
}
.btn_info:hover{
	border: none;
	border-radius:2px;
	background-color:gray;
	
}
.btn_confirm{
	border: none;
	border-radius:2px;
	background-color:#ff968a;
}
.btn_confirm:hover{
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
.cate_div{
	font-size: 1rem;
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
					
						<!-- 환불 정보 -->
						<div id="side_top_div" >
						<div style="height: 4px; display : flex;">	</div>
							<div class="cate_div" onclick="location='adminMainForm.do'">
								<div class="cate_subject">
									<div class="cate_space">
										<span class="cate_icon">

										<i class="fa-solid fa-chalkboard-user icon_pos"></i>
									
										</span>
										<div class="cate_icon_space"></div>
										<span class="cate_name_css">환불현황</span>
									</div>
								</div>
							
							</div>
					<!-- 회원 정보 -->
						<div id="side_top_div" >
						<div style="height: 4px; display : flex;">	</div>
							<div class="cate_div" onclick="location='adminMember.do'">
								<div class="cate_subject">
									<div class="cate_space">
										<span class="cate_icon">
										<i class="fa-solid fa-bell icon_pos"></i>
										</span>
										<div class="cate_icon_space"></div>
										<span class="cate_name_css">회원현황</span>
									</div>
								</div>
							
							</div>
					
						
						</div>
						<!-- 생성요청 관리 -->
							<div id="side_top_div" >
						<div style="height: 4px; display : flex;">	</div>
							<div class="cate_div" onclick="location='adminConfirm.do'">
								<div class="cate_subject">
									<div class="cate_space">
										<span class="cate_icon">
										<i class="fa-solid fa-check-to-slot icon_pos"></i>								
										</span>
										<div class="cate_icon_space"></div>
										<span class="cate_name_css">검토 요청</span>
									</div>
								</div>
							
							</div>
						
						</div>
						</div>
						<!-- 클래스 관리 -->
							<div id="side_top_div" >
						<div style="height: 4px; display : flex;">	</div>
							<div class="cate_div" onclick="location='adminClass.do'">
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
							<div id="side_top_div" >
						<div style="height: 4px; display : flex;">	</div>
							<div class="cate_div" onclick="location='adminReview.do'">
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
					
						<!-- 관리자 페이지 나가기 -->
							<div id="side_top_div" >
						<div style="height: 4px; display : flex;">	</div>
							<div class="cate_div" onclick="location='logout.do'">
								<div class="cate_subject">
									<div class="cate_space">
										<span class="cate_icon">
										<i class="fa-solid fa-door-open icon_pos"></i>
										</span>
										<div class="cate_icon_space"></div>
										<span class="cate_name_css">나가기</span>
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
	<div id="tutor_div" >
	<c:if test="${tutorInfo ne 0}">
		<div id="tutor_main_article" >
			<div id="tutor_main_margin">
			
				<div id="tutor_top_topic">
					<h3 class="topic">환불 현황</h3>
					
				</div>
				<div id="table_div" >
					<table class="tutor_table">
						<tr style="border-bottom:solid 1px lightgrey" >
							<th style="width:15%">접수번호</th>
							<th>신청자</th>
							<th>강의번호</th>
							<th>강의정보</th>
							<th>취소 신청일</th>
							<th>상태</th>
							<th>처리</th>
						</tr>
						<c:forEach var="dto" items="${dtos}">
							<tr>
							<th style="width:15%">${dto.ref_num}</th>
							<th>${dto.id}</th>
							<th>${dto.lec_num}</th>
							<th><input type="button" class="btn_info"value="더보기" onclick="location='classForm.do?lec_num=${dto.lec_num}'"></th>
							<th>${dto.reg_date}</th>
							<c:if test="${dto.sta eq 0}">
							<th>
								접수
							</th>
							<th><input class="btn_confirm" type="button" value="신청확인" onclick="location='refundConfirm.do?lec_num=${dto.lec_num}&id=${dto.id}'"></th>
							</c:if>
							<c:if test="${dto.sta eq 1}">
							<th>
								처리완료
							</th>
							<th>${dto.fin_date}</th>
							</c:if>
							</tr>
						</c:forEach>					
					</table>	
				</div>
			</div>
			
		</div>
		</c:if>
			
	  <div id="tutor_div_space"></div>
	</div>
</div>
</div>

<!-- bootstrap ver4.6 JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
 
