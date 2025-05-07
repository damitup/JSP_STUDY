<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Template</title>

<style>
	.template-container {
		display: flex;
	}
	
	.template-container nav {
		width: 30%;
	}

	.template-container main {
		width: 70%;
	}
</style>
</head>
<body>
<%

	String movePage = request.getParameter("movePage");
	if (movePage == null) {
		
		movePage = "main";
	}
%>


<div class="template-container">
<nav>
	<jsp:include page="left.jsp"/>
</nav>
<main>
	<jsp:include page='<%=movePage+".jsp" %>'/>
</main>


</div>
</body>
</html>