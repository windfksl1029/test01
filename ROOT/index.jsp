<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <TITLE>Session Clustering Test</TITLE>
</head>
<body>
<h1>Session Clustering Test</h1>
<h2 style="font-size: 48px; color: red; text-align: center;">고생하셨습니다!</h2>

<%
    // 서버 호스트 이름 가져오기
    String hostname = java.net.InetAddress.getLocalHost().getHostName();
%>

Hostname: <b><%= hostname %></b><p>

</body>
</html>
