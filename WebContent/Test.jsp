<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.time.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트페이지</title>
</head>
<body>
	
	오늘날짜: <%= LocalDate.now() %> <br>
	현재시간: <%= LocalTime.now() %>
	
</body>
</html>