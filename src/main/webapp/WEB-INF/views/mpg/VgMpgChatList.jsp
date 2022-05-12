<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vegcipe</title>

<link rel="stylesheet" href="/resources/css/bootstrap.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="/resources/css/Mpg.css" />
<link rel="stylesheet" href="/resources/css/icons.css" />
<link
	href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800"
	rel="stylesheet">
<script src="https://use.fontawesome.com/e808bf9397.js"></script>
<link rel="shortcut icon" href="/resources/images/favicon.ico" />

</head>
<body>
	<!--header-->
	<%@ include file="../../../Header.jsp"%>
	<div style="padding-top: 200px"></div>
	<!--//header-->

	<div
		style="max-width: 1170px; margin: auto; display: flex; border: 10px solid #fffff0; background-color: #fffff0; border-radius: 16px; box-shadow: inset 0 0 8px #e6d2b5;">

		<table style="margin: 0px;">
			<tr>
				<th>아이디</th>
				<th>접속UUID</th>
				<th>연결</th>
			</tr>
			<c:forEach items="${chatList}" var="chat">
				<tr>
					<td>${chat.USR_ID }</td>
					<td>${chat.USR_CHAT_ID }</td>
					<td>
						<form class="admchat" method="post" action="VgMpgChat2.do">
							<!-- 컨트롤러 두개 받아서  -->
							<input type="text" name="USR_CHAT_ID"
								value="${chat.USR_CHAT_ID }" style="display: none;"> <input
								type="text" name="USR_ID" value="${chat.USR_ID }"
								style="display: none;">
							<button>연결</button>
						</form>
					</td>

				</tr>

			</c:forEach>
		</table>
	</div>

	<!--footer-->
	<div style="padding-top: 200px"></div>
	<%@ include file="../../../Footer.jsp"%>
	<!--//footer-->
	<script src="/resources/js/jquery-3.1.0.min.js"></script>
	<script src="/resources/js/jquery.uniform.min.js"></script>
	<script src="/resources/js/jquery.slicknav.min.js"></script>
	<script src="/resources/js/scripts.js"></script>
	<script src="/resources/js/bootstrap.js"></script>
	<script src="/resources/js/Mpg.js"></script>
</body>
</html>