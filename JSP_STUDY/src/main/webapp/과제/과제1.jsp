<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	int a = 15;
	int b = 10;
	
%>

<%
	if(a > b) {
		out.println(a+"가 "+b+"보다 큽니다.<br />");
		}
	else {
		out.println(a+"가 "+b+"보다 큽니다.<br />");
	}
%>

<%
	if(a %2 == 0) {
		out.println(a+"는 짝수입니다.<br />");
	}
	else {
		out.println(a+"는 홀수입니다.<br />");
	}
%>

<%
	if(b %2 == 0) {
		out.println(b+"는 짝수입니다.<br />");
	}
	else {
		out.println(b+"는 홀수입니다.<br />");
	}
%>

</body>
</html>