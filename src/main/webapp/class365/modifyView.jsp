<%@page import="java.text.SimpleDateFormat"%>
<%@page import="lecmem.LecmemDataBean"%>
<%@page import="lecture.LectureDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>    


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="setting.jsp"%> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <link href="${project}/style.css" rel="stylesheet" type="text/css">
 <link href="${project}/login_style.css" rel="stylesheet" type="text/css">  
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<body>
<jsp:include page="header.jsp"/>









<h2> ${page_modify} </h2>

<c:if test="${result eq 0}">
	<script type="text/javascript">
		<!--
		erroralert( passwderror )
		//-->
	</script>
</c:if>
<c:if test="${result ne 0}">	
	<form name="modifyform" method="post" action="modifyPro.do"
		onsubmit="return modifycheck()">
		<table>
			<tr>
				<th colspan="2"> 수정할 정보를 입력하세요 </th>
			</tr>
			<tr>
				<th> 아이디 </th>	
				<td> &nbsp;${dto.id} </td>				
			</tr>
			<tr>
				<th rowspan="2"> 비밀번호 </th>
				<td>
					<input class="input" type="password" name="passwd" maxlength="20"
						value="${dto.passwd}"> 
				</td>
			</tr>
			<tr>
				<td>
					<input class="input" type="password" name="repasswd" maxlength="20"
						value="${dto.passwd}">
				</td>
			</tr>
			<tr>
				<th> 이메일 </th>	
				<td>
					<input class="input" type="email" name="email" maxlength="20"
						value="${dto.email}"> 
				</td>			
			</tr>
			<tr>
				<th> 전화번호 </th>	
				<td>
					<input class="input" type="text" name="tel" maxlength="20"
						value="${dto.tel}"> 
				</td>				
			</tr>
			<tr>
				<th colspan="2">
					<input class="inputbutton" type="submit" value="수정">
					<input class="inputbutton" type="button" value="수정취소"
						onclick="location='mainForm.do'">
				</th>
			</tr>			
		</table>		
	</form>		
</c:if>


</body>
</html>











