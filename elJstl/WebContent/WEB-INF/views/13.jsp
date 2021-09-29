﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="vo.UserVo" %>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<% 
	List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>사용자 리스트(스크립틀릿 코드)</h1>
	
	<table border=1>
		<tr>
			<td>no</td><td>name</td><td>email</td>
		</tr>
	
		<% for(UserVo userVo : userList) { %>
			<tr>
				<td><%=userVo.getNo() %></td><td><%=userVo.getName() %></td><td><%=userVo.getEmail() %></td>
			</tr>
		<% } %>
		
		
	
	</table>
	
	
	
	<br />
	<h1>JSTL 리스트</h1>
	<table border=1>
		<tr>
			<td>no</td>
			<td>name</td>
			<td>email</td>
			<td>status.index</td><td>status.count</td>
		</tr>
	
		<%-- c:forEach --%>
		<c:forEach items="${userList }" var="vo" 
			varStatus="status">
			<tr>
				<td>${vo.no }</td>
				<td>${vo.name }</td>
				<td>${vo.email }</td>
				<td>${status.index }</td>
				<td>${status.count }</td>
			</tr>
		</c:forEach>
		
	</table>
	
</body>
</html>