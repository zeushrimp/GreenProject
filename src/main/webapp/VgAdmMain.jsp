<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <!--header-->
    <%@ include file="resources/Header.jsp" %> 
    <!--//header-->

<h1>관리자 페이지입니다.</h1>
<a href="VgAdmEdtMi.jsp">VgAdmEdtMi로 이동(회원정보변경 모달 페이지)</a><br>
<a href="VgAdmEdtMs.jsp">VgAdmEdtMs로 이동(주문상태변경 모달 페이지)</a><br>
<a href="VgMktDtail.jsp">VgMktDtail로 이동(마켓상세정보 페이지)</a><br>
<a href="VgRcpDtail.jsp">VgRcpDtail로 이동(레시피상세정보 페이지)</a><br>
<a href="VgCmuDtail.jsp">VgCmuDtail로 이동(커뮤니티상세정보 페이지)</a><br>
<a href="VgMktRegst.jsp">VgMktRegst 이동(마켓등록 페이지)</a><br>
<a href="VgRcpRegst.jsp">VgRcpRegst로 이동(레시피등록 페이지)</a><br>
<a href="VgCmuRegst.jsp">VgCmuRegst로 이동(커뮤니티등록 페이지)</a><br>
<a href="Vgbot.jsp">Vgbot로 이동(상담 페이지)</a><br>

    <!--footer-->
    <%@ include file="resources/Footer.jsp" %>
    <!--//footer-->
    
</body>
</html>