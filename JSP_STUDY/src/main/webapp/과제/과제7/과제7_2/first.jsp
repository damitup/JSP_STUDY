<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> 정보 입력 </h2>


<form action="./second.jsp">
	이름: <input type="text" name="name" value="<%= request.getParameter("name")%>"/><br/>
	전화번호: <input type="text" name="phone" value="<%= request.getParameter("phone")%>"/><br/>
	<input type="submit" value="전송"/>
	
</form>
</body>
</html>