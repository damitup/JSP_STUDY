<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	padding: 0;
}

.noto-sans-kr {
	font-family: "Noto Sans KR", sans-serif;
	font-optical-sizing: auto;
	font-weight: 400;
	font-style: normal;
}


.wrapper {
	width: 100%;
	height: 100vh;
	background-color: #ebecf0;
	
	display: flex;
	justify-content: center;
	align-items: center;
}

.outbox {
	width: 400px;
	height: 550px;
	
	margin-top: 90px;
	border-radius: 10px;
	box-shadow: -5px -5px 10px #fff, 5px 5px 10px #babebc;

	position: absolute;

    overflow: hidden;
}
.outbox h2 {
	text-align: center;
	margin-top: 50px;
}
.inbox_1 {
	/* border: 1px solid red; */

	font-size: 17px;
	font-weight: 400;
	
	padding-left: 40px;
	padding-top: 15px;
	padding-bottom: 15px;
}
.line {
	display: inline-block;

	width: 90px;
	padding-bottom: 7px;

}
.inbox_2 {
	/* border: 1px solid blue; */
	
	font-size: 17px;
	
	padding-left: 40px;
	padding-top: 15px;
	padding-bottom: 15px;
	
	
}
</style>

</head>
<%
	request.setCharacterEncoding("UTF-8");
%>
<body>

<%
	String id = request.getParameter("userid");
	String email = request.getParameter("user_email");

	String num = request.getParameter("ssn1");
	String date = request.getParameter("userdate");

	String[] hobbys = request.getParameterValues("like");

	String msg = request.getParameter("message");
%>
	<div class="wrapper">
		<div class="outbox">
			<h2>회원 기본 정보</h2>
			<div class="inbox_1">
				<span class="line">아이디: </span><%=id%><br />
				<span class="line">이메일: </span><%=email%><br />
				
			</div>
			<h2>개인 신상 정보</h2>
			<div class="inbox_2">
				<span class="line">주민번호:  </span><%=num%><br />
				<span class="line">생년월일: </span><%=date%><br /> 
				<span class="line">관심분야:</span>
				<%
					for (int i = 0; i < hobbys.length; i++) {
				%>
					<span><%=hobbys[i]%> </span>
				<% } %>
				<br /> 
				<span class="line">자기소개:</span><%=msg%><br />
				
				<%!Date now = new Date();%>
				<span class="line">가입시간:</span><%=now%>
				
				
			</div>
		</div>
	</div>
</body>
</html>