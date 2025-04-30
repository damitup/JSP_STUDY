<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container {
	display: flex;
	justify-content: start;
	gap: 10px;
	margin-left: 20px;
}

.green {
	background-color: green;
}
.blue {
	background-color: blue;
}
.red {
	background-color: red;
}
.circle2 {
	width: 50px;
	height: 50px;
	
	border-radius: 50%;
	
	display:flex;
	justify-content: center;
	align-items: center;
	font-size: 16px;
	font-weight: bold;
	color: white;
}
</style>
</head>
<body>

<h3> 짝수와 홀수 구분하여 나열 </h3>

<div class = " container">

<%
	for(int i=1; i<=10; i++) {
		String colors;
		
		if(i%2 == 0) {
			out.println("<div class='circle2 blue'>"+ i+"</div>");
		}
		else {
			out.println("<div class='circle2 red'>"+ i+"</div>");
		}
	}
%>
</div>
<h3> 역순으로 나열 </h3>
<div class = "container">

<%
	for(int j = 10; j >=1; j--) {%>
		<div class="circle2 green"><%= j%></div>
	<%}
%>
</div>
</body>
</html>