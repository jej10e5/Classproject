<%@page import="lecture.LectureDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>     
<script src="${project}/script.js"></script>

    
 <c:if test="${rs ne 0}">
	<c:redirect url="reviewForm.do"/>	
</c:if>
    