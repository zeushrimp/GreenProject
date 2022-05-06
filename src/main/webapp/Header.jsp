<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='f' uri="http://java.sun.com/jsp/jstl/core"%>
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

<link
	href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800"
	rel="stylesheet">
<script src="https://use.fontawesome.com/e808bf9397.js"></script>
<link rel="shortcut icon" href="/resources/images/favicon.ico" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->



<!-- 해당 페이지의 헤더 탭에 색깔이 들어오도록 해주는 js. 헤더의 li에 준 id를 addClass앞의 괄호에만 넣어주세요 -->
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

<style type="text/css">
.user-nav li {
	float: right;
	width: 25%;
	height: 90px;
	font-size: 11px;
	font-weight: 700;
	text-transform: uppercase;
	text-align: center;
	overflow: hidden;
}

.user-nav {
	float: right;
	width: 270px;
	position: absolute;
	top: 0;
	right: 0;
}

.user-nav .verydark.current-menu-item a, .user-nav .verydark:hover a {
	color: #185E2A;
}

.user-nav .verydark a {
	background: #185E2A;
}
</style>


</style>

</head>
<body class="home">

	<!--preloader-->
	<div class="preloader">
		<div class="spinner"></div>
	</div>
	<!--//preloader-->
	<!--header-->
	<header class="head" role="banner">
		<!--wrap-->
		<div class="wrap clearfix">
			<a href="../../test.jsp" title="SocialChef" class="logo" style="margin-right: 0"><img
				src="../resources/images/ico/logo.png" alt="SocialChef logo" /></a>

			<nav class="main-nav" role="navigation" id="menu">
				<ul style="width:600px; display:flex;justify-content: space-evenly;">
					<li><a href="../../test.jsp" title="Home"><span>메인</span></a></li>
					<li><a href="/rcp/VgRcpList.do" title="Recipes"><span>레시피</span></a>
						<ul>
							<li><a href="/rcp/VgRcpRegst_ck.do" title="RegRecipes">레시피 등록 </a></li>
							<li><a href="/rcp/VgRcpList.do" title="Recipe">레시피 목록</a></li>
						</ul></li>
					<li><a href="/cmu/VgCmuList.do" title="Community"><span>커뮤니티</span></a>
						<ul>
							<li><a href="/cmu/VgCmuRegst.do" title="Community post">게시글 등록</a></li>
							<li><a href="/cmu/VgCmuList.do" title="Community list">게시글 목록</a></li>
						</ul></li>
					<li><a href="#" title="Vegcipe"><span>냉장고 레시피</span></a></li>
					<li><a href="/mpg/VgMpgChat.do" title="chat"><span>실시간 채팅</span></a></li>
			</nav>

			<nav class="user-nav" role="navigation">
				<ul>
					<li class="light"><a href="/rcp/VgRcpList.do"
						title="Search for recipes"><i
							class="icon icon-themeenergy_search"></i> <span>레시피<br>검색</span></a></li>
					<li class="medium"><a href="/rcp/VgRcpRegst_ck.do"
						title="Submit a recipe"><i
							class="icon icon-themeenergy_fork-spoon"></i> <span>레시피<br>등록</span></a></li>
					<li class="dark"><f:choose>
							<f:when test="${usr_Admin == 1}">
								<a href='/adm/VgAdmMain.do' onfocus="this.blur()" class="mar"><i
									class="icon icon-themeenergy_ufo-face"></i><span>관리자<br>페이지</span></a>
							</f:when>
							<f:otherwise>
								<a href="/mpg/VgMpgMain.do" onfocus="this.blur()" class="mar"><i
									class="icon icon-themeenergy_chef-hat"></i><span>마이<br>페이지</span></a>
							</f:otherwise>
						</f:choose></li>
					<li class="verydark"><f:choose>
							<f:when test="${usr_Id != null}">
								<a href='/usr/VgUsrLogout.do' onfocus="this.blur()" class="mar"><i
									class="icon icon-themeenergy_cry"></i><span>로그아웃</span></a>
							</f:when>
							<f:otherwise>
								<a href="/usr/VgUsrLogin.do" onfocus="this.blur()" class="mar"><i
									class="icon icon-themeenergy_smile"></i><span>로그인</span></a>
							</f:otherwise>
						</f:choose></li>

				</ul>
			</nav>
		</div>
	</header>
	<!--//header-->

</body>
</html>