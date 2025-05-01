<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinprocess</title>
</head>
<body>
<%


String movePage = "result2.jsp?msg=실패";


        try {

            String url = "jdbc:mysql://localhost:3306/mydb?serverTimezone=UTC";
            String user = "root";
            String pw = "1234";
            Connection conn = DriverManager.getConnection(url, user, pw);

            System.out.println("123");

            //연결 실패 시, 다시 재 연결
            if(conn == null || conn.isClosed()) {
                conn = DriverManager.getConnection(url, user, pw);
                System.out.println("체크");
            }
            
            String sql = "insert into TB_NUM (NUM1, NUM2) values (1,2)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            String num1 = request.getParameter("num1");
            String num2 = request.getParameter("num2");
            
            int result = pstmt.executeUpdate();
            
            if(result == 0) {
            	movePage="result2.jsp?msg=실패";
            }
            else {
            	movePage="result2.jsp?msg=성공";
            }
            
            System.out.println(num1);
            System.out.println(num2);
            
        } catch (Exception e) {
        	e.printStackTrace();

		}
        response.sendRedirect("result2.jsp");
%>
</body>
</html>