<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>출발지</h1>
<!--  1번째 방법  -->
<!--  ./result.jsp 이거 상대경로임 -->
<a href = "./result.jsp">다음 페이지</a>


<!--  2번째 방법 -->
<!--  get 방식임 -->
<input type="button" value="javascript 활용" onclick="이동()" />
<script>
	function 이동() {
		location.href = "./result.jsp";
	}
</script>

<!-- 3번째 방법  -->
<!-- get 방식 / 회원가입에는 적절하지 않음 -->
<!-- http://localhost:8080/JSP_STUDY/%ED%8E%98%EC%9D%B4%EC%A7%80%EC%9D%B4%EB%8F%99/result.jsp?user_id=aa&user_pw=bb -->
<!-- &로 값을 2개 보낼 수 있음 -->
<!--  url에 값을 표시하고 싶지 않다면 method="post"로 변경 -->
<form action="./result.jsp" method="post">
	<input type="text" name="user_id" placeholder="아이디 입력"/>
	<input type="password" name="user_pw" placeholder="비밀번호 입력"/>
	
	<!--  req value 결과값이 몇 갠지 -->
	<!--  req / radio  -->
	<h3>라디오 / 국가 선택</h3>
	<input type="radio" name="nat" value="1"/>대한민국
	<input type="radio" name="nat" value="2"/>미국
	<input type="radio" name="nat" value="3"/>영국<br/>
	
	<!--  req / checkbox  -->
	<input type="checkbox" name="hobbys" value="수영"/>수영
	<input type="checkbox" name="hobbys" value="달리기"/>달리기
	<input type="checkbox" name="hobbys" value="독서"/>독서
	
	<input type="submit" value="전송"/>
</form>

<!-- http://localhost:8080/JSP_STUDY/req/result.jsp?user_id=a  -->

</body>
</html>