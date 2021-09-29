<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>객체접근</h1>
	
	<h2>자바문법</h2>
	<% 
	UserVo userVo = (UserVo)request.getAttribute("userVo");
	int num = (int)request.getAttribute("num");
	String str = (String)request.getAttribute("str");
	%>
	name = <%=userVo.getName()%> <br/>
    email = <%=userVo.getEmail() %> <br/>
    password = <%=userVo.getPassword() %> <br/>
	gender = <%=userVo.getGender() %> <br/> 
	
	num = <%=num %> <br/>
	str = <%=str %>	<br/>
	
	
	
	<h2>el</h2>             
	
	<h3>Scope Test 1</h3>
	<ul>
		<!-- 객체의 키가 겹치면 명시적으로 스코프를 지정해 주는 것을 추천 -->
		<li>Request Scope: ${requestScope.userVo.name }</li>
		<li>Session Scope: ${sessionScope.userVoSess.name }</li>
		<li>Application Scope: ${applicationScope.userVoApp.name }</li>
	</ul>    
	
	<h3>Scope Test 2</h3>
	<ul>
		<!-- 각 스코프에 있는 객체의 키가 겹치지 않으면 스코프 생략 가능 -->
		<li>Request Scope: ${userVo.name }</li>
		<li>Session Scope: ${userVoSess.name }</li>
		<li>Application Scope: ${userVoApp.name }</li>
		
	</ul>


	
	
</body>
</html>