  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<!-- bootstrap ver4.6 css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
 <%@include file="setting.jsp"%>
<script type="text/Javascript" src="${project}/script.js" charset="UTF-8"></script>
<link href="${project}/style.css" rel="stylesheet" type="text/css"> 
</head>
<style>
body{
    background:#f8f8f8
}
</style>
<body>
<jsp:include page="header.jsp"/>
<div class="container" >
        <div class="card" style="padding:3%;">
               <p class="c_font_main cc_black">
               ${sessionScope.memid}님의 강의 생성 - 상세정보</p>   
              <div class="tab-content pt-3">
                <div class="tab-pane active">
                  <form class="form" name="createform" enctype="multipart/form-data" method="post" 
                  action="createClassPro2.do" onsubmit="return createcheck()">
                    <div class="row">
                      <div class="col">
                        <div class="row">
                          <div class="col-md-4">
                            <div class="form-group">
                              <label>가격*</label>
                              <input class="form-control" type="number" name="price" placeholder="가격을 입력하세요." required>
                            </div>
                          </div>
                          <div class="col-md-4">
                          	<label>난이도*</label>
									<select name="level" class="form-control" aria-label="Default select example" required>
  										<option value=0>난이도</option>
  										<option value="입문자">입문자</option>
 										<option value="초급자">초급자</option>
  										<option value="중급자">중급자</option>
									</select>

							</div>
                         </div>
                        <div class="row">
                        	<div class="col-md-4">
                            <div class="form-group">
                              <label>최대인원*</label>
                              <input class="form-control" type="number" name="capacity" placeholder="최대인원을 입력하세요." required>
                            </div>
                          </div>
                        </div>
						<div class="row">
                          <div class="col-md-4">
                          	<label>강의시작일*</label>
								<input class="form-control" type="date" name="begin" placeholder="강의시작일" required>
							</div>
                         <div class="col-md-4">
                          	<label>강의시작일*</label>
							<input class="form-control" type="date" name="begin" placeholder="강의시작일" required>
							</div>
                         </div>
                        <div class="row">
                        	<div class="col-md-4">
                        	<label>강의 열리는 곳*</label>
							<input class="form-control" type="date" name="begin" placeholder="강의시작일" required>
							</div>

						</div>
                         <div class="row">
                         	<div class="col">
                         	<input type="text" id="address_kakao" name="address" readonly />
                         	<input type="text" name="address_detail" />
                      		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
								<script>
								window.onload = function(){
								    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
								        //카카오 지도 발생
								        new daum.Postcode({
								            oncomplete: function(data) { //선택시 입력값 세팅
								                document.getElementById("address_kakao").value = data.address; // 주소 넣기
								                document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
								            }
								        }).open();
								    });
								}
								</script>
                         	
							</div>
                         </div>
						<div class="row">
                   			<div class="col d-flex justify-content-end">
                   			 <button class="btn btn-primary" type="submit">Save Class</button>
                   			 </div>
                   		</div>
                      </div> 
                     </div>
				</form>
				
			</div>				
		</div>
	</div>

<!-- bootstrap ver4.6 JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
 </body>
</html>
