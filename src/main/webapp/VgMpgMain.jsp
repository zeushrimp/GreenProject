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
	
	<title>VegeProject</title>
	
	
	<link rel="stylesheet" href="resources/css/styleHeader.css" />
	<link rel="stylesheet" href="resources/css/styleFooter.css" />
	<link rel="stylesheet" href="resources/css/styleMpg.css" />
	

	
	<link rel="stylesheet" href="resources/css/icons.css" />
	<link href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800" rel="stylesheet">
	<script src="https://use.fontawesome.com/e808bf9397.js"></script>
	<link rel="shortcut icon" href="resources/images/favicon.ico" />
	
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
    <%@ include file="resources/Header.jsp" %> 
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
							<img src="resources/images/Mr.hong.png" alt="" />
						</figure>
						<div class="container">
							<h2 align="center">홍길동</h2> 
						</div>
					</div>
					<!--//profile left part-->
					
					<div class="three-fourth">
						<nav class="tabs">
							<ul>
								<li class="active"><a href="#about" title="About me">내 정보</a></li>
								<li><a href="#recipes" title="My recipes">내 레시피</a></li>
								<li><a href="#favorites" title="My favorites">스크랩 레시피</a></li>
								<li><a href="#posts" title="My posts">내 게시글</a></li>
								<li><a href="NewFile.jsp" title="My orderhistory">주문내역</a></li>
								<!-- 장바구니로 넘어가는 링크 -->
								<li><a href="#cart" title="My cart" onclick="location.href='VgMktCart.jsp'">장바구니</a></li>
							</ul>
						</nav>
						
						<!--about-->
						<div class="tab-content" id="about">
							<div class="row">
								<dl class="basic two-third">
									<dt>이름</dt>
									<dd>홍길동(변수)</dd>
									<dd style="text-align: right;background-color: transparent;width: 30%;"><a href="VgMpgRsnMr.jsp" target='_blank'>회원탈퇴</a></dd>
									<dt>채식종류</dt>
									<dd>락토-오보 베지테리언(변수,드롭다운)</dd>
									<dd style="text-align: right;background-color: transparent;width: 30%;"><a href="VgMpgEdtMc.jsp" target='_blank'>채식 종류 변경</a></dd>
									<dt>닉네임</dt>
									<dd>호부호형못함(변수)</dd>
									<dd style="text-align: right;background-color: transparent;width: 30%;"><a href="VgMpgEdtMn.jsp" target='_blank'>닉네임 변경</a></dd>
									<dt>비밀번호</dt>
									<dd>*************(변수,안보여줌)</dd>
									<dd style="text-align: right;background-color: transparent;width: 30%;"><a href="VgMpgEdtMp.jsp" target='_blank'>비밀번호 변경</a></dd>
									<dt>주소</dt>
									<dd>경기도 수원시 팔달구 중부대로 101번지 3층(변수)</dd>
									<dd style="text-align: right;background-color: transparent;width: 30%;"><a href="VgMpgEdtMa.jsp" target='_blank'>주소 변경</a></dd>
									<dt>내 포인트</dt>
									<dd>1000P(변수)</dd>
									<dd style="text-align: right;background-color: transparent;width: 30%;"><a href="VgMpgShwMp.jsp" target='_blank'>내역 보기</a></dd>
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
										<img src="resources/images/img.jpg" alt="" />
										<figcaption><a href="VgRcpDtail.jsp"><i class="icon icon-themeenergy_eye2"></i> <span>View recipe</span></a></figcaption>
									</figure>
									<div class="container">
										<h2><a href="VgRcpDtail.jsp">Thai fried rice with fruit and vegetables</a></h2> 
										<div class="actions">
											<div>
												<div class="difficulty"><i class="ico i-medium"></i><a href="#">medium</a></div>
												<div class="likes"><i class="fa fa-heart"></i><a href="#">10</a></div>
												<div class="comments"><i class="fa fa-comment"></i><a href="VgRcpDtail.jsp#comments">27</a></div>
											</div>
										</div>
									</div>
								</div>
								<!--item-->
								
								<!--item-->
								<div class="entry one-third">
									<figure>
										<img src="resources/images/img.jpg" alt="" />
										<figcaption><a href="VgRcpDtail.jsp"><i class="icon icon-themeenergy_eye2"></i> <span>View recipe</span></a></figcaption>
									</figure>
									<div class="container">
										<h2><a href="VgRcpDtail.jsp">Spicy Morroccan prawns with cherry tomatoes</a></h2> 
										<div class="actions">
											<div>
												<div class="difficulty"><i class="ico i-hard"></i><a href="#">hard</a></div>
												<div class="likes"><i class="fa fa-heart"></i><a href="#">10</a></div>
												<div class="comments"><i class="fa fa-comment"></i><a href="VgRcpDtail.jsp#comments">27</a></div>
											</div>
										</div>
									</div>
								</div>
								<!--item-->
								
								<!--item-->
								<div class="entry one-third">
									<figure>
										<img src="resources/images/img.jpg" alt="" />
										<figcaption><a href="VgRcpDtail.jsp"><i class="icon icon-themeenergy_eye2"></i> <span>View recipe</span></a></figcaption>
									</figure>
									<div class="container">
										<h2><a href="VgRcpDtail.jsp">Super easy blueberry cheesecake</a></h2> 
										<div class="actions">
											<div>
												<div class="difficulty"><i class="ico i-easy"></i><a href="#">easy</a></div>
												<div class="likes"><i class="fa fa-heart"></i><a href="#">10</a></div>
												<div class="comments"><i class="fa fa-comment"></i><a href="VgRcpDtail.jsp#comments">27</a></div>
											</div>
										</div>
									</div>
								</div>
								<!--item-->
							</div>
						</div>
						<!--//my recipes-->
						
						
						<!--my favorites-->
						<div class="tab-content" id="favorites">
							<div class="entries row">
								<!--item-->
								<div class="entry one-third">
									<figure>
										<img src="resources/images/img.jpg" alt="" />
										<figcaption><a href="VgRcpDtail.jsp"><i class="icon icon-themeenergy_eye2"></i> <span>View recipe</span></a></figcaption>
									</figure>
									<div class="container">
										<h2><a href="VgRcpDtail.jsp">Thai fried rice with fruit and vegetables</a></h2> 
										<div class="actions">
											<div>
												<div class="difficulty"><i class="ico i-medium"></i><a href="#">medium</a></div>
												<div class="likes"><i class="fa fa-heart"></i><a href="#">10</a></div>
												<div class="comments"><i class="fa fa-comment"></i><a href="VgRcpDtail.jsp#comments">27</a></div>
											</div>
										</div>
									</div>
								</div>
								<!--item-->
								
								<!--item-->
								<div class="entry one-third">
									<figure>
										<img src="resources/images/img.jpg" alt="" />
										<figcaption><a href="VgRcpDtail.jsp"><i class="icon icon-themeenergy_eye2"></i> <span>View recipe</span></a></figcaption>
									</figure>
									<div class="container">
										<h2><a href="VgRcpDtail.jsp">Spicy Morroccan prawns with cherry tomatoes</a></h2> 
										<div class="actions">
											<div>
												<div class="difficulty"><i class="ico i-hard"></i><a href="#">hard</a></div>
												<div class="likes"><i class="fa fa-heart"></i><a href="#">10</a></div>
												<div class="comments"><i class="fa fa-comment"></i><a href="VgRcpDtail.jsp#comments">27</a></div>
											</div>
										</div>
									</div>
								</div>
								<!--item-->
								
								<!--item-->
								<div class="entry one-third">
									<figure>
										<img src="resources/images/img.jpg" alt="" />
										<figcaption><a href="VgRcpDtail.jsp"><i class="icon icon-themeenergy_eye2"></i> <span>View recipe</span></a></figcaption>
									</figure>
									<div class="container">
										<h2><a href="VgRcpDtail.jsp">Super easy blueberry cheesecake</a></h2> 
										<div class="actions">
											<div>
												<div class="difficulty"><i class="ico i-easy"></i><a href="#">easy</a></div>
												<div class="likes"><i class="fa fa-heart"></i><a href="#">10</a></div>
												<div class="comments"><i class="fa fa-comment"></i><a href="VgRcpDtail.jsp#comments">27</a></div>
											</div>
										</div>
									</div>
								</div>
								<!--item-->
							</div>
						</div>
						<!--//my favorites-->
						
						<!--my posts-->
						<div class="tab-content" id="posts">
							<!--entries-->
							<div class="entries row">
								<!--item-->
								<div class="entry one-third">
									<figure>
										<img src="resources/images/img.jpg" alt="" />
										<figcaption><a href="VgCmuDtail.jsp"><i class="icon icon-themeenergy_eye2"></i> <span>View post</span></a></figcaption>
									</figure>
									<div class="container">
										<h2><a href="VgCmuDtail.jsp">Barbeque party</a></h2> 
										<div class="actions">
											<div>
												<div class="date"><i class="fa fa-calendar"></i><a href="#">22 Dec 2014</a></div>
												<div class="comments"><i class="fa fa-comment"></i><a href="VgCmuDtail.jsp#comments">27</a></div>
											</div>
										</div>
										<div class="excerpt">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod. Lorem ipsum dolor sit amet . . . </p>
										</div>
									</div>
								</div>
								<!--item-->
								
								<!--item-->
								<div class="entry one-third">
									<figure>
										<img src="resources/images/img.jpg" alt="" />
										<figcaption><a href="VgCmuDtail.jsp"><i class="icon icon-themeenergy_eye2"></i> <span>View post</span></a></figcaption>
									</figure>
									<div class="container">
										<h2><a href="VgCmuDtail.jsp">How to make sushi</a></h2> 
										<div class="actions">
											<div>
												<div class="date"><i class="fa fa-calendar"></i><a href="#">22 Dec 2014</a></div>
												<div class="comments"><i class="fa fa-comment"></i><a href="VgCmuDtail.jsp#comments">27</a></div>
											</div>
										</div>
										<div class="excerpt">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod. Lorem ipsum dolor sit amet . . . </p>
										</div>
									</div>
								</div>
								<!--item-->
								
								<!--item-->
								<div class="entry one-third">
									<figure>
										<img src="resources/images/img.jpg" alt="" />
										<figcaption><a href="VgCmuDtail.jsp"><i class="icon icon-themeenergy_eye2"></i> <span>View post</span></a></figcaption>
									</figure>
									<div class="container">
										<h2><a href="VgCmuDtail.jsp">Make your own bread</a></h2> 
										<div class="actions">
											<div>
												<div class="date"><i class="fa fa-calendar"></i><a href="#">22 Dec 2014</a></div>
												<div class="comments"><i class="fa fa-comment"></i><a href="VgCmuDtail.jsp#comments">27</a></div>
											</div>
										</div>
										<div class="excerpt">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod. Lorem ipsum dolor sit amet . . . </p>
										</div>
									</div>
								</div>
								<!--item-->
							</div>
							<!--//entries-->
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
    <%@ include file="resources/Footer.jsp" %>
    <!--//footer-->	
	
	<script src="resources/js/jquery-3.1.0.min.js"></script>
	<script src="resources/js/jquery.uniform.min.js"></script>
	<script src="resources/js/jquery.slicknav.min.js"></script>
	<script src="resources/js/scripts.js"></script>
</body>
</html>


