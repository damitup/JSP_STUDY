<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="login.UserDAO" %>
<%@ page import="login.UserVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("userId");
	String pw = request.getParameter("password");

	// DAO 연결
	UserDAO userDAO = new UserDAO();
	UserVO userVO =  userDAO.login(name);
	
	String movePage = "login.jsp";
		
	// 일치하지 않으면 로그인페이지로 보냄
	if(userVO != null && userVO.getPassword().equals(pw)) {
		
		// 세션 Session
		// session은 내가 브라우저를 끌 때까지 유지됨
		session.setAttribute("userId", name);
		session.setAttribute("nickname", userVO.getNickname());
		
		movePage = "main.jsp";

	}
	
	
	response.sendRedirect(movePage);
	
	
%>
</body>
</html>