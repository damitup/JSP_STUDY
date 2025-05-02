<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 이 페이지는 사용자에게 보이지 않음</h1>
<%

	String id = request.getParameter("userid");
	String pw = request.getParameter("userpw");
	
	// DB 로직, id가 존재하고, 로그인이 가능한지 여부만 파악
	// 비밀번호는 암호화가 원칙
	
	// ID => 존재 여부 파악, True
	String movePage = "loginForm.jsp?sta=1";
	
	if(pw.equals("admin")) {
		movePage = "main.jsp";
	}
	
	response.sendRedirect(movePage);
%>


</body>
</html>