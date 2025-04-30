<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트</title>
</head>
<body>
<h1>HELLO, JSP</h1>
<%-- JSP 주석 사용 방법 --%>

<%-- 선언 --%>
<%!
	int a = 0;
	int b = 0;
	
%>
<%-- 스크립트 --%>
<%
	Date now = new Date();
%>
<%-- 표현식 (태그 안에서도 사용할 수 있음) --%>
<h1> 현재 시간: <%=now %></h1>

<%
	a = 10;
	b = 20;
%>

<h4> 계산 결과: <%=a+b %></h4>
<%-- 출력하고자 할 때 system은 붙이지 않아도 됨 오히려 붙이면 콘솔에 값이 출력됨 --%>
<%out.print(a+b); %>
	<ul>
		<li>JSP 기본 구조 이해하기 </li>
		<li>스크립틀릿(&lt;% %&gt;) 사용하기 </li>
		<li>out 객체를 사용한 출력</li>
		<li>Java 코드와 HTML의 조합</li>
	</ul>
</body>
</html>