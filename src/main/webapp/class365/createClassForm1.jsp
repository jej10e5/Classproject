<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<!-- bootstrap ver4.6 css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
 <%@include file="setting.jsp"%>
<script type="text/Javascript" src="${project}/script2.js" charset="UTF-8"></script>
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
               ${sessionScope.id}님의 강의 생성</p>   
              <div class="tab-content pt-3">
                <div class="tab-pane active">
                  <form class="form" name="createform" method="post" 
                  action="createClassPro1.do" onsubmit="return createcheck()">
                    <div class="row">
                      <div class="col">
                        <div class="row">
                          <div class="col-md-6">
                            <div class="form-group">
                              <label>강의명</label>
                              <input class="form-control" type="text" name="lec_sub" placeholder="강의명을 입력하세요.">
                            </div>
                          </div>
                          <div class="col-md-6">
									<label class="form-label">카테고리선택 *</label>
									<select name="category" class="form-control" aria-label="Default select example">
  										<option selected>카테고리</option>
  										<option value="요리">요리</option>
 										<option value="운동">운동</option>
  										<option value="금융">금융</option>
									</select>
								</div>
                         </div>
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>강의 요약</label>
                              <textarea class="form-control" rows="3" 
                              name="lec_intr" placeholder="강의 요약 내용을 입력하세요." 
                              maxlength="300"></textarea>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>강의 내용</label>
                              <textarea class="form-control" rows="6" 
                              name="lec_con" placeholder="강의 내용을 입력하세요."
                              maxlength="600"></textarea>
                            </div>
                          </div>
                        </div>
                        <!-- 사진업로드 --> 
                        <div class="row">
							<div class="e-profile" style="width:auto;">
				              <div class="row">
				                <div class="col-12 col-sm-auto mb-3">
				                  <div class="mx-auto" style="width: 960px;margin:auto;">
				                    <div class="d-flex justify-content-center align-items-center rounded" style="height: 540px; background-color: rgb(233, 236, 239);">
				                      <span style="color: rgb(166, 168, 170); font: bold 8pt Arial;">720x1052</span>
				                    </div>
				                  </div>
				                </div>
				               </div>
				              </div>
	                     </div>
	                     <div class="row" style="padding:0 5%;">
	                     	<!-- 사진저장기능 -->
	                     	<!-- 버튼 -->
							<input type="file" id="customFile" name="iamgefile" hidden="">
							<label class="btn btn-success-soft btn-block" style="width:45%; margin:auto;" for="customFile">사진올리기</label>
							<button type="button" class="btn" style="width:45%;margin:auto;">Remove</button>
						</div>
						<!-- 사진저장기능 -->
						<!-- 썸네일업로드 --> 
                        <div class="row" style="margin-top:3%;">
							<div class="e-profile" style="margin:auto;">
				              <div class="row">
				                <div class="col-12 col-sm-auto mb-3">
				                  <div class="mx-auto" style="width: 300px;margin:auto;">
				                    <div class="d-flex justify-content-center align-items-center rounded" style="height: 300px; background-color: rgb(233, 236, 239);">
				                      <span style="color: rgb(166, 168, 170); font: bold 8pt Arial;">300x300</span>
				                    </div>
				                  </div>
				                </div>
				               </div>
				              </div>
	                     </div>
	                     <div class="row" style="padding:0 5%;">
	                     	<!-- 버튼 -->
							<input type="file" id="customFile" name="thumbfile" hidden="">
							<label class="btn btn-success-soft btn-block" style="width:20%; margin:auto 10px auto auto;" for="customFile">사진올리기</label>
							<button type="reset" class="btn" style="width:20%; margin:auto auto auto 10px;">Remove</button>
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
</div>



<!-- bootstrap ver4.6 JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
 </body>
 </html>