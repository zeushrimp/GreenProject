<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="SocialChef - Social Recipe HTML Template" />
	<meta name="description" content="SocialChef - Social Recipe HTML Template">
	<meta name="author" content="themeenergy.com">
	
	<title>SocialChef</title>
	
	<link rel="stylesheet" href="../../../resources/css/styleHeader.css" />
	<link rel="stylesheet" href="../../../resources/css/styleFooter.css" />
	<link rel="stylesheet" href="../../../resources/css/styleRcp.css" />
	<link rel="stylesheet" href="../../../resources/css/icons.css" />
	<link href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800" rel="stylesheet">
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
	<header class="head" role="banner">
		<!--wrap-->
		<div class="wrap clearfix">
			<a href="index.html" title="SocialChef" class="logo"><img src="/resources/images/ico/logo.png" alt="SocialChef logo" /></a>
			
			<nav class="main-nav" role="navigation" id="menu">
				<ul>
					<li class="current-menu-item"><a href="index.html" title="Home"><span>Home</span></a></li>
					<li><a href="recipes.html" title="Recipes"><span>Recipes</span></a>
						<ul>
							<li><a href="recipes2.html" title="Recipes 2">Recipes 2</a></li><li><a href="recipe.html" title="Recipe">Recipe</a></li>
						</ul>
					</li>
					<li><a href="blog.html" title="Blog"><span>Blog</span></a>
						<ul>
							<li><a href="blog_single.html" title="Blog post">Blog post</a></li>
						</ul>
					</li>
					<li><a href="#" title="Pages"><span>Pages</span></a>
						<ul>
							<li><a href="left_sidebar.html" title="Left sidebar page">Left sidebar page</a></li>
							<li><a href="right_sidebar.html" title="Right sidebar page">Right sidebar page</a></li>
							<li><a href="two_sidebars.html" title="Both sidebars page">Both sidebars page</a></li>
							<li><a href="full_width.html" title="Full width page">Full width page</a></li>
							<li><a href="login.html" title="Login page">Login page</a></li><li><a href="register.html" title="Register page">Register page</a></li>
							<li><a href="error404.html" title="Error page">Error page</a></li>
						</ul>
					</li>
					<li><a href="#" title="Features"><span>Features</span></a>
						<ul>
							<li><a href="icons.html" title="Icons">Icons</a></li>
							<li><a href="grid.html" title="Grid">Grid</a></li>
							<li><a href="shortcodes.html" title="Shortcodes">Shortcodes</a></li>
							<li><a href="pricing.html" title="Pricing tables">Pricing tables</a></li>
						</ul>
					</li>
					<li><a href="contact.html" title="Contact"><span>Contact</span></a></li>
					<li><a href="http://themeforest.net/item/socialchef-social-recipe-html-template/8568727?ref=themeenergy" title="Buy now"><span>Buy now</span></a></li>
				</ul>
			</nav>
			
			<nav class="user-nav" role="navigation">
				<ul>
					<li class="light"><a href="/rcp/VgRcpDtail.do" title="Search for recipes"><i class="icon icon-themeenergy_search"></i> <span>Search for recipes</span></a></li>
					<li class="medium"><a href="/mpg/VgMpgMain.do" title="My account"><i class="icon icon-themeenergy_chef-hat"></i> <span>My account</span></a></li>
					<li class="dark"><a href="/rcp/VgRcpRegst.do" title="Submit a recipe"><i class="icon icon-themeenergy_fork-spoon"></i> <span>Submit a recipe</span></a></li>
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
					<li><a href="/VgMain.jsp" title="Home">메인</a></li>
					<li>레시피</li>
				</ul>
			</nav>
			<!--//breadcrumbs-->
			
			<!--row-->
			<div class="row">
				<header class="s-title">
				</header>
<!-- 				카테고리 및 검색 -->
				<aside class="above-sidebar full-width">
					<div class="RcpCategory">
						<div class="RcpList">
							<ul class="boxed">
								<li><span></span></li>
							</ul>
							<ul class="boxed">
								<li><a href="#"><span>베스트레시피</span></a></li>
								<li><a href="#"><span>베스트레시피</span></a></li>
								<!--<li><a href="#"><span>프루테리언</span></a></li>
								<li><a href="#"><span>프루테리언</span></a></li> -->
							</ul>
							<ul class="boxed">
								<li><a href="#"><span>프루테리</span></a></li>
								<li><a href="#"><span>비건</span></a></li>
								<li><a href="#"><span>락토</span></a></li>
								<li><a href="#"><span>오보</span></a></li>
								<li><a href="#"><span>락토오보</span></a></li>
								<li><a href="#"><span>페스코</span></a></li>
								<li><a href="#"><span>폴로</span></a></li>
								<li><a href="#"><span>전체</span></a></li>
							</ul>
						</div>
						<div class="RcpSearch">
							<input type="text" placeholder="검색어 입력"><button onclick="">검색</button>
													
							
						</div>
					</div>
					<!-- 카테고리 및 검색 -->
				</aside>
				
				<!--content-->
				<section class="content full-width">
					<!--entries-->
					<div class="entries row">
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2> 
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2>  
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2> 
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2> 
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2>  
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2> 
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2> 
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2> 
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2>  
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2> 
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2> 
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2> 
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2> 
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2> 
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
									<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2> 
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
						<!--item-->
						<div class="entry one-fourth">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<figcaption><a href="VgRcpDtail.do"><i class="icon icon-themeenergy_eye2"></i> <span>레시피 보러가기</span></a></figcaption>
							</figure>
							<div class="container">
								<h2><a href="VgRcpDtail.do">음식이름</a></h2> 
								<div class="actions">
									<div>
										<div class="writer" style="width: 200px;border-right: none !important;"><span>닉네임  </span><a href="#">a</a></div>
										<div class="likes"><span>좋아요 </span><a href="#">10</a></div>
										<div class="comments"><span>댓글수 </span><a href="VgRcpDtail.do#comments">27</a></div>
									</div>
								</div>
							</div>
						</div>
						<!--item-->
						
					<!-- 레시피 리스트 버튼 링크 -->
						<div class="pager">
							<a href="VgRcpList.jsp">1</a>
							<a href="VgRcpList.jsp" class="current">2</a>
							<a href="VgRcpList.jsp">3</a>
							<a href="VgRcpList.jsp">4</a>
							<a href="VgRcpList.jsp">5</a>
						</div>
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
    <%@ include file="/resources/Footer.jsp" %>
    <!--//footer-->
	
	<script src="/resources/js/jquery-3.1.0.min.js"></script>
	<script src="/resources/js/jquery.uniform.min.js"></script>
	<script src="/resources/js/jquery.slicknav.min.js"></script>
	<script src="/resources/js/scripts.js"></script>
</body>
</html>


