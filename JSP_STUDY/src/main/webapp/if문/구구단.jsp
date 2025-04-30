<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 만들기</title>
<style>
	.container {
		display: flex;
		justify-content: start;
		align-items: center;
		text-align: center;
	}
	.title {
		font-size: 30px;
		font-weight: blod;
		
		margin-top: 10px;
		margin-bottom: 5px;
	}
	.box {
		width: 150px;
		height: 330px;
		
		margin: 10px;
		
		border: 1px solid #DFD0B8;
		border-radius: 20px;
		background-color: #FAF6E9;
		
	}
	.detail {
		margin-bottom: 5px;
		margin-left: 40px;
		
		text-align: left;
		font-size: 16px;
	}
</style>
</head>
<body>
<h1>구구단</h1>
<div class="container">


<% 
	for(int i = 2; i <= 9; i++) {
%>
	<div class="box">
		<div class="title"><%=i %>단</div>
<% 
	for(int j = 1; j <= 9; j++){
%>	
	<div class="detail"><%=i %> x <%=j %> = <%= (i*j) %> </div>

	<% } %>
	</div>
<% } %>
</div>
</body>
</html>