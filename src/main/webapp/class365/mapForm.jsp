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
					<script>
						var list = new Array();
						
						var container = document.getElementById('map');
						var options = {
							center: new kakao.maps.LatLng(33.450701, 126.570667),
							level: 3
						};
				
						var map = new kakao.maps.Map(container, options);
						
						var geocoder = new kakao.maps.services.Geocoder();
						
						<c:forEach var="dto" items="${dtos}">
						list.push("${dto.adr}");
						</c:forEach>
						geocoder.addressSearch(list[0], function(result, status) {
							
							if (status === kakao.maps.services.Status.OK) {

						        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
						        
						     // 마커 이미지의 이미지 주소입니다
						        var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	
						            
						            // 마커 이미지의 이미지 크기 입니다
						            var imageSize = new kakao.maps.Size(24, 35); 
						            
						            // 마커 이미지를 생성합니다    
						            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
						            
						            // 마커를 생성합니다
						            var marker = new kakao.maps.Marker({
						                map: map, // 마커를 표시할 지도
						                position: coords, // 마커를 표시할 위치
						                title : '마커', // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
						                image : markerImage // 마커 이미지 
						            });

						        
							}
						});
						
						
						
						
							geocoder.addressSearch('서울 서대문구 신촌로 129 아트레온', function(result, status) {
							
							if (status === kakao.maps.services.Status.OK) {

						        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
						       
						     // 마커 이미지의 이미지 주소입니다
						        var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	
						            
						            // 마커 이미지의 이미지 크기 입니다
						            var imageSize = new kakao.maps.Size(24, 35); 
						            
						            // 마커 이미지를 생성합니다    
						            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
						            
						            // 마커를 생성합니다
						            var marker = new kakao.maps.Marker({
						                map: map, // 마커를 표시할 지도
						                position: coords, // 마커를 표시할 위치
						                title : '마커', // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
						                image : markerImage // 마커 이미지 
						            });
						            map.setCenter(coords);

							}
						});
							
							
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