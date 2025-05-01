<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("userid");
    String email = request.getParameter("user_email");
    String num = request.getParameter("ssn1");
    String date = request.getParameter("userdate");
    String[] hobbys = request.getParameterValues("like");
    String msg = request.getParameter("message");

    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String nowStr = sdf.format(new Date());
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>가입 결과</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">

    <style>
        * {
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;
        }

        body {
            margin: 0;
            padding: 0;
            background-color: #ebecf0;
        }

        .wrapper {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .outbox {
            width: 420px;
            background-color: #ffffff;
            border-radius: 15px;
            padding: 30px;
            box-shadow: -5px -5px 10px #fff, 5px 5px 10px #babebc;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #444;
        }

        .info-group {
            margin-bottom: 20px;
            font-size: 16px;
            color: #333;
        }

        .info-group span.label {
            display: inline-block;
            width: 100px;
            font-weight: 600;
            color: #555;
        }

        .time_box {
            display: inline-block;
            padding: 10px 20px;
            border-radius: 20px;
            background-color: #f0f0f0;
            color: #686D76;
            font-weight: bold;
            box-shadow: -5px -5px 10px #fff, 5px 5px 8px #babebc;
            font-size: 15px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="outbox">
            <h2>회원 기본 정보</h2>
            <div class="info-group">
                <span class="label">아이디:</span> <%= id %><br />
                <span class="label">이메일:</span> <%= email != null ? email : "입력되지 않음" %>
            </div>

            <h2>개인 신상 정보</h2>
            <div class="info-group">
                <span class="label">주민번호:</span> <%= num %><br />
                <span class="label">생년월일:</span> <%= date %><br />
                <span class="label">관심분야:</span>
                <%
                    if (hobbys != null) {
                        for (String h : hobbys) {
                %>
                    <span><%= h %> </span>
                <%
                        }
                    } else {
                %>
                    <span>선택 안함</span>
                <%
                    }
                %><br />
                <span class="label">자기소개:</span> <%= msg %><br />
            </div>

            <div class="info-group">
                <span class="time_box">가입시간: <%= nowStr %></span>
            </div>
        </div>
    </div>
</body>
</html>