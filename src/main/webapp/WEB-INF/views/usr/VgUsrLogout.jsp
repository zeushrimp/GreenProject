<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vegcipe</title>
</head>
<body>
<%


 session.invalidate(); // 세션에 있는 데이터들을 다 지우는 작업
 
 // session.removeAttribute("Key") // 특정 키만 제거
 response.sendRedirect("/home/VgMain.do");
%>
</body>
</html>