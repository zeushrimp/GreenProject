<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="SocialChef - Social Recipe HTML Template" />
<meta name="description"
	content="SocialChef - Social Recipe HTML Template">
<meta name="author" content="themeenergy.com">

<title>Vegcipe</title>

<!-- <link rel="stylesheet" href="../../../resources/css/styleHeader.css" /> -->
<!-- <link rel="stylesheet" href="../../../resources/css/styleFooter.css" /> -->
<link rel="stylesheet" href="../../../resources/css/style.css" />
<link rel="stylesheet" href="../../../resources/css/styleRcp.css" />
<link rel="stylesheet" href="../../../resources/css/icons.css" />
<link
	href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800"
	rel="stylesheet">
<script src="https://use.fontawesome.com/e808bf9397.js"></script>

<link rel="shortcut icon" href="../../../resources/images/favicon.ico" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.resources/js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<script type="text/javascript">
	window.onload = function() {
		var vidNum = "/resources/videos/mainvideo"
				+ (Math.floor(Math.random() * 30) + 1) + ".mp4";
		var objVid = document.getElementById("introVid");
		objVid.setAttribute("src", vidNum);
		slideShow();
	}
</script>
<body>
	<!--preloader-->
	<div class="preloader">
		<div class="spinner"></div>
	</div>
	<!--//preloader-->

	<!--header-->
	<%@ include file="../../../Header.jsp"%>
	<div style="padding-top: 200px" />
	<!--//header-->

	<!--main-->
	<main class="main" role="main">
		<!--wrap-->
		<div class="wrap clearfix">
			<!--breadcrumbs-->
			<nav class="breadcrumbs">
				<ul>
					<li><a href="/VgMain.jsp" title="Home">메인</a></li>
					<li>레시피</li>
				</ul>
			</nav>
			<!--//breadcrumbs-->

			<!--row-->
			<div class="row">
				<header class="s-title"> </header>
				<div
					style="max-width: 1170px; margin: auto; display: flex; border: 20px solid #fffff0; background-color: #fffff0; border-radius: 16px; box-shadow: inset 0 0 8px #e6d2b5;">
					<div style="width: 60%;">
						<video id="introVid" muted autoplay loop class="mainvideo"></video>
					</div>
					<div
						style="width: 40%; font-family: 'Noto Sans KR', sans-serif; padding: 15px 20px 0px 45px; text-align: left;">
						<h2 style="font-weight: 700;">Green Project</h2>
						<div
							style="font-weight: bold; font-size: larger; color: #239961; padding-bottom: 15px;">VEGCIPE</div>

						<div>
							<b>이렇게 저희는 AI Vegcipe 구현에 성공했습니다.</b>
						</div>
						<br>



						<div>강석우 김나미 김수지 신재우 장수완</div>
						<div>4조였습니다.</div>
						<br>

						<div>
							<b>다들 고생하셨습니다.</b>
						</div>


						<div>화이팅!</div>
						<div style="display: inline-block;">다들 모두 행복한 취업되세요!</div>

					</div>
				</div>
				<div style="margin-bottom: 100px;"></div>
				<header class="s-title">
					<h2 class="ribbon bright">AI 추천 레시피</h2>
				</header>
				<!--content-->
				<section class="content full-width">
					<!--entries-->
					<div class="entries row">
						<!--레시피 상세 조회-->
						<!-- 						<form method="get" name="formlist" action="/rcp/VgRcpList"> -->
						<c:forEach items="${vegcipe}" var="rcplist">

							<div class="entry one-fourth">
								<figure>
									<img src="data:image/gif;base64,${rcplist.RCP_IMG }"
										style="width: 270px !important; height: 203px !important;"
										onerror="this.src='/resources/images/rcp_default.png'" />
									<figcaption>
										<a href="/rcp/VgRcpDtail.do?RCP_PK=${rcplist.RCP_PK}"><i
											class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a>
									</figcaption>
								</figure>

								<div class="container">
									<h2>
										<a href="/rcp/VgRcpDtail.do?RCP_PK=${rcplist.RCP_PK }"> <c:choose>
												<c:when test="${fn:length(rcplist.RCP_TITLE) > 13}">
													<c:out value="${fn:substring(rcplist.RCP_TITLE,0,12)}" />.... </c:when>
												<c:otherwise>
													<c:out value="${rcplist.RCP_TITLE}" />
												</c:otherwise>
											</c:choose>

										</a>
									</h2>

									<div class="actions">
										<div>
											<div class="writer"
												style="width: 200px; border-right: none !important;">
												<span>아이디 </span><a href="#">${rcplist.USR_ID}</a>
											</div>
											<div class="likes">
												<span>좋아요 </span><a href="#">${rcplist.RCP_LIKE}</a>
											</div>
											<div class="comments">
												<span>조회수 </span><a href="/rcp/VgRcpDtail.do#comments">${rcplist.RCP_HIT}</a>
											</div>
										</div>
									</div>
								</div>
							</div>

						</c:forEach>
						<!-- /레시피 상세 조회 -->

						<!-- 레시피 리스트 버튼 링크 -->
						<div class="pager">
							<c:if test="${paging.startPage != 1 }">
								<a
									href="VgRcpList.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
							</c:if>
							<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
								var="pagenum">
								<c:choose>
									<c:when test="${pagenum == paging.nowPage }">
										<a class="current">${pagenum }</a>
									</c:when>
									<c:when test="${pagenum != paging.nowPage }">
										<a
											href="VgRcpList.do?nowPage=${pagenum }&cntPerPage=${paging.cntPerPage}"
											class="paging_num">${pagenum }</a>
									</c:when>
								</c:choose>
							</c:forEach>
							<c:if test="${paging.endPage != paging.lastPage}">
								<a
									href="VgRcpList.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
							</c:if>
						</div>
						<!-- 						</form> -->
					</div>
					<!--//entries-->
				</section>
				<!--//content-->
			</div>
			<!--//row-->
		</div>
		<!--//wrap-->
	</main>
	<!--//main-->

	<!--footer-->
	<%@ include file="../../../Footer.jsp"%>
	<!--//footer-->
	<script src="/resources/js/jquery-3.1.0.min.js"></script>
	<script src="/resources/js/jquery.uniform.min.js"></script>
	<script src="/resources/js/jquery.slicknav.min.js"></script>
	<script src="/resources/js/scripts.js"></script>
</body>
</html>


