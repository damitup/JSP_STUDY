<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.title {
		color: red;
	}
</style>
</head>
<body>
<h1>IF문</h1>
<%
	if(true) {%>
		<h3>HELLO WORLD</h3>
		<span>JAVA하고 HTML 같이 사용하기</span>
	<%} 
%>
<% 
	if(false) {%>
		<h3>HELLO WORLD</h3>
		<span>JAVA하고 HTML 같이 사용하기</span>
	<%}	%>
	
<%
	int cnt = 100;

	if(cnt <= 100) {
		out.println("<h1 class='title'>HTML</h1><br/>");
	%>
	<span>마음대로 사용해보기</span><br/>
	<%}
%>

<%
	String language = "java";

	if(language.equals("java")) {
		out.println("string은 equals");
	%>
	<span>두 개의 값은 같다</span>
	
	<%}
%>
</body>
</html>