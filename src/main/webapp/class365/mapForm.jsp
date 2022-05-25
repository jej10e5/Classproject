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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ba7439462d656bdc59c5331193480eaa&libraries=services"></script>

</head>

<body> 
<%@ include file="header.jsp" %>  
<div id="map_div" style="padding:150px;">
	 			<section class="tut_intro">		
	 			
	 				<div class="name_div">
	 					<h3 class="tut_name">강의 장소</h3>
	 				</div>	
	 			
					<div id="map" style="width:500px;height:400px;"></div>
					<script type="text/javascript">
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = {
				        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };  

				// 지도를 생성합니다    
				var map = new kakao.maps.Map(mapContainer, mapOption); 

				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new kakao.maps.services.Geocoder();
				var positions=new Array();
				<c:forEach var='dto' items='${dtos}'>
					positions.push("${dto.adr}");
				</c:forEach>
				//var positions=['제주특별자치도 제주시 첨단로 242','제주 제주시 공항로 2'];
				// 주소로 좌표를 검색합니다
				for(var i=0;i<positions.length;i++){
				geocoder.addressSearch(positions[i], function(result, status) {

				    // 정상적으로 검색이 완료됐으면 
				     if (status === kakao.maps.services.Status.OK) {

				        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

				        // 결과값으로 받은 위치를 마커로 표시합니다
				        var marker = new kakao.maps.Marker({
				            map: map,
				            position: coords
				        });

				        // 인포윈도우로 장소에 대한 설명을 표시합니다
				        var infowindow = new kakao.maps.InfoWindow({
				            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
				        });
				        infowindow.open(map, marker);

				        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				        map.setCenter(coords);
				      
				    } 
				});   
				}
				
							
							
						</script>

				</section>
				</div> 
<!-- bootstrap ver4.6 JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
 </body>
<footer> 
<a href='https://kr.freepik.com/photos/woman'>Woman 사진는 freepik - kr.freepik.com가 제작함</a>
<a href='https://kr.freepik.com/photos/hand'>Hand 사진는 pressfoto - kr.freepik.com가 제작함</a>
<a href='https://kr.freepik.com/photos/woman'>Woman 사진는 freepik - kr.freepik.com가 제작함</a>
</footer> 