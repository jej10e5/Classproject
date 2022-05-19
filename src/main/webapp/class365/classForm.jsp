<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/class365/setting.jsp" %>    
<link href="style.css" rel="stylesheet" type="text/css">   
<link href="class_style.css" rel="stylesheet" type="text/css"> 
<!-- bootstrap ver4.6 css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
 
<script src="https://kit.fontawesome.com/811e29d39a.js" crossorigin="anonymous"></script>
<script src="${project}/jquery-3.6.0.js"></script>
<script type="text/javascript">
//<!--
$(document).ready(function($) {

        $(".nav_list").click(function(event){            
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
        });
});


//-->
</script>

<jsp:include page="header.jsp"/>
 <!--전체 블록 -->   
 <div id="tot_div">
	 <!-- 헤더블록 -->
	
	 </div>
 	<!-- 미들 블록 -->
 	<div id="middle_div">
 	<!-- 네비게이터 -->
 	<div id="nav_div" >
 			<!-- 네비게이션 항목들 -->
 			<a href="#review_div" class="nav_list">후기</a>	
 	
 			<a href="#class_info_div" class="nav_list">강의설명</a>	
 		
 			<a href="#tut_div" class="nav_list">강사소개 </a>		
 	
 	</div>
 		<!-- 미들항목 메인 아티클 -->

 		    <!-- 강좌내용들과 결제하기박스 분할 -->
 			
 				<!-- 아티클 파트 나누는 블록 -->
	 			<div id="class_info">
	 				<div id="class_pic">
	 					<img src="${class_image}/img1.jpg" >
	 				</div>
	 				
	 			 				
	 				<section id = "class_intro">
	 					<!-- 클래스 정보 -->
	 					<h2 id="section_name">클래스 정보</h2>
	 					<!--  강좌이름, 강좌설명, 강의사진 -->
	 					<dl class= class_dl>
	 						<dt class= "class_dt">클래스 분량 </dt>
	 						<dd class="class_dd">8개 챕터, 30개 세부강의</dd>
	 						<dt class="class_dt">수강 가능일 </dt>
	 						<dd class="class_dd">22.06.01</dd>
	 						<dt class= "class_dt">강의 방식 </dt>
	 						<dd class="class_dd">대면</dd>	 					
	 					</dl>
	 				</section>
	 			<!-- 강의 소개, 강사 소개 , 후기 -->
	 			<div id="main_arti">
	 				<div id="tut_div" style="padding-top:150px;">
	 				<section class="tut_intro">
	 				  <div class="name_div">
	 					<h3 class="tut_name">OOO 강사님을
	 									  <br>
	 									 소개합니다
	 					</h3>
	 				</div>			 
	 				 <div class="sub_div">
	 				  		<div id="tuto_info_pro">
	 				  		 	<div class="pro_img">
	 				  		 		<img class ="profile_img" src="${profile_image}/img2.jpg">	 				  		 		
	 				  		 	</div>
	 				  		 	<div id="pro_text">
	 				  		 		<p class="pro_name">권다솜</p>				  		 		
	 				  		 	</div>
	 				  		</div>
	 				  		<div class="tut_text">
	 				  			<p class="tut_text_area">
	 				  			아
	 				  			<br>
	 				  			아
	 				  			<br>
	 				  			아
	 				  			<br>
	 				  			안녕하세요. 9년 경력의 보컬 강사 박달해 입니다.
								<br>
								"장기간의 보컬레슨이 부담스러우신 분"
								<br>
								장기 레슨 전, 보컬레슨을 경험 해 보고 싶으신 분
								<br>
								회식자리나 결혼식 축가와 같은 행사에서 부를 한 곡을 마스터 하고 싶으신 분
								<br>
								완벽한 음향장비로 나만의 노래를 레코딩 해보고 싶으신 분
								<br>
								모두 환영합니다 !
								<br>
								수강생 개개인의 상황에 따라 맟춤 커리큘럼을 바로 컨설팅하여 진행합니다.
								<br>
								또한 어려운 보컬 이론과 테크닉만 이해하다 끝나는 수업이 아닌,
								<br>
								짧은 시간 안에 이루어 낼 수 있는것이 무엇인가를 같이 고민해보고
								<br>
								최단시간동안 최대의 성취감과 즐거움, 재미를 이끌어내는 수업을 지향하고 있습니다.
								<br>
								작업실에 완비되어있는 음향장비로 수업 이후에 레코딩을 해봄으로서,
								<br>
								나의 단점과 장점을 직접적으로 듣고 느낄 수 있는 경험도 해보실 수 있습니다.
								<br>
								좋은 음악으로 좋은 인연 이어가고 싶습니다. 감사합니다.
	 				  			</p>
	 				  		</div>
	 				  </div>	
	 				
	 				</section>
	 				
	 				</div>
	 				<div id="class_info_div" style="padding-top:150px;">
	 					<section class="tut_intro">
	 						<div class="name_div">
	 							<h3 class="tut_name">클래스 소개 </h3>
	 						</div>
	 						  <div class="sub_div">
		 						<div class="tut_text">
		 							<p class="tut_text_area">
		 								#진행방식
										1) 원데이 클래스 (오프라인)
											<br>
										- 다솜쌤의 1:1 정규클래스 맛보기 수업이에요
												<br>
										- [레벨테스트] + [커리큘럼 컨설팅] + [맛보기 클래스] 로 50분간 진행합니다
											<br>
										- 사전에 간단한 상담을 통해 수준과 관심사에 맞는 자료를 미리 준비해 드려요!
											<br>
										- 수업은 압구정로데오역 인근 지정 학습공간에서 진행합니다 (별도 비용X)
											<br>
										
										2) 다회차 클래스 (탈잉LIVE)
											<br>
										- 탈잉 LIVE를 통해 주 1회, 1:1로 50분간 총 4회 진행되는 다회차 수업이에요
											<br>
										- 1회차: [레벨테스트] + [커리큘럼 컨설팅] + [Getting to Know You]
											<br>
										- 2~4회차: 수강생의 수준과 학습목적에 맞는 맞춤 커리큘럼으로 진행해요
											<br>
										- 매주 부여되는 숙제와 실시간 채팅으로 일상에서도 영어공부를 계속 할 수 있어요
											<br>
										#커리큘럼 예시
											<br>
										◾ 왕기초 영어회화
											<br>
										"주말에는 보통 골프를 쳐요" -> "Weekend... usually... golf"
											<br>
										방금 이렇게 생각하신 분 손 🙌
											<br>
										한국어로 생각하고 영어로 말하면 안 된다는 건 들었는데,
											<br>
										솔직히 영어로 생각하는 것도 어렵잖아요?
											<br>
										일단 문장을 시작할 수 있게, 기본적인 문법들을 입에 딱 붙여드려요❕
											<br>
										- 시제 / 조동사 / 전치사 / 접속사 등 기본 문법을 활용한 문장 만들기
											<br>
										- 기초 영어회화 (인사하기/칭찬하기/스몰톡/취미/일상 등)
											<br>
										- 상황별 영어회화 (공항/레스토랑/카페/쇼핑몰/병원 등)
											<br>
										- 스크립트 영어회화 (자기소개/가족소개/직업소개 등)
											<br>
										◾ 일상 영어회화
											<br>
		 							</p>
		 						</div>	
		 					 </div>		 				
	 					</section>	 				
	 				</div>
	 				<div id="review_div" style="padding-top:150px;">
	 					<section class="tut_intro">
	 						<div class="name_div">
	 							<h3 class="tut_name">수강생 리뷰 </h3>
	 						</div>
	 						<div class="tut_rev_div">
	 							<div class="review_text">
	 								<ul>
	 									<li class="review_list">
	 									  <div class="rev_tute_info">
	 										<span class="tute_img">
	 											<img class = "tute_rev_img" src="/Test/images/tut_img.jpg"/>
	 										</span>	
	 									  <div class="tute">	
	 										<div class ="rev_tut_name">
	 											<span class="tut_names">김밥</span>
	 										</div>	
	 										<div class = "rev_write_date">
	 											<p class = "write_date">2022-05-30 11:00:56</p> 
	 										</div>
	 									  </div>	
	 									 
	 									 </div>	
	 									  <div class="rev_object">
	 									  		<p class="rev_cmt">가나다라 마바사 ABCD
	 									  			<br>
	 									  			어렵지만 재밌게 읽었습니다. 사주를 재미겸 많이 봤던편인데 많이 봐서 그런지 지금까지 들었던 이야기들이 들어있었습니다.
그래도 좋았던건 뭔가 진심으로 봐주시려하는 느낌이 글 한 자 한 자에 녹아있던 것 같습니다. 마지막에 사주를 마무리하며 남겨주신 이야기도 마음에 와 닿았습니다.
	 									  		</p>
	 									  </div>	
	 									</li>
	 								</ul>
	 							</div>
	 						</div>
	 					</section>
	 				</div>
	 			</div>	
 				</div>	
 		
 			
 				<div id="pay_box">
 					<div id="pay_box_in">
 						<div id="box_object">
 							<div id="box_cate" font-weight="500">카테﹒고리 · 박스</div>
 							<h2 id="box_title">[간결한 제목 ABC abc 가나다라마바사 123467]</h2>
 							<div id="class_state">
 								<div id="state_box">
 									<div id="state_open">모집중</div>
 								</div>		
 							</div>
 							<div id="box_mid">
 								<div id="box_mprice">
 									<div id="mon_price">
 										<h4 font-weight="700" id="m_price">월 40,200원</h4>
 									</div>
 								</div>								
 							</div>
 							<div id="div_inv"></div>
 							<div id="div_hr">
 								<hr id="box_hr">
 							</div>
 							<div id="joa_div">
	 							<div id="like_div">
	 								<button type="button" id="like_btn">
	 									<div id="heart_div">
	 										<i class="fa-solid fa-heart heart_color"></i>
	 									</div>
	 									<span id="like_amount">1234</span>
	 								</button>
	 								
	 							</div>			
	 							<div id="hidden1_div">
	 								
	 							</div>
	 							<div id="hidden2_div">
	 								
	 							</div>	
	 						</div>							
 							<div id="total_div">
 								<div id="total_month">
 									<div font-wight-"500" color=#fd3049" id="month_text">기간 6개월</div>
 								</div>
	 							<div id="box_total">
	 								<h4 color="#fd3049" font-weight="700" id="total_price">총240,400원</h4>
	 							</div>
	 						</div>	
	 						
	 						<section id="buy_sec">
	 							<button type="button" id="buy_btn">결제하기</button>
	 						</section>
 						</div>
 					</div>
 				</div>	
 				<!-- 결제 박스 끝 -->
 	<div >

 	</div>
 	
 	</div>
 <!-- bootstrap ver4.6 JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
 	
 <!-- 풋 블록 -->
	 <footer id="footer_div">
	 풋터입니다
	 
	  
	 
	 </footer>
 </div>