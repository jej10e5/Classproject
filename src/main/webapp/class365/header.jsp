<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="setting.jsp" %>  
 <link href="${project}/style.css" rel="stylesheet" type="text/css"> 

<header id="header_nav">      
<div id="header_top">   
	<div id="h_top">  
		<span class="c_font_content" id="htext">매일 매일 듣는 class 365!!</span> 
	</div> 
	 
<nav class="navbar navbar-expand-xl navbar-light bg-white">
  <a class="navbar-brand c_font_main" href="${project}/mainForm.do" style="margin-right:30px;"> 
  	<span class="cc_main">${page_main1}</span>
  	<span class="cc_orange">${page_main2}</span> 
  	</a>     
  	    
  <!-- 반응형웹 - 화면 크기 줄어들었을때 햄버거모양 리스트 -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" 
  	aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  <div class="collapse navbar-collapse bg-white " id="navbarCollapse">
 <div class="dropdown-divider"></div>
    <ul class="navbar-nav "style=" margin-right:auto;">   
      <li class="nav-item"> 
        <a class="nav-link cc_pink c_font_category" href="#">${menu_event}</a>
      </li>    
      <li class="nav-item"> 
        <a class="nav-link cc_main c_font_category" href="#">${menu_class}</a>
      </li>       
      <li class="nav-item dropdown" style="margin-right:20px;"> 
        <a class="nav-link dropdown-toggle c_font_category cc_black" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-expanded="false">
         ${menu_category}
        </a> 
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">${category_cook}</a>
          <a class="dropdown-item" href="#">${category_art}</a>
          <a class="dropdown-item" href="#">${category_exercise}</a>
          <a class="dropdown-item" href="#">${category_music}</a> 
          <a class="dropdown-item" href="#">${category_creative}</a>
        </div>
      </li> 
       
      <li class="nav-item c_font_category">   
        <form class="form-inline my-2 my-lg-0" style="padding:5px;">
      	<input class="form-control mr-sm-2 " type="search" style="width:300px;" placeholder="${str_search}" aria-label="Search">
      	<button class="btn btn-outline-success my-2 my-sm-0" type="submit">${btn_search}</button>
      </form>
      </li>
     </ul> 
     
    <!-- guest -->
    <c:if test="${sessionScope.memid eq null}">
    <ul class="navbar-nav"> 
      <li class="nav-item my-2 my-lg-0">
        <a class="nav-link cc_purple c_font_category" href="signupForm.do">${menu_signup}</a>
      </li>
      <li class="nav-item my-2 my-lg-0"> 
        <a class="nav-link cc_purple c_font_category" href="loginForm.do">${menu_login}</a>
      </li> 
    </ul>
 	</c:if>
 	
 	<!-- member --> 
     <c:if test="${sessionScope.memid ne null}">
     <ul class="navbar-nav"> 
     <li class="nav-item my-2 my-lg-0">
     	 <a class="nav-link" href="#">
     	 	<i class="fa-regular fa-heart cc_pink" style="padding-top:5px; font-size:20px;"></i>
     	 </a>
        
      </li>
      <li class="nav-item my-2 my-lg-0">
        <a class="nav-link cc_orange c_font_category" href="createClassForm1.do">${menu_creator}</a>
      </li>
      <li class="nav-item my-2 my-lg-0">
        <a class="nav-link cc_purple c_font_category" href="#">${menu_mypage}</a>
      </li>
      <li class="nav-item my-2 my-lg-0"> 
        <a class="nav-link cc_gray c_font_category" href="logout.do">${menu_logout}</a>
      </li> 
    </ul>
    </c:if>
  </div>
</nav>
</div>
</header> 
