<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String result = request.getParameter("num"); %>
<%= result %>

<!--  form으로 보내는 방법 -->
<!--  method 따로 설정하지 않으면 get방식으로 전송 됨 -->
<form action="도착.jsp">
	<input type="text" name="txt"/>
	<input type="submit" name="sub" value="전송"/>
</form>

<!--  a링크로 보내는 방법 -->
<a href="./도착.jsp?txt=000">도착페이지</a>


<input type="button" onclick="다음페이지()" value="다음페이지" />

	<script>
	
		function 다음페이지() {
			location.href='./도착.jsp?txt=0123';
		}
	</script>
</body>
</html>