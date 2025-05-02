<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>newlogin</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap"
        rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0px;
            padding: 0px;
        }

        .noto-sans-kr {
            font-family: "Noto Sans KR", sans-serif;
            font-optical-sizing: auto;
            font-weight: 400;
            font-style: normal;
        }

        .montserrat {
            font-family: "Montserrat", sans-serif;
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

        .container {
            width: 400px;
            height: 500px;

            border-radius: 10px;
            box-shadow: -5px -5px 10px #fff, 5px 5px 10px #babebc;
            position: absolute;

            overflow: hidden;
        }

        h1 {
            text-align: center;

        }

        div #log_in {
            padding-top: 40px;
        }

        .out_box {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .input_btn {
            margin-top: 20px;
            margin-bottom: 40px;
        }

        .input_btn input[type="text"] {

            border-radius: 20px;
            border: none;
            outline: none;

            font-size: 12px;
            font-weight: bold;

            padding: 15px 45px;
            margin: 14px;
            letter-spacing: 1px;
            text-transform: uppercase;
            box-shadow: -5px -5px 10px #fff, 5px 5px 8px #babebc;

            cursor: pointer;

        }

        .log_btn input[type="button"] {
            border-radius: 20px;
            border: none;
            outline: none;

            font-size: 12px;
            font-weight: bold;

            padding: 15px 45px;
            margin: 10px;
            letter-spacing: 1px;
            text-transform: uppercase;
            box-shadow: -5px -5px 10px #fff, 5px 5px 8px #babebc;

            cursor: pointer;
        }
    </style>
</head>

<body>
	<div class="wrapper">
        <div class="container">
            <div>
                <h1 id="log_in">로그인</h1>
            </div>
			<form>
				<div class="out_box">
					<div class="input_btn">
						<input type="text" name="userid" placeholder="ID" /><br /> <input
							type="text" name="userpw" placeholder="PW" />
					</div>
					<div class="log_btn">
						<input type="button" value="LOGIN" onclick="loginMove()" />
					</div>
					<div class="log_btn" onclick="joinMove()">
						<input type="button" value="JOIN" />
					</div>
				</div>
			</form>
		</div>

    </div>

</body>
</html>