<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="SocialChef - Social Recipe HTML Template" />
	<meta name="description" content="SocialChef - Social Recipe HTML Template">
	<meta name="author" content="themeenergy.com">
	
	<title>SocialChef</title>
	
	<link rel="stylesheet" href="resources/css/style.css" />
	<link rel="stylesheet" href="resources/css/icons.css" />
	<link href="http://resources/fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800" rel="stylesheet">
	<script src="https://use.fontawesome.com/e808bf9397.js"></script>
	<link rel="shortcut icon" href="resources/images/favicon.ico" />

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	  
	<script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
	<script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summernote/summernote-lite.css">
		<style type="text/css">
		.post .container-cmu {width:100%;}
		.three-fourth {width: 100%;}
		
		.cmurlink{display: block; align: center;}
		.cmurlink .R-rlink {cursor: pointer;  padding: 11px 14px; background: #fff; color: #FF7B74; border-radius: 3px;}
		.post .container {float:left;width: 1079px !important; padding:0; border-radius: 3px;}
	</style>
  <!--  -->
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
		<%@ include file="/resources/Header.jsp" %>
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
					<li>커뮤니티 등록</li>
				</ul>
			</nav>
			<!--//breadcrumbs-->
			
			<!--row-->
			<div class="row">
				<header class="s-title">
					<h1>커뮤니티 글 작성</h1>
				</header>
								
				<!--content-->
				<section class="content three-fourth">
					<!--blog entry-->
					<article class="post single">
					<form>
					<div class="cmucate cumtitle">
						<select name="category" required>
						<option disabled selected style="display: none;">카테고리</option>
						<option>공지</option>
						<option>채식 소식</option>
						<option>동네 맛집</option>
						<option>일상 소식</option>
						<option>운동/건강</option>
						<option>취미 생활</option>
						</select>
					</div>
					<div class="cmucon cumtitle">
						<p><input  type="text" name="cmucomtitle" placeholder="제목을 적어주세요." /></p>
					</div>
					
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
						<div class="container-cmu">
								<div class="container">
								  <textarea class="summernote" name="editordata"></textarea>    
								</div>
								<script>
								$('.summernote').summernote({
									  height: 600,
									  lang: "ko-KR"
									});
								</script>							
								<div class="f-row" style="padding-top: 20px;">
									<div class="third bwrap">
										<input type="submit" value="글 작성" />
									</div>
								</div>
						</div>
						</form>
					</article>
					<!--//blog entry-->

					<!--//respond-->
				</section>
				<div class ="cmurlink">
					<!-- 글 목록가는 링크 -->
					<a class="R-rlink" href="VgCmuList.jsp"> 글 목록 가기</a>
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
	
	<script src="resources/js/jquery-3.1.0.min.js"></script>
	<script src="resources/js/jquery.uniform.min.js"></script>
	<script src="resources/js/jquery.slicknav.min.js"></script>
	<script src="resources/js/scripts.js"></script>
</body>
</html>


