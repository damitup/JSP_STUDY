<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="button" onclick="btn()" value="전송" />
<%
	String name = request.getParameter("name"); 
	String phone =request.getParameter("phone"); 
%>
<script>

const name = <%=name%>
const phone = <%=phone%>

function btn() {
	location.href="./third.jsp?name="+name+"&phone="+phone;
}


</script>
</body>
</html>