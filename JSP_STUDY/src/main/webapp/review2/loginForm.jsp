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
	String sta = request.getParameter("sta");
	
	if(sta != null) {
%>		
	<script>
		alert('로그인이 실패 되었습니다.');
	</script>
	<%
	}
%>


<form action="loginProcess.jsp">
	<input type="text" name="userid" placeholder="아이디 입력"/>
	<input type="password" name="userpw" placeholder="비밀번호 입력"/>
	<input type="submit" value="로그인" />
</form>
</body>
</html>