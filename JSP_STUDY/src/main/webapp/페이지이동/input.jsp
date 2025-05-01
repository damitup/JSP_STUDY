<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  자바스크립트로만 링크르 이동할 수 있는게 아니고 a링크로도 이동이 가능하다 -->
<a href="./result.jsp?user_id=hello">페이지 이동</a>

<input type="button" value="링크" onclick="이동()" />
<script>
	function 이동() {
		location.href = "./result.jsp?user_te=world";
	}
</script>
</body>
</html>