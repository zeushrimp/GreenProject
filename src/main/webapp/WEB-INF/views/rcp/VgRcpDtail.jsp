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

<link rel="stylesheet" href="../../../resources/css/styleHeader.css" />
<link rel="stylesheet" href="../../../resources/css/styleFooter.css" />
<link rel="stylesheet" href="../../../resources/css/icons.css" />
<link
	href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800"
	rel="stylesheet">
<script src="https://use.fontawesome.com/e808bf9397.js"></script>
<link rel="shortcut icon" href="../../../resources/images/favicon.ico" />
<script src="/resources/js/jquery-3.1.0.min.js"></script>
<script src="/resources/js/jquery.uniform.min.js"></script>
<script src="/resources/js/jquery.slicknav.min.js"></script>
<script src="/resources/js/scripts.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style type="text/css">
.three-fourth {
	width: 100%;
}

.comments .depth-4 {
	padding-left: 180px;
	margin-left: 0;
}

.depth-4 .avatar {
	left: 90px;
}

.comments .depth-5 {
	padding-left: 270px;
	margin-left: 0;
}

.depth-5 .avatar {
	left: 180px;
}

.cumtitle {
	border: 1px;
	float: left;
	width: 100%;
	margin-bottom: 10px;
	background: #fff;
	border-radius: 3px;
}

.cumtitle .lead {
	font-size: 30px;
	font-weight: 500;
	padding: 0px;
}

.cmurlink {
	display: block;
	align: center;
}

.cmurlink .R-rlink {
	cursor: pointer;
	padding: 11px 14px;
	background: #fff;
	color: #FF7B74;
	border-radius: 3px;
}

.post .entry-content {
	float: left;
	padding: 17px 20px 0;
	min-height: 600px;
}

.post .container {
	float: left;
	width: 1079px !important;
	padding: 0;
	border-radius: 3px;
}


.Rcprd .RCPrewrite {
	cursor: pointer;
	background: #fff;
	color: #FF7B74;
	border-radius: 3px;
}

.Rcprd .RCPdelete {
	cursor: pointer;
	background: #fff;
	color: #FF7B74;
	border-radius: 3px;
}

.R-div {
	float: right;
	padding-bottom: 15px;
	padding-right: 15px;
}

html, body {
	overflow: auto;
	height: 100%;
}

.modal {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: none;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal.show {
	overflow: hidden;
	display: block;
	position: fixed;
	margin: 0px;
	overflow: hidden;
}

.modal_body {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 600px;
	height: 400px;
	padding: 40px;
	text-align: center;
	background-color: rgb(255, 255, 255);
	border-radius: 10px;
	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
	transform: translateX(-50%) translateY(-50%);
}
</style>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<body class="recipePage">




	<!--preloader-->
	<div class="preloader">
		<div class="spinner"></div>
	</div>
	<!--//preloader-->

	<!--header-->
	<header class="head" role="banner">
		<!--wrap-->
		<div class="wrap clearfix">
			<a href="index.html" title="SocialChef" class="logo"><img
				src="/resources/images/ico/logo.png" alt="SocialChef logo" /></a>

			<nav class="main-nav" role="navigation" id="menu">
				<ul>
					<li class="current-menu-item"><a href="index.html"
						title="Home"><span>Home</span></a></li>
					<li><a href="recipes.html" title="Recipes"><span>Recipes</span></a>
						<ul>
							<li><a href="recipes2.html" title="Recipes 2">Recipes 2</a></li>
							<li><a href="recipe.html" title="Recipe">Recipe</a></li>
						</ul></li>
					<li><a href="blog.html" title="Blog"><span>Blog</span></a>
						<ul>
							<li><a href="blog_single.html" title="Blog post">Blog
									post</a></li>
						</ul></li>
					<li><a href="#" title="Pages"><span>Pages</span></a>
						<ul>
							<li><a href="left_sidebar.html" title="Left sidebar page">Left
									sidebar page</a></li>
							<li><a href="right_sidebar.html" title="Right sidebar page">Right
									sidebar page</a></li>
							<li><a href="two_sidebars.html" title="Both sidebars page">Both
									sidebars page</a></li>
							<li><a href="full_width.html" title="Full width page">Full
									width page</a></li>
							<li><a href="login.html" title="Login page">Login page</a></li>
							<li><a href="register.html" title="Register page">Register
									page</a></li>
							<li><a href="error404.html" title="Error page">Error
									page</a></li>
						</ul></li>
					<li><a href="#" title="Features"><span>Features</span></a>
						<ul>
							<li><a href="icons.html" title="Icons">Icons</a></li>
							<li><a href="grid.html" title="Grid">Grid</a></li>
							<li><a href="shortcodes.html" title="Shortcodes">Shortcodes</a></li>
							<li><a href="pricing.html" title="Pricing tables">Pricing
									tables</a></li>
						</ul></li>
					<li><a href="contact.html" title="Contact"><span>Contact</span></a></li>
					<li><a
						href="http://themeforest.net/item/socialchef-social-recipe-html-template/8568727?ref=themeenergy"
						title="Buy now"><span>Buy now</span></a></li>
				</ul>
			</nav>

			<nav class="user-nav" role="navigation">
				<ul>
					<li class="light"><a href="/rcp/VgRcpDtail.do"
						title="Search for recipes"><i
							class="icon icon-themeenergy_search"></i> <span>Search for
								recipes</span></a></li>
					<li class="medium"><a href="/mpg/VgMpgMain.do"
						title="My account"><i class="icon icon-themeenergy_chef-hat"></i>
							<span>My account</span></a></li>
					<li class="dark"><a href="/rcp/VgRcpRegst.do"
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
					<li><a href="/VgMain.jsp" title="Home">메인</a></li>
					<li><a href="VgRcpList.do" title="Recipes">레시피</a></li>
					<li>레시피 상세</a></li>
				</ul>
			</nav>
			<!--//breadcrumbs-->

			<!--row-->
			<div class="row">
				<header class="s-title">
					<h1>비건 렌틸 타코</h1>
				</header>
				<!--content-->
				<section class="content three-fourth">
					<!--recipe-->
					<div class="recipe">
						<div class="row">
							<!--레시피 상세-->
							<article class="two-third">
								<div class="image">
									<a href="#"><img src="/resources/images/img.jpg" alt="" /></a>
								</div>
								<div class="intro">
									<p>
										<strong>레시피 한줄 소개</strong>
									</p>
									<p></p>
								</div>
								<div class="instructions">
									<ol>
										<li>물 2컵에 렌틸콩 2컵을 넣고 20분간 잘 저으면서 끓여준다.</li>
										<li>올리브 오일을 두른 후라이팬에 양파, 마늘을 넣고 2~3분간 볶는다.</li>
										<li>나머지 재료들을 넣고 볶아준 후 접시에 담는다.</li>
										<li>나머지 재료들을 넣고 볶아준 후 접시에 담는다.</li>
									</ol>
								</div>
							</article>
							<!--//레시피 상세-->

							<!--레시피 재료 및 요건-->
							<article class="one-third">
								<dl class="basic" id="time">
									<dt>조리시간</dt>
									<dd>10 분</dd>
									<dt>조리분량</dt>
									<dd>3 인분</dd>
								</dl>

								<dl class="user" id="type">
									<dt>채식유형</dt>
									<dd>비건</dd>
									<dt>작성자</dt>
									<dd>(닉네임)Jennifer W.</dd>
									<dt>좋아요수</dt>
									<dd id="likes" style="padding: 0 0px">
										<button style="padding: 9px; width: 100%">좋아요</button>
									</dd>
									<dt>스크랩 하기</dt>
									<dd id="scrap" style="padding: 0 0px">
										<button style="padding: 9px; width: 100%">스크랩</button>
									</dd>
								</dl>

								<dl class="ingredients">
									<dt>300g</dt>
									<dd>삶은 올가니카 렌틸콩</dd>
									<dt>200g</dt>
									<dd>잘게 자른 양파</dd>
									<dt>200g</dt>
									<dd>잘게 자른 토마토</dd>
									<dt>2</dt>
									<dd>큐민</dd>
									<dt>1 tbsp</dt>
									<dd>마늘</dd>
									<dt>200 g</dt>
									<dd>오레가노</dd>
									<dt>100 ml</dt>
									<dd>올리브오일</dd>
									<dt>handful</dt>
									<dd>라임</dd>
									<dt>handful</dt>
									<dd>소금</dd>
									<dt>handful</dt>
									<dd>카옌페퍼</dd>
								</dl>
							</article>
							<!--//레시피 재료 및 요건-->
						</div>



						<div class="Rcprd">
							<!-- 레시피 삭제하기 (비밀번호 일치할때) -->
							<div class="R-div">
								<a class="RCPdelete" href="#time">
									<button type="button" id="btn-open-RCPd" style="width: 130px">삭제하기</button>
								</a>
							</div>
							<!-- 레시피 수정하기 (비밀번호 일치할때) -->
							<div class="R-div">
								<a class="RCPrewrite" href="#time">
									<button type="button" id="btn-open-RCPr" style="width: 130px">수정하기</button>
								</a>
							</div>
						</div>
					</div>
					<!--//recipe-->

					<!--comments-->
					<div class="comments" id="comments">
						<h2>5 comments</h2>
						<ol class="comment-list">
							<!--comment-->
							<li class="comment depth-1">
								<!-- 작성자 마이페이지 링크 -->
								<div class="avatar">
									<a href="VgMpgMain.jsp"><img
										src="/resources/images/avatar.jpg" alt="" /></a>
								</div>
								<div class="comment-box">
									<div class="comment-author meta">
										<strong>Kimberly C.</strong> said 1 month ago <a href="#"
											class="comment-reply-link"> Reply</a>
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
								<div class="avatar">
									<a href="VgMpgMain.jsp"><img
										src="/resources/images/avatar.jpg" alt="" /></a>
								</div>
								<div class="comment-box">
									<div class="comment-author meta">
										<strong>Alex J.</strong> said 1 month ago <a href="#"
											class="comment-reply-link"> Reply</a>
									</div>
									<div class="comment-text">
										<p>댓글 2</p>
									</div>
								</div>
							</li>
							<!--//comment-->

							<!--comment-->
							<li class="comment depth-4">
								<!-- 작성자 마이페이지 링크 -->
								<div class="avatar">
									<a href="VgMpgMain.jsp"><img
										src="/resources/images/avatar.jpg" alt="" /></a>
								</div>
								<div class="comment-box">
									<div class="comment-author meta">
										<strong>Kimberly C.</strong> said 1 month ago <a href="#"
											class="comment-reply-link"> Reply</a>
									</div>
									<div class="comment-text">
										<p>댓글 2-1</p>
									</div>
								</div>
							</li>
							<!--//comment-->

							<!--comment-->
							<li class="comment depth-5">
								<!-- 작성자 마이페이지 링크 -->
								<div class="avatar">
									<a href="VgMpgMain.jsp"><img
										src="/resources/images/avatar.jpg" alt="" /></a>
								</div>
								<div class="comment-box">
									<div class="comment-author meta">
										<strong>Alex J.</strong> said 1 month ago <a href="#"
											class="comment-reply-link"> Reply</a>
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
								<div class="avatar">
									<a href="VgMpgMain.jsp"><img
										src="/resources/images/avatar.jpg" alt="" /></a>
								</div>
								<div class="comment-box">
									<div class="comment-author meta">
										<strong>Denise M.</strong> said 1 month ago <a href="#"
											class="comment-reply-link"> Reply</a>
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
							<p>
								<strong>주의 :</strong> 욕설은 작성이 불가합니다.<span class="req">*</span>
							</p>
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

					<!--//respond-->
				</section>
				<!--//content-->

			</div>
			<!--//row-->

		</div>
		<!--//wrap-->

		<!-- 모달 -->
		<div class="modal" id="rewrite-modal">
			<div class="modal_body">수정을 원하시면 비밀번호를 입력해주세요</div>

		</div>

		<div class="modal" id="delete-modal">
			<div class="modal_body">삭제를 원하시면 비밀번호를 입력해주세요</div>
		</div>
		<!--//모달 -->

	</main>
	<!--//main-->

	<!--footer-->
	<%@ include file="/resources/Footer.jsp"%>
	<!--//footer-->



	<script>
      const body = document.querySelector('body');
      const remodal = document.querySelector('#rewrite-modal');
      const demodal = document.querySelector('#delete-modal');
      const btnOpenModalr = document.querySelector('#btn-open-RCPr');
      const btnOpenModald = document.querySelector('#btn-open-RCPd');
      
      btnOpenModalr.addEventListener('click', () => {
        remodal.classList.toggle('show');

        if (remodal.classList.contains('show')) {
          body.style.overflow = 'hidden';
        }
      });
      
      remodal.addEventListener('click', (event) => {
          if (event.target === remodal) {
            remodal.classList.toggle('show');

            if (!remodal.classList.contains('show')) {
              body.style.overflow = 'auto';
            }
          }
        });
      
      btnOpenModald.addEventListener('click', () => {
          demodal.classList.toggle('show');
			
          if (demodal.classList.contains('show')) {
            body.style.overflow = 'hidden';
          }
        });

      demodal.addEventListener('click', (event) => {
        if (event.target === demodal) {
          demodal.classList.toggle('show');

          if (!demodal.classList.contains('show')) {
            body.style.overflow = 'auto';
          }
        }
      });
    </script>

</body>
</html>


