<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="SocialChef - Social Recipe HTML Template" />
	<meta name="description" content="SocialChef - Social Recipe HTML Template">
	<meta name="author" content="themeenergy.com">
	
	<title>SocialChef</title>
	
	<link rel="stylesheet" href="/resources/css/style.css" />
	<link rel="stylesheet" href="/resources/css/icons.css" />
	<link href="http://resources/fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800" rel="stylesheet">
	<script src="https://use.fontawesome.com/e808bf9397.js"></script>
	<link rel="shortcut icon" href="/resources/images/favicon.ico" />
	<style type="text/css">
		.three-fourth {width: 100%;}
		.cmurlink{display: block; align: center;}
		.cmurlink .R-rlink {cursor: pointer;  padding: 11px 14px; background: #fff; color: #FF7B74; border-radius: 3px;}
		
		.one-third {width: 25%}
	</style>
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<!--preloader-->
	<div class="preloader">
		<div class="spinner"></div>
	</div>
	<!--//preloader-->
	
	<!--header-->
		<%@ include file="/resources/Header.jsp" %>
	<!--//header-->
		
	<!--main-->
	<main class="main" role="main">
		<!--wrap-->
		<div class="wrap clearfix">
			<!--breadcrumbs-->
			<nav class="breadcrumbs">
				<ul>
					<!-- 메인 가는 링크 -->
					<li><a href="VgMain.jsp" title="Home">메인</a></li>
					<li>커뮤니티</li>
				</ul>
			</nav>
			<!--//breadcrumbs-->
			
			<!--row-->
			<div class="row">
				<header class="s-title">
					<h1>커뮤니티 게시판</h1>
				</header>
				<div class="box bg-2">
	          <button class="button" data-text="카테고리">
	          <span>카테고리</span>
	          </button>
          		</div>
				<!--content-->
				<section class="content three-fourth">
				<form method="get" id="listForm" action="/cmu/VgCmuList">

					<!-- 커뮤니티 리스트 갯수 반복문 -->	
 					<c:forEach items="${cmupagelist}" var="cmuvo">
						<div class="entry one-third">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<!-- 상세 페이지 가는 링크 -->
								<figcaption><a href="/cmu/VgCmuDtail.do?CMU_PK=${cmuvo.CMU_PK}"><i class="icon icon-themeenergy_eye2"></i> <span>글보기</span></a></figcaption>
							</figure>
							<div class="container">
								<!-- 상세 페이지 가는 링크 -->
								<h2><a href="/cmu/VgCmuDtail.do?CMU_PK=${cmuvo.CMU_PK}">${cmuvo.CMU_TITLE}</a></h2> 
								<div class="actions">
									<div>
										<div class="difficulty" style="width: 200px;border-right: none !important;"><i class="ico i-medium"></i><a href="#">${cmuvo.USR_ID}</a></div>
										<div class="comments"><i class="fa fa-comment"></i><a href="#">${cmuvo.CMU_COM}</a></div>
										<div class="likes"><i class="fa fa-heart"></i><a href="#">${cmuvo.CMU_LIKE}</a></div>								
									</div>
								</div>
							</div>
						</div>	
					</c:forEach>

					<!-- 페이징 -->
					<div class="pager">
						<c:if test="${paging.startPage != 1 }">
							<a
								href="VgCmuList.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
						</c:if>
						<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
							var="pagenum">
							<c:choose>
								<c:when test="${pagenum == paging.nowPage }">
									<a class="current">${pagenum }</a>
								</c:when>
								<c:when test="${pagenum != paging.nowPage }">
									<a
										href="VgCmuList.do?nowPage=${pagenum }&cntPerPage=${paging.cntPerPage}" class="paging_num">${pagenum }</a>
								</c:when>
							</c:choose>
						</c:forEach>
						<c:if test="${paging.endPage != paging.lastPage}">
							<a
								href="VgCmuList.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
						</c:if>
					</div>
					
					</form>
				</section>
				<div class ="cmurlink">
					<!-- 글 작성가는 링크 -->
					<a class="R-rlink" href="VgCmuRegst.do"> 게시글 작성 </a>
				</div>
				<!--//content-->
				
			</div>
			<!--//row-->
		</div>
		<!--//wrap-->
	</main>
	<!--//main-->
		
    <!--footer-->
    <%@ include file="/resources/Footer.jsp" %>
    <!--//footer-->
	
	<script src="/resources/js/jquery-3.1.0.min.js"></script>
	<script src="/resources/js/jquery.uniform.min.js"></script>
	<script src="/resources/js/jquery.slicknav.min.js"></script>
	<script src="/resources/js/scripts.js"></script>
</body>
</html>

