<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name","page name");
	request.setAttribute("name", "request name");
	session.setAttribute("name", "session name");
	application.setAttribute("name", "application name");
	
	//	우선 순위: page < request < session < application
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>범주우선순위</h1>
	
	<h2>자바문법</h2>
	page name = <%=pageContext.getAttribute("name") %> <br/>
    request name = <%=request.getAttribute("name") %> <br/>
    session name = <%=session.getAttribute("name") %> <br/>
    application name = <%=application.getAttribute("name") %> <br/>
	
	<h2>el</h2>               
	
	<p>name: ${name }</p>    
	<%-- 여러 영역에 같은 이름의 객체가 있을 때, scope 영역을 명시해야 한다 --%>
	<ul>
		<li>page scope: ${pageScope.name }</li>
		<li>request scope: ${requestScope.name }</li>
		<li>session scope: ${sessionScope.name }</li>
		<li>application scope: ${applicationScope.name }</li>
	</ul>
	





	<br/>
	

</body>
</html>