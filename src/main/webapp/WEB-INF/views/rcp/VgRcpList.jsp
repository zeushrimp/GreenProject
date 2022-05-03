<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="SocialChef - Social Recipe HTML Template" />
<meta name="description"
	content="SocialChef - Social Recipe HTML Template">
<meta name="author" content="themeenergy.com">

<title>SocialChef</title>

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
				<!-- 				카테고리 및 검색 -->
				<aside class="above-sidebar full-width">
					<div class="RcpCategory">
						<div class="RcpList">
							<ul class="boxed">
								<li><span></span></li>
							</ul>
							<ul class="boxed">
								<li><a href="#"><span>베스트레시피</span></a></li>
								<li><a href="#"><span>추천레시피</span></a></li>
							</ul>
							<ul class="boxed">
								<li><a href="#"><span>프루테리언</span></a></li>
								<li><a href="#"><span>비건</span></a></li>
								<li><a href="#"><span>락토 베지테리언</span></a></li>
								<li><a href="#"><span>오보 베지테리언</span></a></li>
								<li><a href="#"><span>락토 오보 베지테리언</span></a></li>
								<li><a href="#"><span>페스코 베지테리언</span></a></li>
								<li><a href="#"><span>폴로 베지테리언</span></a></li>
								<li><a href="VgRcpList.do"><span>전체</span></a></li>
							</ul>
						</div>
						<div class="RcpSearch">
							<input type="text" placeholder="검색어 입력">
							<button onclick="">검색</button>
							<!-- 온클릭 으로 검색 기능 VgUsrRegst.jsp 참고 -->


						</div>
					</div>
					<!-- 카테고리 및 검색 -->
				</aside>

				<!--content-->
				<section class="content full-width">
					<!--entries-->
					<div class="entries row">
						<!--레시피 상세 조회-->
<!-- 						<form method="get" name="formlist" action="/rcp/VgRcpList"> -->
							<c:forEach items="${RcpViewAll }" var="rcplist">
							
								<div class="entry one-fourth">
									<figure>
										<img src="/resources/images/img.jpg" alt="" />
										<figcaption>
											<a href="VgRcpDtail.do?RCP_PK=${rcplist.RCP_PK}"><i
												class="icon icon-themeenergy_eye2"></i> <span>레시피
													보러가기</span></a>
										</figcaption>
									</figure>
									
									<div class="container">
										<h2>
											<a href="/rcp/VgRcpDtail.do?RCP_PK=${rcplist.RCP_PK }">${rcplist.RCP_TITLE}</a>
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
													<span>조회수 </span><a href="VgRcpDtail.do#comments">${rcplist.RCP_HIT}</a>
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


