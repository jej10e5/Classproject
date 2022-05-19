<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>    
<link href="${project}/style_member.css" rel="stylesheet" type="text/css">
<script src="${project}/script.js"></script>

<h2> 회 원 탈 퇴 </h2>

<form name="passwdform" method="post" action="deletePro.do">
	<table>
		<tr>
			<th colspan="2">비밀번호를 확인해주세요</th>
		</tr>
		<tr>
			<th> 비밀번호 </th>
			<td> <input class="input" type="password" name="passwd" maxlength="30" autofocus> </td>
		</tr>
		<tr>
			<th colspan="2">
				<input class="inputbutton" type="submit" value="탈퇴">
				<input class="inputbutton" type="button" value="취소"
								onclick="location='mainForm.do'">
			</th>
		</tr>	
	</table>
</form>
















