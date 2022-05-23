<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="setting.jsp" %>
<head> 
<!-- font awesome -->
<script src="https://kit.fontawesome.com/811e29d39a.js" crossorigin="anonymous"></script>
<!-- bootstrap ver4.6 css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
 <link href="${project}/style.css" rel="stylesheet" type="text/css"> 
<script src="${project}/script.js"></script>

<title>마이페이지</title>
</head>

<style>

body{
    margin-top:20px;
    background:#FAFAFA;
}

/*==================================================
  Newsfeed Left Sidebar
  ==================================================*/

/*Profile Card CSS*/

.profile-card{
  background: linear-gradient(to bottom, rgba(39,170,225,.8), rgba(28,117,188,.8));
  background-size: cover;
  width: 100%;
  min-height: 90px;
  border-radius: 4px;
  padding: 10px 20px;
  color: #fff;
  margin-bottom: 40px;
}

.profile-card img.profile-photo{
  border: 7px solid #fff;
  float: left;
  margin-right: 20px;
  position: relative;
  top: -30px;
  height: 70px;
  width: 70px;
  border-radius: 50%;
}

.profile-card h5 a{
  font-size: 15px;
}

.profile-card a{
  font-size: 12px;
}

/*Newsfeed Links CSS*/

ul.nav-news-feed{
  padding-left: 20px;
  padding-right: 20px;
  margin: 0 0 40px 0;
    background:#fff;
  padding-top:20px;
}

ul.nav-news-feed li{
  list-style: none;
  display: block;
  padding: 15px 0;
}

ul.nav-news-feed li div{
  position: relative;
  margin-left: 30px;
  }

ul.nav-news-feed li div::after{
  content: "";
  width: 100%;
  height: 1px;
  border-top: 1px solid #f1f2f2;
  position: absolute;
  bottom: -15px;
  left: 0;
}

ul.nav-news-feed li a{color: #6d6e71;}

ul.nav-news-feed li i{
  font-size: 18px;
  margin-right: 15px;
  float: left;
}

ul.nav-news-feed i.icon1{color: #8dc63f;}

ul.nav-news-feed i.icon2{color: #662d91;}

ul.nav-news-feed i.icon3{color: #ee2a7b;}

ul.nav-news-fee i.icon4{color: #f7941e;}

ul.nav-news-fee i.con5{color: #1c75bc;}

ul.nav-news-feed i.icon6{color: #9e1f63;}

/*Chat Block CSS*/

#chat-block{
  margin: 0 0 40px 0;
  text-align: center;
  background:#fff;
  padding-top:20px;
}

#chat-block .title{
  background: #8dc63f;
  padding: 2px 20px;
  width: 70%;
  height: 30px;
  border-radius: 15px;
  position: relative;
  margin: 0 auto 20px;
  color: #fff;
  font-size: 14px;
  font-weight: 600;
}

ul.online-users{
  padding-left: 20px;
  padding-right: 20px;
  text-align: center;
  margin: 0;
}

ul.online-users li{
  list-style: none;
  position: relative;
  margin: 3px auto !important;
  padding-left: 2px;
  padding-right: 2px;
}

ul.online-users li span.online-dot{
  background: linear-gradient(to bottom, rgba(141,198,63, 1), rgba(0,148,68, 1));
  border: none;
  height: 12px;
  width: 12px;
  border-radius: 50%;
  position: absolute;
  bottom: -6px;
  border: 2px solid #fff;
  left: 0;
  right: 0;
  margin: auto;
}

img.profile-photo {
    height: 58px;
    width: 58px;
    border-radius: 50%;
}

ul.online-users {
    padding-left: 20px;
    padding-right: 20px;
    text-align: center;
    margin: 0;
}

.list-inline {
    padding-left: 0;
    margin-left: -5px;
    list-style: none;
}

.list-inline>li {
    display: inline-block;
    padding-right: 5px;
    padding-left: 5px;
}

.text-white {
    color: #fff;
}





</style>




<body>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<%@ include file="header.jsp" %>  
<div class="container">
    <div class="row">
        <div class="col-md-4 static">
            <div class="profile-card">
                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="user" class="profile-photo">
            	<h5><a href="#" class="text-white">${memid} 님 안녕하세요 </a></h5>
            	
            </div><!--profile card ends-->
            <ul class="nav-news-feed">
              <li><i class="fa fa-list-alt icon1"></i><div><a href="#">내 강의</a></div></li>
              <li><i class="fa fa-users icon2"></i><div><a href="modifyForm.do">내 정보 수정</a></div></li>
              <li><i class="fa fa-user icon3"></i><div><a href="deleteForm.do" >회원 탈퇴</a></div></li>
             
           
        </div>
	</div>
</div>
<!-- bootstrap ver4.6 JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
 
</body>
</html>