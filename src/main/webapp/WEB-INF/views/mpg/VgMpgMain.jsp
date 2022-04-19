<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link rel="stylesheet" href="/resources/css/bootstrap.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="/resources/css/Mpg.css" />
<link rel="stylesheet" href="/resources/css/icons.css" />
<link
	href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800"
	rel="stylesheet">
<script src="https://use.fontawesome.com/e808bf9397.js"></script>
<link rel="shortcut icon" href="/resources/images/favicon.ico" />


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond./resources/js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<!--preloader-->
	<div class="preloader">
		<div class="spinner"></div>
	</div>
	<!--//preloader-->

	<!--header-->
	<header class="head" role="banner">
		<!--wrap-->
		<div class="wrap clearfix">
			<a href="index.jsp" title="SocialChef" class="logo"><img
				src="/resources/images/ico/logo.png" alt="SocialChef logo" /></a>

			<nav class="main-nav" role="navigation" id="menu">
				<ul>
					<li><a href="index.jsp" title="Home"><span>Home</span></a></li>
					<li><a href="recipes.jsp" title="Recipes"><span>Recipes</span></a>
						<ul>
							<li><a href="recipes2.jsp" title="Recipes 2">Recipes 2</a></li>
							<li><a href="VgRcpDtail.jsp" title="Recipe">Recipe</a></li>
						</ul></li>
					<li><a href="blog.jsp" title="Blog"><span>Blog</span></a>
						<ul>
							<li><a href="VgCmuDtail.jsp" title="Blog post">Blog post</a></li>
						</ul></li>
					<li><a href="#" title="Pages"><span>Pages</span></a>
						<ul>
							<li><a href="left_sidebar.jsp" title="Left sidebar page">Left
									sidebar page</a></li>
							<li><a href="right_sidebar.jsp" title="Right sidebar page">Right
									sidebar page</a></li>
							<li><a href="two_sidebars.jsp" title="Both sidebars page">Both
									sidebars page</a></li>
							<li><a href="full_width.jsp" title="Full width page">Full
									width page</a></li>
							<li><a href="login.jsp" title="Login page">Login page</a></li>
							<li><a href="register.jsp" title="Register page">Register
									page</a></li>
							<li><a href="error404.jsp" title="Error page">Error page</a></li>
						</ul></li>
					<li><a href="#" title="Features"><span>Features</span></a>
						<ul>
							<li><a href="icons.jsp" title="Icons">Icons</a></li>
							<li><a href="grid.jsp" title="Grid">Grid</a></li>
							<li><a href="shortcodes.jsp" title="Shortcodes">Shortcodes</a></li>
							<li><a href="pricing.jsp" title="Pricing tables">Pricing
									tables</a></li>
						</ul></li>
					<li><a href="contact.jsp" title="Contact"><span>Contact</span></a></li>
					<li><a
						href="http://themeforest.net/item/socialchef-social-recipe-html-template/8568727?ref=themeenergy"
						title="Buy now"><span>Buy now</span></a></li>
				</ul>
			</nav>

			<nav class="user-nav" role="navigation">
				<ul>
					<li class="light"><a href="find_recipe.jsp"
						title="Search for recipes"><i
							class="icon icon-themeenergy_search"></i> <span>Search for
								recipes</span></a></li>
					<li class="medium current-menu-item"><a href="my_profile.jsp"
						title="My account"><i class="icon icon-themeenergy_chef-hat"></i>
							<span>My account</span></a></li>
					<li class="dark"><a href="submit_recipe.jsp"
						title="Submit a recipe"><i
							class="icon icon-themeenergy_fork-spoon"></i> <span>Submit
								a recipe</span></a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!--//header-->

	<!--main-->
	<main class="main" role="main">
		<!--wrap-->
		<div class="wrap clearfix">
			<!--breadcrumbs-->
			<nav class="breadcrumbs">
				<ul>
					<li><a href="VgMain.jsp" title="Home">메인</a></li>
					<li>마이페이지</li>
				</ul>
			</nav>
			<!--//breadcrumbs-->


			<!--content-->
			<section class="content">
				<!--row-->
				<div class="row">
					<!--profile left part-->
					<div class="my_account one-fourth">
						<figure>
							<img src="/resources/images/Mr.hong.png" alt="" />
						</figure>
						<div class="container">
							<h2 align="center">홍길동</h2>
						</div>
						<div align="right">
							<a class="btn btn-default" data-target="#modal7"
								data-toggle="modal">등급표 보기</a>
						</div>
					</div>
					<!--//profile left part-->

					<div class="three-fourth">
						<nav class="tabs">
							<ul>
								<li class="active"><a href="#about" title="About me">내정보</a></li>
								<li><a href="#recipes" title="My recipes">내 레시피</a></li>
								<li><a href="#favorites" title="My favorites">스크랩 레시피</a></li>
								<li><a href="#posts" title="My posts">내 게시글</a></li>
							</ul>
						</nav>

						<!--about-->
						<div class="tab-content" id="about">
							<div class="row">
								<dl class="basic two-third">
									<dt>이름</dt>
									<dd>홍길동(변수)</dd>
									<dd
										style="text-align: right; background-color: transparent; width: 30%;">
										<a class="btn btn-default" data-target="#modal1"
											data-toggle="modal">회원탈퇴</a>

									</dd>
									<dt>채식종류</dt>
									<dd>락토-오보 베지테리언(변수,드롭다운)</dd>
									<dd
										style="text-align: right; background-color: transparent; width: 30%;">
										<a class="btn btn-default" data-target="#modal2"
											data-toggle="modal">채식 종류 변경</a>
									</dd>
									<dt>닉네임</dt>
									<dd>호부호형못함(변수)</dd>
									<dd
										style="text-align: right; background-color: transparent; width: 30%;">
										<a class="btn btn-default" data-target="#modal3"
											data-toggle="modal">닉네임 변경</a>
									</dd>
									<dt>비밀번호</dt>
									<dd>*************(변수,안보여줌)</dd>
									<dd
										style="text-align: right; background-color: transparent; width: 30%;">
										<a class="btn btn-default" data-target="#modal4"
											data-toggle="modal">비밀번호 변경</a>
									</dd>
									<dt>주소</dt>
									<dd>경기도 수원시 팔달구 중부대로 101번지 3층(변수)</dd>
									<dd
										style="text-align: right; background-color: transparent; width: 30%;">
										<a class="btn btn-default" data-target="#modal5"
											data-toggle="modal">주소 변경</a>
									</dd>
									<dt>내 등급</dt>
									<dd>실버(변수)</dd>
									<dd
										style="text-align: right; background-color: transparent; width: 30%;">
										<a class="btn btn-default" data-target="#modal6"
											data-toggle="modal">포인트 내역보기</a>
									</dd>

									<!-- 회원탈퇴시 checkbox -->
									<div class="VgMpgRsnMrshow">
										<span class="checkT"
											style="width: 15%; background-color: transparent; text-align: right;">
											<input type="checkbox">
										</span> <span style="width: 55%;">회원정보만 삭제되고, 게시글을 그대로 남습니다.
											삭제하시겠습니까 ? </span>
										<%!int i;%>
										<%
										for (int i = 0; i < 8; i++) {
										%>
										&nbsp;
										<%
										}
										%>
										<span class="btnArea"><button class="btn"
												disabled="disabled" onclick="alert('탈퇴되었습니다.')"
												type="button">탈퇴하기</button></span>
									</div>
								</dl>



							</div>
						</div>
						<!--//about-->

						<!--my recipes-->
						<div class="tab-content" id="recipes">
							<div class="entries row">
								<!--item-->
								<div class="entry one-third">
									<figure>
										<img src="/resources/images/img.jpg" alt="" />
										<figcaption>
											<a href="VgRcpDtail.jsp"><i
												class="icon icon-themeenergy_eye2"></i> <span>View
													recipe</span></a>
										</figcaption>
									</figure>
									<div class="container">
										<h2>
											<a href="VgRcpDtail.jsp">Thai fried rice with fruit and
												vegetables</a>
										</h2>
										<div class="actions">
											<div>
												<div class="difficulty">
													<i class="ico i-medium"></i><a href="#">medium</a>
												</div>
												<div class="likes">
													<i class="fa fa-heart"></i><a href="#">10</a>
												</div>
												<div class="comments">
													<i class="fa fa-comment"></i><a
														href="VgRcpDtail.jsp#comments">27</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--item-->

								<!--item-->
								<div class="entry one-third">
									<figure>
										<img src="/resources/images/img.jpg" alt="" />
										<figcaption>
											<a href="VgRcpDtail.jsp"><i
												class="icon icon-themeenergy_eye2"></i> <span>View
													recipe</span></a>
										</figcaption>
									</figure>
									<div class="container">
										<h2>
											<a href="VgRcpDtail.jsp">Spicy Morroccan prawns with
												cherry tomatoes</a>
										</h2>
										<div class="actions">
											<div>
												<div class="difficulty">
													<i class="ico i-hard"></i><a href="#">hard</a>
												</div>
												<div class="likes">
													<i class="fa fa-heart"></i><a href="#">10</a>
												</div>
												<div class="comments">
													<i class="fa fa-comment"></i><a
														href="VgRcpDtail.jsp#comments">27</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--item-->

								<!--item-->
								<div class="entry one-third">
									<figure>
										<img src="/resources/images/img.jpg" alt="" />
										<figcaption>
											<a href="VgRcpDtail.jsp"><i
												class="icon icon-themeenergy_eye2"></i> <span>View
													recipe</span></a>
										</figcaption>
									</figure>
									<div class="container">
										<h2>
											<a href="VgRcpDtail.jsp">Super easy blueberry cheesecake</a>
										</h2>
										<div class="actions">
											<div>
												<div class="difficulty">
													<i class="ico i-easy"></i><a href="#">easy</a>
												</div>
												<div class="likes">
													<i class="fa fa-heart"></i><a href="#">10</a>
												</div>
												<div class="comments">
													<i class="fa fa-comment"></i><a
														href="VgRcpDtail.jsp#comments">27</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--item-->
							</div>
							<div class="pager">
								<a href="#">1</a> <a href="#" class="current">2</a> <a href="#">3</a>
								<a href="#">4</a> <a href="#">5</a>
							</div>
						</div>

						<!--//my recipes-->


						<!--my favorites-->
						<div class="tab-content" id="favorites">
							<div class="entries row">
								<!--item-->
								<div class="entry one-third">
									<figure>
										<img src="/resources/images/img.jpg" alt="" />
										<figcaption>
											<a href="VgRcpDtail.jsp"><i
												class="icon icon-themeenergy_eye2"></i> <span>View
													recipe</span></a>
										</figcaption>
									</figure>
									<div class="container">
										<h2>
											<a href="VgRcpDtail.jsp">Thai fried rice with fruit and
												vegetables</a>
										</h2>
										<div class="actions">
											<div>
												<div class="difficulty">
													<i class="ico i-medium"></i><a href="#">medium</a>
												</div>
												<div class="likes">
													<i class="fa fa-heart"></i><a href="#">10</a>
												</div>
												<div class="comments">
													<i class="fa fa-comment"></i><a
														href="VgRcpDtail.jsp#comments">27</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--item-->

								<!--item-->
								<div class="entry one-third">
									<figure>
										<img src="/resources/images/img.jpg" alt="" />
										<figcaption>
											<a href="VgRcpDtail.jsp"><i
												class="icon icon-themeenergy_eye2"></i> <span>View
													recipe</span></a>
										</figcaption>
									</figure>
									<div class="container">
										<h2>
											<a href="VgRcpDtail.jsp">Spicy Morroccan prawns with
												cherry tomatoes</a>
										</h2>
										<div class="actions">
											<div>
												<div class="difficulty">
													<i class="ico i-hard"></i><a href="#">hard</a>
												</div>
												<div class="likes">
													<i class="fa fa-heart"></i><a href="#">10</a>
												</div>
												<div class="comments">
													<i class="fa fa-comment"></i><a
														href="VgRcpDtail.jsp#comments">27</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--item-->

								<!--item-->
								<div class="entry one-third">
									<figure>
										<img src="/resources/images/img.jpg" alt="" />
										<figcaption>
											<a href="VgRcpDtail.jsp"><i
												class="icon icon-themeenergy_eye2"></i> <span>View
													recipe</span></a>
										</figcaption>
									</figure>
									<div class="container">
										<h2>
											<a href="VgRcpDtail.jsp">Super easy blueberry cheesecake</a>
										</h2>
										<div class="actions">
											<div>
												<div class="difficulty">
													<i class="ico i-easy"></i><a href="#">easy</a>
												</div>
												<div class="likes">
													<i class="fa fa-heart"></i><a href="#">10</a>
												</div>
												<div class="comments">
													<i class="fa fa-comment"></i><a
														href="VgRcpDtail.jsp#comments">27</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--item-->
							</div>
							<div class="pager">
								<a href="#">1</a> <a href="#" class="current">2</a> <a href="#">3</a>
								<a href="#">4</a> <a href="#">5</a>
							</div>
						</div>
						<!--//my favorites-->

						<!--my posts-->
						<div class="tab-content" id="posts">
							<!--entries-->
							<div class="entries row">
								<!--item-->
								<div class="entry one-third">

									<div class="container">
										<h2>
											<a href="VgCmuDtail.jsp">Barbeque party</a>
										</h2>
										<div class="actions">
											<div>
												<div class="date">
													<i class="fa fa-calendar"></i><a href="#">22 Dec 2014</a>
												</div>
												<div class="comments">
													<i class="fa fa-comment"></i><a
														href="VgCmuDtail.jsp#comments">27</a>
												</div>
											</div>
										</div>
										<div class="excerpt">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy nibh euismod. Lorem ipsum dolor sit
												amet . . .</p>
										</div>
									</div>
								</div>
								<!--item-->

								<!--item-->
								<div class="entry one-third">

									<div class="container">
										<h2>
											<a href="VgCmuDtail.jsp">How to make sushi</a>
										</h2>
										<div class="actions">
											<div>
												<div class="date">
													<i class="fa fa-calendar"></i><a href="#">22 Dec 2014</a>
												</div>
												<div class="comments">
													<i class="fa fa-comment"></i><a
														href="VgCmuDtail.jsp#comments">27</a>
												</div>
											</div>
										</div>
										<div class="excerpt">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy nibh euismod. Lorem ipsum dolor sit
												amet . . .</p>
										</div>
									</div>
								</div>
								<!--item-->

								<!--item-->
								<div class="entry one-third">

									<div class="container">
										<h2>
											<a href="VgCmuDtail.jsp">Make your own bread</a>
										</h2>
										<div class="actions">
											<div>
												<div class="date">
													<i class="fa fa-calendar"></i><a href="#">22 Dec 2014</a>
												</div>
												<div class="comments">
													<i class="fa fa-comment"></i><a
														href="VgCmuDtail.jsp#comments">27</a>
												</div>
											</div>
										</div>
										<div class="excerpt">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy nibh euismod. Lorem ipsum dolor sit
												amet . . .</p>
										</div>
									</div>
								</div>

								<!--item-->
								<!--item-->
								<div class="entry one-third">

									<div class="container">
										<h2>
											<a href="VgCmuDtail.jsp">Make your own bread</a>
										</h2>
										<div class="actions">
											<div>
												<div class="date">
													<i class="fa fa-calendar"></i><a href="#">22 Dec 2014</a>
												</div>
												<div class="comments">
													<i class="fa fa-comment"></i><a
														href="VgCmuDtail.jsp#comments">27</a>
												</div>
											</div>
										</div>
										<div class="excerpt">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy nibh euismod. Lorem ipsum dolor sit
												amet . . .</p>
										</div>
									</div>
								</div>

								<!--item-->
								<!--item-->
								<div class="entry one-third">

									<div class="container">
										<h2>
											<a href="VgCmuDtail.jsp">Make your own bread</a>
										</h2>
										<div class="actions">
											<div>
												<div class="date">
													<i class="fa fa-calendar"></i><a href="#">22 Dec 2014</a>
												</div>
												<div class="comments">
													<i class="fa fa-comment"></i><a
														href="VgCmuDtail.jsp#comments">27</a>
												</div>
											</div>
										</div>
										<div class="excerpt">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy nibh euismod. Lorem ipsum dolor sit
												amet . . .</p>
										</div>
									</div>
								</div>

								<!--item-->
								<!--item-->
								<div class="entry one-third">

									<div class="container">
										<h2>
											<a href="VgCmuDtail.jsp">Make your own bread</a>
										</h2>
										<div class="actions">
											<div>
												<div class="date">
													<i class="fa fa-calendar"></i><a href="#">22 Dec 2014</a>
												</div>
												<div class="comments">
													<i class="fa fa-comment"></i><a
														href="VgCmuDtail.jsp#comments">27</a>
												</div>
											</div>
										</div>
										<div class="excerpt">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy nibh euismod. Lorem ipsum dolor sit
												amet . . .</p>
										</div>
									</div>
								</div>

								<!--item-->
							</div>
							<!--//entries-->
							<div class="pager">
								<a href="#">1</a> <a href="#" class="current">2</a> <a href="#">3</a>
								<a href="#">4</a> <a href="#">5</a>
							</div>
						</div>
						<!--//my posts-->
					</div>
				</div>
				<!--//row-->
			</section>
			<!--//content-->
		</div>
		<!--//wrap-->
	</main>
	<!--//main-->


	<!--footer-->
	<footer class="foot" role="contentinfo">
		<div class="wrap clearfix">
			<div class="row">
				<article class="one-half">
					<h5>About SocialChef Community</h5>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
						aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud
						exerci.</p>
				</article>
				<article class="one-fourth">
					<h5>Need help?</h5>
					<p>Contact us via phone or email</p>
					<p>
						<em>T:</em> +1 555 555 555<br /> <em>E:</em> <a href="#">socialchef@email.com</a>
					</p>
				</article>
				<article class="one-fourth">
					<h5>Follow us</h5>
					<ul class="social">
						<li><a href="#" title="facebook"><i
								class="fa fa-fw fa-facebook"></i></a></li>
						<li><a href="#" title="youtube"><i
								class="fa  fa-fw fa-youtube"></i></a></li>
						<li><a href="#" title="rss"><i class="fa  fa-fw fa-rss"></i></a></li>
						<li><a href="#" title="gplus"><i
								class="fa fa-fw fa-google-plus"></i></a></li>
						<li><a href="#" title="linkedin"><i
								class="fa fa-fw fa-linkedin"></i></a></li>
						<li><a href="#" title="twitter"><i
								class="fa fa-fw fa-twitter"></i></a></li>
						<li><a href="#" title="pinterest"><i
								class="fa fa-fw fa-pinterest-p"></i></a></li>
						<li><a href="#" title="vimeo"><i
								class="fa fa-fw fa-vimeo"></i></a></li>
					</ul>
				</article>

				<div class="bottom">
					<p class="copy">Copyright 2016 SocialChef. All rights reserved</p>

					<nav class="foot-nav">
						<ul>
							<li><a href="index.jsp" title="Home">Home</a></li>
							<li><a href="recipes.jsp" title="Recipes">Recipes</a></li>
							<li><a href="blog.jsp" title="Blog">Blog</a></li>
							<li><a href="contact.jsp" title="Contact">Contact</a></li>
							<li><a href="find_recipe.jsp" title="Search for recipes">Search
									for recipes</a></li>
							<li><a href="login.jsp" title="Login">Login</a></li>
							<li><a href="register.jsp" title="Register">Register</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

	</footer>
	<!--//footer-->
	<%@ include file="VgMpgEdtMa.jsp"%>
	<%@ include file="VgMpgEdtMc.jsp"%>
	<%@ include file="VgMpgEdtMn.jsp"%>
	<%@ include file="VgMpgEdtMp.jsp"%>
	<%@ include file="VgMpgRsnMr.jsp"%>
	<%@ include file="VgMpgShwMp.jsp"%>
	<script src="/resources/js/jquery-3.1.0.min.js"></script>
	<script src="/resources/js/jquery.uniform.min.js"></script>
	<script src="/resources/js/jquery.slicknav.min.js"></script>
	<script src="/resources/js/scripts.js"></script>
	<script src="/resources/js/bootstrap.js"></script>
	<script src="/resources/js/Mpg.js"></script>

</body>
</html>


