<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<c:forEach items="${vegcipe}" var="rcpvo">
		<div class="entry one-third">
			<figure>
				<img src="data:image/gif;base64,${rcpvo.RCP_IMG}"
					onerror="this.src='/resources/images/img.jpg'" />
				<figcaption>
					<a href="/rcp/VgRcpDtail.do?RCP_PK=${rcpvo.RCP_PK}"><i
						class="icon icon-themeenergy_eye2"></i> <span>View recipe</span></a>
				</figcaption>
			</figure>
			<div class="container">
				<h2>
					<a href="/rcp/VgRcpDtail.do?RCP_PK=${rcpvo.RCP_PK}"> <c:choose>
							<c:when test="${fn:length(rcpvo.RCP_TITLE) > 12}">
								<c:out value="${fn:substring(rcpvo.RCP_TITLE,0,11)}" />.... </c:when>
							<c:otherwise>
								<c:out value="${rcpvo.RCP_TITLE}" />
							</c:otherwise>
						</c:choose>
					</a>
				</h2>
				<div class="actions">
					<div>
						<div class="difficulty">
							<i class="ico i-medium"></i><a href="#">${rcpvo.RCP_HIT}</a>
						</div>
						<div class="likes">
							<i class="fa fa-heart"></i><a href="#">${rcpvo.RCP_LIKE}</a>
						</div>
						<div class="comments">
							<i class="fa fa-comment"></i><a href="VgRcpDtail.jsp#comments">${rcpvo.RCP_COM}</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>


</body>
</html>