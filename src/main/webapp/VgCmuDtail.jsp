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
	
<link rel="stylesheet" href="resources/css/styleHeader.css" />
<link rel="stylesheet" href="resources/css/styleFooter.css" />
	<link rel="stylesheet" href="resources/css/icons.css" />
	<link href="http://resources/fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800" rel="stylesheet">
	<script src="https://use.fontawesome.com/e808bf9397.js"></script>
	<link rel="shortcut icon" href="resources/images/favicon.ico" />
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
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
				<!-- 메인, 커뮤니티 링크 -->
					<li><a href="VgMain" title="Home">메인</a></li>
					<li><a href="VgCmuList" title="Blog">커뮤니티</a></li>
					<li>커뮤니티 상세</li>
				</ul>
			</nav>
			<!--//breadcrumbs-->
			
			<!--row-->
			<div class="row">
				<header class="s-title">
					<h1>커뮤니티 상세 글</h1>
				</header>
				
				
				<!--content-->
				<section class="content three-fourth">
					<!--blog entry-->
					<article class="post single">
						<div class="entry-meta">
							<div class="date">
								<span class="day">29</span> 
								<span class="my">June, 2014</span>
							</div>
							<div class="avatar">
								<!-- 작성자 마이페이지 링크 -->
								<a href="VgMpgMain.jsp"><img src="resources/images/avatar.jpg" alt="" /><span>마이페이지..?</span></a>
							</div>
						</div>
						<div class="container">
							<div class="entry-featured"><a href="#"><img src="resources/images/img.jpg" alt="" /></a></div>
							<div class="entry-content">
								<p class="lead">작성한 글 보여주는 위치 </p>
								</div>
						</div>
					</article>
					<!--//blog entry-->
					
					<!--comments-->
					<div class="comments" id="comments">
						<h2>5 comments </h2>
						<ol class="comment-list">
							<!--comment-->
							<li class="comment depth-1">
								<!-- 작성자 마이페이지 링크 -->
								<div class="avatar"><a href="VgMpgMain.jsp"><img src="resources/images/avatar.jpg" alt="" /></a></div>
								<div class="comment-box">
									<div class="comment-author meta"> 
										<strong>Kimberly C.</strong> said 1 month ago <a href="#" class="comment-reply-link"> Reply</a>
									</div>
									<div class="comment-text">
										<p>댓글 1</p>
									</div>
								</div> 
							</li>
							<!--//comment-->
							
							<!--comment-->
							<li class="comment depth-1">
								<!-- 작성자 마이페이지 링크 -->
								<div class="avatar"><a href="VgMpgMain.jsp"><img src="resources/images/avatar.jpg" alt="" /></a></div>
								<div class="comment-box">
									<div class="comment-author meta"> 
										<strong>Alex J.</strong> said 1 month ago <a href="#" class="comment-reply-link"> Reply</a>
									</div>
									<div class="comment-text">
										<p> 댓글 2</p>
									</div>
								</div> 
							</li>
							<!--//comment-->
							
							<!--comment-->
							<li class="comment depth-2">
								<!-- 작성자 마이페이지 링크 -->
								<div class="avatar"><a href="VgMpgMain.jsp"><img src="resources/images/avatar.jpg" alt="" /></a></div>
								<div class="comment-box">
									<div class="comment-author meta"> 
										<strong>Kimberly C.</strong> said 1 month ago <a href="#" class="comment-reply-link"> Reply</a>
									</div>
									<div class="comment-text">
										<p>댓글 2-1</p>
									</div>
								</div> 
							</li>
							<!--//comment-->
							
							<!--comment-->
							<li class="comment depth-3">
								<!-- 작성자 마이페이지 링크 -->
								<div class="avatar"><a href="VgMpgMain.jsp"><img src="resources/images/avatar.jpg" alt="" /></a></div>
								<div class="comment-box">
									<div class="comment-author meta"> 
										<strong>Alex J.</strong> said 1 month ago <a href="#" class="comment-reply-link"> Reply</a>
									</div>
									<div class="comment-text">
										<p>댓글2-2</p>
									</div>
								</div> 
							</li>
							<!--//comment-->
							
							<!--comment-->
							<li class="comment depth-1">
								<!-- 작성자 마이페이지 링크 -->
								<div class="avatar"><a href="VgMpgMain.jsp"><img src="resources/images/avatar.jpg" alt="" /></a></div>
								<div class="comment-box">
									<div class="comment-author meta"> 
										<strong>Denise M.</strong> said 1 month ago <a href="#" class="comment-reply-link"> Reply</a>
									</div>
									<div class="comment-text">
										<p>댓글 3</p>
									</div>
								</div> 
							</li>
							<!--//comment-->
						</ol>
					</div>
					<!--//comments-->
					
					<!--respond-->
					<div class="comment-respond" id="respond">
						<h2>댓글창</h2>
						<div class="container">
							<p><strong>주의 :</strong> 예시) 욕설은 작성이 불가합니다.</p>
							<p>Your email address will not be published. Required fields are signed with <span class="req">*</span></p>
							<form>
								<div class="f-row">
									<textarea></textarea>
								</div>
								
								<div class="f-row">
									<div class="third bwrap">
										<input type="submit" value="댓글 작성" />
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- 글 목록가는 링크 -->
					<a href="VgCmuList.jsp"> 글 목록 가기</a>
					<!--//respond-->
				</section>
				<!--//content-->
			
				<!--right sidebar-->
<!-- 				<aside class="sidebar one-fourth">
					<div class="widget">
						<ul class="categories right">
							<li><a href="#">All recipes</a></li>
							<li class="active"><a href="#">Tips and Tricks</a></li>
							<li><a href="#">Events</a></li>
							<li><a href="#">Inspiration</a></li>
							<li><a href="#">Category name</a></li>
							<li><a href="#">Lorem ipsum</a></li>
							<li><a href="#">Dolor</a></li>
							<li><a href="#">Sit amet</a></li>
						</ul>
					</div>
					<div class="widget">
						<h3>Advertisment</h3>
						<a href="#"><img src="resources/images/advertisment.jpg" alt="" /></a>
					</div>
				</aside> -->
				<!--//right sidebar-->
			</div>
			<!--//row-->
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


