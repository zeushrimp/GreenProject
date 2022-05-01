<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix='f' uri="http://java.sun.com/jsp/jstl/core" %>
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

<title>SocialChef</title>


<link rel="stylesheet" href="../../resources/css/icons.css" />
<link rel="stylesheet" href="../../resources/css/style.css" />
		
<link
	href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800"
	rel="stylesheet">
<script src="https://use.fontawesome.com/e808bf9397.js"></script>
<link rel="shortcut icon" href="../../resources/images/favicon.ico" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->



<!-- 해당 페이지의 헤더 탭에 색깔이 들어오도록 해주는 js. 헤더의 li에 준 id를 addClass앞의 괄호에만 넣어주세요 -->
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		$('#Home').addClass('current-menu-item');
	});
</script>
<style type="text/css">
.three-fourth{
width: 100%;

}
</style>
</head>
<body class="home">

	<!--preloader-->
	<div class="preloader">
		<div class="spinner"></div>
	</div>
	<!--//preloader-->
	<%@ include file="../../../Header.jsp" %>
	

	<!--main-->
	<main class="main" role="main" style="padding-top: 200px;">
		<!--intro-->
		<!-- <div class="intro">
			<figure class="bg">
				<img src="resources/images/intro.jpg" alt="" />
			</figure>
		</div> -->
		<!--//intro-->

		<!--wrap-->
		<div class="wrap clearfix">
			<!--row-->
			<div class="row">


				<!--content-->
				<section class="content three-fourth">


					<!--cwrap-->
					<div class="cwrap">
						<header class="s-title">
							<h2 class="ribbon bright">오늘의 레시피</h2>
						</header>

						<!--entries-->
						<div class="entries row">
						<c:forEach items="${MNR }" var="vo1">
							<!--item-->
							<div class="entry one-third" style="width:33.3%">
								<figure>
									<img src="../../resources/images/img.jpg" alt="" />
									<figcaption>
										<a href="/rcp/VgRcpDtail.do?RCP_PK=${vo1.RCP_PK }"><i
											class="icon icon-themeenergy_eye2"></i> <span>레시피 보기</span></a>
									</figcaption>
								</figure>
								<div class="container">
									<h2>
										<a href="/rcp/VgRcpDtail.do?RCP_PK=${vo1.RCP_PK }"><c:choose>
												<c:when test="${fn:length(vo1.RCP_TITLE) > 19}">
													<c:out value="${fn:substring(vo1.RCP_TITLE,0,18)}" />.... </c:when>
												<c:otherwise>
													<c:out value="${vo1.RCP_TITLE}" />
												</c:otherwise>
											</c:choose>
										
										</a>
									</h2>
									<div class="actions">
										<div>
											
											<div class="likes">
												<i class="fa fa-heart"></i>${vo1.RCP_LIKE }
											</div>
											<div class="comments">
												<i class="fa fa-comment"></i>${vo1.RCP_COM }
											</div>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
							<!--item-->

							



						</div>
						<!--//entries-->
					</div>
					<!--//cwrap-->
					
					<!--cwrap-->
					<div class="cwrap">
						<header class="s-title">
							<h2 class="ribbon bright">베스트 레시피</h2>
						</header>

						<!--entries-->
						<div class="entries row">
						<c:forEach items="${MPR }" var="vo2">
							<!--item-->
							<div class="entry one-third" style="width:33.3%">
								<figure>
									<img src="../../resources/images/img.jpg" alt="" />
									<figcaption>
										<a href="/rcp/VgRcpDtail.do?RCP_PK=${vo2.RCP_PK }"><i
											class="icon icon-themeenergy_eye2"></i> <span>레시피 보기</span></a>
									</figcaption>
								</figure>
								<div class="container">
									<h2>
										<a href="/rcp/VgRcpDtail.do?RCP_PK=${vo2.RCP_PK }"><c:choose>
												<c:when test="${fn:length(vo2.RCP_TITLE) > 19}">
													<c:out value="${fn:substring(vo2.RCP_TITLE,0,18)}" />.... </c:when>
												<c:otherwise>
													<c:out value="${vo2.RCP_TITLE}" />
												</c:otherwise>
											</c:choose>
										</a>
									</h2>
									<div class="actions">
										<div>
											
											<div class="likes">
												<i class="fa fa-heart"></i>${vo2.RCP_LIKE }
											</div>
											<div class="comments">
												<i class="fa fa-comment"></i>${vo2.RCP_COM }
											</div>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
							<!--item-->
							



						</div>
						<!--//entries-->
					</div>
					<!--//cwrap-->
					


					<!--cwrap-->
					<div class="cwrap">
						<header class="s-title">
							<h2 class="ribbon bright">최신글</h2>
						</header>
						<!--entries-->
						<div class="entries row">
							<!--item-->
							<c:forEach items="${MainCmu }" var="vo3">
							<div class="entry one-third" style="width:33.3%">
								<figure>
									<img src="../../resources/images/img.jpg" alt="" />
									<figcaption>
										<a href="/cmu/VgCmuDtail.do?CMU_PK=${vo3.CMU_PK}"><i
											class="icon icon-themeenergy_eye2"></i> <span>글 바로가기</span></a>
									</figcaption>
								</figure>
								<div class="container">
									<h2>
										<a href="/cmu/VgCmuDtail.do?CMU_PK=${vo3.CMU_PK}"><c:choose>
												<c:when test="${fn:length(vo3.CMU_TITLE) > 19}">
													<c:out value="${fn:substring(vo3.CMU_TITLE,0,18)}" />.... </c:when>
												<c:otherwise>
													<c:out value="${vo3.CMU_TITLE}" />
												</c:otherwise>
											</c:choose>
										
										</a>
									</h2>
									<div class="actions">
										<div>
											<div class="date">
												<i class="fa fa-calendar"></i>${vo3.CMU_REG }
											</div>
											<div class="comments">
												<i class="fa fa-comment"></i><a
													href="blog_single.jsp#comments">27</a>
											</div>
										</div>
									</div>
				
								</div>
							</div>
							</c:forEach>
							<!--item-->

							


						</div>
						<!--//entries-->
					</div>
					<!--//cwrap-->

				
				</section>
				<!--//content-->










			</div>
			<!--//wrap-->
	</main>
	<!--//main-->


	<!--//call to action-->


	<!--footer-->
	<footer class="foot" role="contentinfo">
		<div class="wrap clearfix">
			<div class="row">
				<article class="one-half">
					<h5>About SocialChef Community</h5>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci.</p>
				</article>
				<article class="one-fourth">
					<h5>Need help?</h5>
					<p>Contact us via phone or email</p>
					<p><em>T:</em>  +1 555 555 555<br /><em>E:</em>  <a href="#">socialchef@email.com</a></p>
				</article>
				<article class="one-fourth">
					<h5>Follow us</h5>
					<ul class="social">
						<li><a href="#" title="facebook"><i class="fa fa-fw fa-facebook"></i></a></li>
						<li><a href="#" title="youtube"><i class="fa  fa-fw fa-youtube"></i></a></li>
						<li><a href="#" title="rss"><i class="fa  fa-fw fa-rss"></i></a></li>
						<li><a href="#" title="gplus"><i class="fa fa-fw fa-google-plus"></i></a></li>
						<li><a href="#" title="linkedin"><i class="fa fa-fw fa-linkedin"></i></a></li>
						<li><a href="#" title="twitter"><i class="fa fa-fw fa-twitter"></i></a></li>
						<li><a href="#" title="pinterest"><i class="fa fa-fw fa-pinterest-p"></i></a></li>
						<li><a href="#" title="vimeo"><i class="fa fa-fw fa-vimeo"></i></a></li>
					</ul>
				</article>
				
				<div class="bottom">
					<p class="copy">Copyright 2016 SocialChef. All rights reserved</p>
					
					<nav class="foot-nav">
						<ul>
							<li><a href="index.html" title="Home">Home</a></li>
							<li><a href="recipes.html" title="Recipes">Recipes</a></li>
							<li><a href="blog.html" title="Blog">Blog</a></li>
							<li><a href="contact.html" title="Contact">Contact</a></li>    
							<li><a href="find_recipe.html" title="Search for recipes">Search for recipes</a></li>
							<li><a href="/usr/VgUsrLogin.do" title="Login">Login</a></li>	<li><a href="/usr/VgUsrRegst.do" title="Register">Register</a></li>													
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</footer>


	<script src="../../resources/js/jquery-3.1.0.min.js"></script>
	<script src="../../resources/js/jquery.uniform.min.js"></script>
	<script src="../../resources/js/jquery.slicknav.min.js"></script>
	<script src="../../resources/js/scripts.js"></script>
	<script src="../../resources/js/home.js"></script>
</body>
</html>