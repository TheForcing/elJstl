<%@page import="vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터형</title>
</head>
<body>
	<h1>데이터형</h1>
	<h2>JSP 표현식 사용</h2>
	<%
	//	Attribute 받아오기
	Integer jspIval = (Integer)request.getAttribute("iVal");
	UserVo jspUserVo = (UserVo)request.getAttribute("userVo");
	%>
	<ul>
		<li>정수형:<%= jspIval %></li>
		<li>객체 필드 접근:<%= jspUserVo.getEmail() %></li>
	</ul>
	<!-- servlet에서 넘어온 값들을 표현할때 사용한다. java보다 간결하다 -->
	
	<h2>EL 사용</h2>
	<ul>
		<li>정수형: ${iVal }</li>
		<li>실수형: ${fVal }</li>
		<li>문자형: ${sVal }</li>
		<li>논리형: ${bVal }</li>
		<li>null: ${nullVal }</li>
		<li>객체: ${userVo }</li>
		<li>객체 속성: ${userVo.email }</li>
	</ul>
	<%--
	JSP의 경우 attribute를 받아올 때
	request.getAttribute로 받아서 직접 캐스팅 진행
	EL에서는 특별한 작업 수행이 필요 없이 
	 --%>
	
	
</body>
</html>