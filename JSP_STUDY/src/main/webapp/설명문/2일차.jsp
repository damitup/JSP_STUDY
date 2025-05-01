<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> JSP 2일차 </h1>
<%
	String msg = "HELLO WORLD";
%>
<%= msg %>
<h2><%= msg %></h2>
<%
	if(msg.equals("HELLO WORLD")) { %>
		<h1>JAVA IF문 사용 확인</h1>
<% 	} %>

</body>
</html>