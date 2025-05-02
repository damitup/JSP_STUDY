<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>MAIN</h1>
<%
	String nickname = (String) session.getAttribute("nickname"); 
	if(nickname == null) {
		// main링크로 다이렉트로 진입하려는걸 막아주는 거임
		// 로그인 페이지로 돌아가게끔
		response.sendRedirect("login.jsp");
	}
%>
<%=nickname %>
</body>
</html>