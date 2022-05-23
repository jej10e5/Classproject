<%@page import="java.text.SimpleDateFormat"%>
<%@page import="lecmem.LecmemDataBean"%>
<%@page import="lecture.LectureDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>    
 <link href="${project}/style.css" rel="stylesheet" type="text/css">
<script src="${project}/script.js"></script>

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
				<td> &nbsp;${dto.email} </td>				
			</tr>
			<tr>
				<th> 전화번호 </th>	
				<td> &nbsp;${dto.tel} </td>				
			</tr>
			<tr>
				<th colspan="2">
					<input class="inputbutton" type="submit" value="수정">
					<input class="inputbutton" type="reset" value="탈퇴">
					<input class="inputbutton" type="button" value="수정취소"
						onclick="location='main.do'">
				</th>
			</tr>			
		</table>		
	</form>		
</c:if>













