<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {

	background-color: #F1E7E7;
	
	display: flex;
	justify-content: center;
	align-items: center;
}
.outbox {
	width: 300px;
	height: 400px;
	
	border: 1px solid red;
}
.outbox h2 {
	text-align: center;
}
</style>
</head>
<body>
<div class = outbox>
<h2>계산 결과</h2>
<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String opr = request.getParameter("operator");
	
	
	int num_1 = Integer.parseInt(num1);
	int num_2 = Integer.parseInt(num2);
	
	int result = 0;
	String oprST = "";
	
switch (opr) {
	case "1" :
		result = num_1 + num_2;
		oprST = "더하기";
		break;
	case "2" :
		result = num_1 - num_2;
		oprST = "빼기";
		break;
	case "3" :
		result = num_1 * num_2;
		oprST = "곱하기";
		break;
	case "4" :
		result = num_1 / num_2;
		oprST = "나누기";
		break;
}
%>
<div>첫번째 숫자: <%=num_1 %></div>
<%

out.println("첫번째 숫자: "+num_1);
out.println("<br/>두번째 숫자: "+num_2);
out.println("<br/>선택한 연산: "+oprST);
out.println("<br/>결과: "+ result); 

%>

</div>



</body>
</html>