  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />
<!-- bootstrap ver4.6 css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
 <title>강의 만들기2</title>
<%@include file="setting.jsp"%>
<link href="${project}/style.css" rel="stylesheet" type="text/css"> 
</head>
<style>
body{
color: #9b9ca1;
}
.bg-secondary-soft {
    background-color: rgba(208, 212, 217, 0.1) !important;
}
.rounded {
    border-radius: 5px !important;
}
.py-5 {
    padding-top: 3rem !important;
    padding-bottom: 3rem !important;
}
.px-4 {
    padding-right: 1.5rem !important;
    padding-left: 1.5rem !important;
}
.file-upload .square {
    height: 250px;
    width: 250px;
    margin: auto;
    vertical-align: middle;
    border: 1px solid #e5dfe4;
    background-color: #fff;
    border-radius: 5px;
}
.text-secondary {
    --bs-text-opacity: 1;
    color: rgba(208, 212, 217, 0.5) !important;
}
.btn-success-soft {
    color: #28a745;
    background-color: rgba(40, 167, 69, 0.1);
}
.btn-danger-soft {
    color: #dc3545;
    background-color: rgba(220, 53, 69, 0.1);
}
.form-control {
    display: block;
    width: 100%;
    padding: 0.5rem 1rem;
    font-size: 0.9375rem;
    font-weight: 400;
    line-height: 1.6;
    color: #29292e;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #e5dfe4;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-radius: 5px;
    -webkit-transition: border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
    transition: border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
}
</style>
<body>
<jsp:include page="header.jsp"/>
<div class="container-fluid">
<div class="container">
<div class="row">
		<div class="col-12">
			<!-- 제목 -->
			<div class="my-5">
				<h3>강의만들기</h3>
				<hr>
			</div>
			<!-- Form START -->
			<form class="file-upload">
				<div class="row mb-5 gx-5">
					<!-- 강의정보입력 -->
					<div class="col-xxl-8 mb-5 mb-xxl-0">
						<div class="bg-secondary-soft px-4 py-5 rounded">
							<div class="row g-3">
								<h4 class="mb-4 mt-0">강의 정보 입력</h4>
								<!-- 강의이름 -->
								<div class="col-md-6">
									<label class="form-label">카테고리선택 *</label>
									<select class="form-select" aria-label="Default select example">
  										<option selected>카테고리</option>
  										<option value="1">요리</option>
 										<option value="2">운동</option>
  										<option value="3">금융</option>
									</select>
								</div>
								<!-- 강의내용 -->
								<div class="col-md-6">
									<label class="form-label">난이도 *</label>
									<select class="form-select" aria-label="Default select example">
  										<option selected>난이도</option>
  										<option value="1">상</option>
 										<option value="2">중</option>
  										<option value="3">하</option>
									</select>
									
								</div>
					 			<!-- 최대최소인원 어떻게 해야할지? -->
								<div class="col-md-6">
									<label class="form-label">최소인원*</label>
									<input type="text" class="form-control" placeholder="">
								</div>
								<div class="col-md-6">
									<label class="form-label">최대인원 *</label>
									<input type="text" class="form-control" placeholder="">
								</div>
								<div class="col-md-2">
									<label class="form-label">가격 *</label>
									<input type="text" class="form-control" placeholder="">
								</div>
								<div class="col-md-6">
									<label class="form-label">강의 시작일 *</label>
									<input type="text" class="form-control" placeholder="">
									<label class="form-label">강의 종료일 *</label>
									<input type="text" class="form-control" placeholder="">
								</div>
								<div class="col-md-8">
									<label class="form-label">주소 *</label>
									<div class="d-flex justify-content-end">
										<button type="button" class="btn btn-info" onClick="goPopup();">주소검색</button>
									</div>
									<input type="text" id="address" class="form-control" placeholder="주소를 검색하세요" required readonly>
							
								</div>
							</div> <!-- Row END -->
						</div>
					</div>
			</div>
			
		</form>
	</div>
	</div>
	<div class="row">
		<input class="btn" type="submit" value="완료"/>
	</div>
	</div>

</div>
					<!-- Row END -->
					
<script>
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function goPopup(){
	var pop = window.open("${project}/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
}


function jusoCallBack(roadFullAddr){
	var addressEl = document.querySelector("#address")
		addressEl.value=roadFullAddr;
}

</script>
<!-- bootstrap ver4.6 JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
 </body>
</html>
