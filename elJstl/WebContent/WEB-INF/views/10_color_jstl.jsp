<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- taglib 포함 -->



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>
<body>
	<h3>JSP 스크립틀릿</h3>
	<%
	if( "1".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: red">빨강</span>
	<%
	} else if( "2".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: green">녹색</span>
	<%
	} else if( "3".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: blue">파랑</span>
	<%
	}
	%>
	<h3>JSTL 코드</h3>
	<!-- 조건 분기 -->
	<c:if test="${param.color == 1 }">
		<span style="color: red">빨강</span>
	</c:if>
	<c:if test="${param.color == 2 }">
		<span style="color: green">녹색</span>
	</c:if>
	<c:if test="${param.color == 3 }">
		<span style="color: blue">파랑</span>
	</c:if>



	






</body>
</html>