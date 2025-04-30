<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% name = name + " 철수"; %>
<%! String name = "짱구"; %>
<% String msg = "HELLO WORLD"; %>


<% msg = msg + " , JSP"; %>
<% int num = 10; %>

<h4>HTML 문서</h4>

<%= msg %>
<%= num %>
<%= name %>
</body>
</html>