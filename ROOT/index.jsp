<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>통합 페이지2</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fc;
        }

        .navbar {
            background-color: #4CAF50;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-around;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
            padding: 8px 15px;
            border-radius: 5px;
        }

        .navbar a:hover {
            background-color: #45a049;
        }

        .iframe-container {
            width: 100%;
            height: calc(100vh - 50px); /* 상단 네비게이션 높이를 제외한 화면 */
            border: none;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        iframe {
            width: 100%;
            height: 100%;
            border: none;
        }
    </style>
</head>
<body>

<div class="navbar">
    <!-- 네비게이션 버튼 -->
    <a href="http://route-login-app.apps.ocp.komsco.co.kr/login.jsp" target="contentFrame">로그인 페이지</a>
    <a href="http://route-board-app.apps.ocp.komsco.co.kr/board.jsp" target="contentFrame">게시판</a>
    <a href="http://route-search-app.apps.ocp.komsco.co.kr/search.jsp" target="contentFrame">검색 페이지</a>
</div>

<div class="iframe-container">
    <!-- iFrame 영역 -->
    <iframe name="contentFrame" src="http://route-login-app.apps.ocp.komsco.co.kr/login.jsp"></iframe>
</div>



</body>
</html>
