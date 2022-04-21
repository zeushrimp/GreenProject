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
					<!--blog entry-->
					<!-- <div class="entry one-third">
						<figure>
							<img src="/resources/images/img.jpg" alt="" />
							상세 페이지 가는 링크
							<figcaption><a href="VgCmuDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>글보기</span></a></figcaption>
						</figure>
						<div class="container">
							상세 페이지 가는 링크
							<h2><a href="VgCmuDtail.do">커뮤니티 제목</a></h2> 
							<div class="actions">
								<div>
									<div class="difficulty" style="width: 200px;border-right: none !important;"><i class="ico i-medium"></i><a href="#">아이디</a></div>
									<div class="comments"><i class="fa fa-comment"></i><a href="VgCmuDtail.jsp#comments">댓글</a></div>
									<div class="likes"><i class="fa fa-heart"></i><a href="#">좋아요</a></div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="entry one-third">
						<figure>
							<img src="/resources/images/img.jpg" alt="" />
							상세 페이지 가는 링크
							<figcaption><a href="VgCmuDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>글보기</span></a></figcaption>
						</figure>
						<div class="container">
							상세 페이지 가는 링크
							<h2><a href="VgCmuDtail.do">커뮤니티 제목</a></h2> 
							<div class="actions">
								<div>
									<div class="difficulty" style="width: 200px;border-right: none !important;"><i class="ico i-medium"></i><a href="#">아이디</a></div>
									<div class="comments"><i class="fa fa-comment"></i><a href="VgCmuDtail.jsp#comments">댓글</a></div>
									<div class="likes"><i class="fa fa-heart"></i><a href="#">좋아요</a></div>								</div>
							</div>
						</div>
					</div>
					
					<div class="entry one-third">
						<figure>
							<img src="/resources/images/img.jpg" alt="" />
							상세 페이지 가는 링크
							<figcaption><a href="VgCmuDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>글보기</span></a></figcaption>
						</figure>
						<div class="container">
							상세 페이지 가는 링크
							<h2><a href="VgCmuDtail.do">커뮤니티 제목</a></h2> 
							<div class="actions">
								<div>
									<div class="difficulty" style="width: 200px;border-right: none !important;"><i class="ico i-medium"></i><a href="#">아이디</a></div>
									<div class="comments"><i class="fa fa-comment"></i><a href="VgCmuDtail.jsp#comments">댓글</a></div>
									<div class="likes"><i class="fa fa-heart"></i><a href="#">좋아요</a></div>								</div>
							</div>
						</div>
					</div>
					
					<div class="entry one-third">
						<figure>
							상세 페이지 가는 링크
							<img src="/resources/images/img.jpg" alt="" />
							<figcaption><a href="VgCmuDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>글보기</span></a></figcaption>
						</figure>
						<div class="container">
							상세 페이지 가는 링크
							<h2><a href="VgCmuDtail.do">커뮤니티 제목</a></h2> 
							<div class="actions">
								<div>
									<div class="difficulty" style="width: 200px;border-right: none !important;"><i class="ico i-medium"></i><a href="#">아이디</a></div>
									<div class="comments"><i class="fa fa-comment"></i><a href="VgCmuDtail.jsp#comments">댓글</a></div>
									<div class="likes"><i class="fa fa-heart"></i><a href="#">좋아요</a></div>								</div>
							</div>
						</div>
					</div> -->
					
					<!-- 커뮤니티 리스트 갯수 반복문 -->	
 					<c:forEach items="${cmu_readlist}" var="cmuvo" begin="1" end="8">
						<div class="entry one-third">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<!-- 상세 페이지 가는 링크 -->
								<figcaption><a href="VgCmuDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>글보기</span></a></figcaption>
							</figure>
							<div class="container">
								<!-- 상세 페이지 가는 링크 -->
								<h2><a href="VgCmuDtail.do">커뮤니티 제목${cmuvo.CMU_TITLE}</a></h2> 
								<div class="actions">
									<div>
										<div class="difficulty" style="width: 200px;border-right: none !important;"><i class="ico i-medium"></i><a href="#">아이디 ${cmuvo.USR_ID}</a></div>
										<div class="comments"><i class="fa fa-comment"></i><a href="#">댓글${cmuvo.CMU_COM}</a></div>
										<div class="likes"><i class="fa fa-heart"></i><a href="#">좋아요${cmuvo.CMU_LIKE}</a></div>								
									</div>
								</div>
							</div>
						</div>	
					</c:forEach>

					<!-- 커뮤니티 리스트 버튼 링크 -->
					<div class="pager">
						<a href="VgCmuList.do">1</a>
						<a href="VgCmuList.do" class="current">2</a>
						<a href="VgCmuList.do">3</a>
						<a href="VgCmuList.do">4</a>
						<a href="VgCmuList.do">5</a>
					</div>
					<!-- 페이징 -->
					<div class="pager">
						<div class="dataTables_paginate paging_simple_numbers"
							id="dataTable_paginate">
							<ul class="pagination">

								<c:if test="${cmuvo.prev}">
									<li class="paginate_button page-item previous"
										id="dataTable_previous"><a href="javascript:void(0);"
										onclick="fn_go_page(${cmuvo.startDate - 1}); return false;"
										aria-controls="dataTable" data-dt-idx="0" tabindex="0"
										class="page-link">Previous</a></li>
								</c:if>

								<c:forEach var="num" begin="${cmuvo.startDate}"
									end="${cmuvo.endDate}">
									<li class="paginate_button page-item"><a
										href="javascript:void(0);"
										onclick="fn_go_page(${num}); return false;"
										aria-controls="dataTable" data-dt-idx="0" tabindex="0"
										class="page-link">${num}</a></li>
								</c:forEach>

								<c:if test="${cmuvo.next}">
									<li class="paginate_button page-item next" id="dataTable_next">
										<a href="javascript:void(0);"
										onclick="fn_go_page(${cmuvo.endDate + 1}); return false;"
										aria-controls="dataTable" data-dt-idx="0" tabindex="0"
										class="page-link">Next</a>
									</li>
								</c:if>
							</ul>
						</div>
					</div>
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

