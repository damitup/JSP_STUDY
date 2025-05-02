<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="login.UserVO" %>
<%@ page import="login.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("userId");
	String nickName = request.getParameter("nickname");
	String pw = request.getParameter("password");
	
	UserVO userVO = new UserVO();
	userVO.setUserId(id);
	userVO.setNickname(nickName);
	userVO.setPassword(pw);
	
	UserDAO userDAO = new UserDAO();
	int result = userDAO.register(userVO);
	if(result > 0) {
		response.sendRedirect("login.jsp");
	}
	else {
		response.sendRedirect("register.jsp");
	}
	userDAO.register(userVO);
	
%>
</body>
</html>