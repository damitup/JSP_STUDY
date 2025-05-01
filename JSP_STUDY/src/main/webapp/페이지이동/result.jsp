<%@page import="javax.print.DocFlavor.STRING"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 한글 깨짐 방지, get방식 처리 방법  -->
<%
    request.setCharacterEncoding("UTF-8");
%>

<body>
<h1> 도착지 </h1>
<h2> result 페이지</h2>



<%
	String id = request.getParameter("user_id");
%>

<%-- <%
	String tx = request.getParameter("user_te");
%>
<%=tx %> --%>

<%-- input 받기 --%>
ID: <%=id %> <br />

<%-- radio 받기 --%>
국가: <%=request.getParameter("nat") %> <br />

<%-- checkbox 받기 --%>
취미:
<%
	String[] hobbys = request.getParameterValues("hobbys");
	for (int i = 0; i < hobbys.length; i++) { 
%>
		<span><%=hobbys[i] %> </span>
	<%}
%>
</body>
</html>