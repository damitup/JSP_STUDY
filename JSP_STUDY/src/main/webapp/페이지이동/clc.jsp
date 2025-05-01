<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="./clc2.jsp">
	<input type="text" name="num1" placeholder="첫번째 수"/>
	<input type="text" name="num2" placeholder="두번째 수"/>
	
	<span>기능</span>
	<select name="operator">
		<option value="1">더하기</option>
		<option value="2">빼기</option>
		<option value="3">곱하기</option>
		<option value="4">나누기</option>
	</select>

	<input type="submit" value="전송"/> 
</form>



</body>
</html>