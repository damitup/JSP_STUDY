<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String msg = request.getParameter("msg");
	
	if(msg.equals("1")) {%>
		<script>
			alert('회원가입 실패');
		</script>
<% 	} else if(msg.equals("2")) { %>
		<script>
			alert('회원가입 성공');
		</script>
<%	} %>		
	
<h1>result2</h1>
</body>
</html>