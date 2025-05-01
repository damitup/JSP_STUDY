<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
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
            font-weight: 600;
            font-style: normal;
        }

        .wrapper {
            width: 100%;
            height: 150vh;
            background-color: #ebecf0;

            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            width: 400px;
            height: 900px;


            border-radius: 10px;
            box-shadow: -5px -5px 10px #fff, 5px 5px 10px #babebc;
            position: absolute;

            overflow: hidden;


        }

        h1 {
            text-align: center;
        }

        .sign-in-container {
            display: flex;
            flex-direction: column;
            align-items: center;

            padding: 20px;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[type="date"] {

            width: 70%;
            margin-bottom: 10px;
            padding: 8px;
            /* border: 1px solid #ccc; */
            border: 1px solid rgba(204, 204, 204, 0.7);
            border-radius: 20px;
            box-shadow: 5px 5px 10px #babebc;
        }

        textarea {
            width: 100%;
            margin-bottom: 10px;
            padding: 8px;
            /* border: 1px solid #ccc; */
            border: 1px solid rgba(204, 204, 204, 0.7);
            border-radius: 20px;
            box-shadow: 5px 5px 10px #babebc;
        }

        .container .sign-in-container .check_box {
            display: flex;
            flex-wrap: wrap;
        }

        .container .sign-in-container .check_box div {
            width: 80px;
        }

        /* 관심분야, 체크박스 */
        .container .sign-in-container .check_box div input[type="checkbox"] {
            width: 20px;
        }

        label {
            white-space: nowrap;
        }

        table {
            width: 100%;
            margin-bottom: 20px;
            border-spacing: 10px;
        }

        td {
            padding: 5px;
            vertical-align: middle;
        }

        /* 중요도 표시 */
        .star::before {
            content: '*';
            color: red;
        }

        .form_btn {

            width: 250px;
            height: 40px;

            display: block;
            margin: auto;

            border: 1px solid #ccc;
            border-radius: 20px;
            border: none;
            outline: none;

            font-size: 18px;
            font-weight: bold;
            color: #686D76;
            box-shadow: -5px -5px 10px #fff, 5px 5px 8px #babebc;
            /* box-shadow: inset 7px 2px 10px #babebc, inset -5px -5px 12px #fff; */

            cursor: pointer;

        }

        #add_btn {
            border: 1px solid #ccc;

            margin-left: 15px;

        }
    </style>
</head>

<body>
    <div class="wrapper">
        <div class="container">
            <div class="sign-in-container">
                <form id="signForm" action="./과제4_1.jsp" method="post">
                    <h1 id="sign-in">회원가입</h1>

                    <table>
                        <tr>
                            <td><label class="star">아이디</label></td>
                            <td><input type="text" name="userid" id="userid" placeholder="ID"></td>
                        </tr>

                        <tr>
                            <td><label>비밀번호</label></td>
                            <td><input type="password" name="userpw" id="userpw" placeholder="PW" /></td>
                        </tr>

                        <tr>
                            <td><label>비밀번호 확인</label></td>
                            <td><input type="password" name="userpw_check" id="userpw_check" placeholder="PW Check" />
                            </td>
                        </tr>

                        <tr>
                            <td><label>이메일</label></td>
                            <td><input type="email" id="user_email" name="user_email" placeholder="Email"></td>
                        </tr>

                        <tr>
                            <td><label>주민번호</label></td>
                            <td>
                                <input type="text" name="ssn1" id="ssn1" maxlength="6" placeholder="앞 6자리"
                                    style="width: 45%; display: inline-block;" />
                                <span>-</span>
                                <input type="password" name="ssn2" id="ssn2" maxlength="7" placeholder="뒤 7자리"
                                    style="width: 45%; display: inline-block;" />
                            </td>
                        </tr>

                        <tr>
                            <td><label>생년월일</label></td>
                            <td>
                                <input type="date" id="userdate" name="userdate">
                                <input type="button" value="적용" onclick="적용()" />
                            </td>
                        </tr>

                        <tr>
                            <td><label>주소</label></td>
                            <td>
                                <input type="text" id="postcode" placeholder="우편번호" readonly
                                    style="width: 45%; display: inline-block;" />
                                <button type="button" id="add_btn" onclick="sample6_execDaumPostcode()">주소
                                    검색</button><br>
                                <input type="text" id="roadAddress" placeholder="도로명 주소" readonly
                                    style="width: 100%; margin-top: 5px;" />
                                <input type="text" id="detailAddress" placeholder="상세 주소 입력"
                                    style="width: 100%; margin-top: 5px;" />
                            </td>
                        </tr>


                        <tr>
                            <td>관심분야</td>


                            <td>
                                <input type="checkbox" name="like" value="여행" />
                                <label>여행</label>

                                <input type="checkbox" name="like" value="쇼핑" />
                                <label>쇼핑</label>
                                <br />
                                <input type="checkbox" name="like" value="독서" />
                                <label>독서</label>

                                <input type="checkbox" name="like" value="등산" />
                                <label>등산</label>
                            </td>

                        </tr>

                        <tr>
                            <td>자기소개</td>


                            <td>
                                <textarea name="message" rows="3" maxlength="200"></textarea><br />
                            </td>
                        </tr>

                    </table>
                    <button type="submit" class="form_btn">JOIN</button>

                </form>

            </div>

        </div>

    </div>
    <script>
        const userNum1 = document.getElementById('ssn1');
        const userNum2 = document.getElementById('ssn2');
        const userDate = document.getElementById('userdate');


        function 적용() {
            let birthdayYear = '';
            let birthdayArr = [];


            if (userNum2.value[0] == 1 || userNum2.value[0] == 2) {
                birthdayYear = '19';
            } else if (userNum2.value[0] == 3 || userNum2.value[0] == 4) {
                birthdayYear = '20';
            } else {
                return alert('주민등록번호가 유효하지 않습니다!');
            }


            birthdayArr[0] = '' + birthdayYear + userNum1.value[0] + userNum1.value[1];
            birthdayArr[1] = '' + userNum1.value[2] + userNum1.value[3];
            birthdayArr[2] = '' + userNum1.value[4] + userNum1.value[5];



            userDate.value = birthdayArr.join('-');

        }


    </script>


    <script>

        document.getElementById('signForm').addEventListener("submit", function (e) {

            const userId = document.getElementById('userid');
            const userPw = document.getElementById('userpw');
            const userPwC = document.getElementById('userpw_check');
            const userEmail = document.getElementById('user_email');
            const userDetailAdr = document.getElementById('detailAddress');
            const userNum1 = document.getElementById('ssn1');
            const userNum2 = document.getElementById('ssn2');
            const userDate = document.getElementById('userdate');
            const postCode = document.getElementById('postcode');

            const roadAddres = document.getElementById('roadAddress');
            const detailAddres = document.getElementById('detailAddress');

            const checkedElements = document.querySelectorAll('input[name="like"]:checked');
            const checkedValues = [];

            

            // // for문으로 돌면서 value 값을 배열에 추가
            // for (let i = 0; i < checkedElements.length; i++) {
            //     console.log(checkedElements[i].value);
            // }

            checkedElements.forEach(function(el) {
                console.log(el);
            });


            // 아이디 검사
            const useridPattern = /^[a-zA-Z0-9]{4,12}$/;

            if (!useridPattern.test(userId.value)) {
                alert("아이디를 입력하세요");
                userId.focus();
                e.preventDefault();
                return;
            }

            // 비밀번호 검사
            const userpwPattern = /^[a-zA-Z0-9]{4,12}$/;

            if (!userpwPattern.test(userPw.value)) {
                alert("비밀번호를 입력하세요");
                userPw.focus();
                e.preventDefault();
                return;
            }

            // 비밀번호 확인
            if (userPw.value !== userPwC.value) {
                alert("비밀번호가 일치하지 않습니다");
                userPwC.focus();
                e.preventDefault();
                return;
            }

            // 이메일 확인
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            if (!emailPattern.test(userEmail.value)) {
                alert("유효하지 않은 이메일입니다");
                userEmail.focus();
                e.preventDefault();
                return;
            }

            // 주민번호 빈칸 확인

            if (userNum1.value === "" || userNum1.value.length != 6) {
                alert("주민번호를 입력하세요");
                userNum1.focus();
                e.preventDefault();
                return;
            }


            if (userNum2.value === "" || userNum2.value.length != 7) {
                alert("주민번호를 입력하세요");
                userNum2.focus();
                e.preventDefault();
                return;
            }

            // 생년월일 미입력 확인

            if (userDate.value === "") {
                alert("생년월일을 입력하세요");
                userDate.focus();
                e.preventDefault();
                return;
            }

            // 상세주소 빈칸 확인

            if (userDetailAdr.value === "") {
                alert("상세주소를 입력하세요");
                userDetailAdr.focus();
                e.preventDefault();
                return;
            }





        })




    </script>

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function (data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if (data.userSelectedType === 'R') {
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if (data.buildingName !== '' && data.apartment === 'Y') {
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if (extraAddr !== '') {
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("roadAddress").value = extraAddr;

                    } else {
                        document.getElementById("roadAddress").value = '';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('postcode').value = data.zonecode;
                    document.getElementById("roadAddress").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("detailAddress").focus();
                }
            }).open();
        }


    </script>

</body>

</html>
