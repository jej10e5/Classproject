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

<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<table>
		<tr>
		<th>수강생아이디</th>
		<th>수강생전화번호</th>
		<th>수강생이메일</th>
		</tr>
	<c:forEach var="dto" items="${dtos}">
		<tr>
			<th>${dto.id}</th>
			<th>${dto.tel}</th>
			<th>${dto.email}</th>
		</tr>
	</c:forEach>
	</table>	

</body>
</html>