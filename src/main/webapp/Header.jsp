<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='f' uri="http://java.sun.com/jsp/jstl/core" %>
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


<link rel="stylesheet" href="resources/css/icons.css" />
<link rel="stylesheet" href="resources/css/style.css" />
		
<link
	href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800"
	rel="stylesheet">
<script src="https://use.fontawesome.com/e808bf9397.js"></script>
<link rel="shortcut icon" href="resources/images/favicon.ico" />

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
<!--header-->
	<header class="head" role="banner">
		<!--wrap-->
		<div class="wrap clearfix">
			<a href="../../test.jsp" title="SocialChef" class="logo"><img src="../resources/images/ico/logo.png" alt="SocialChef logo" /></a>
			
			<nav class="main-nav" role="navigation" id="menu">
				<ul style="width:400px">
					<li class="current-menu-item"  style="width:33%"><a href="index.html" title="Home"><span>메인</span></a></li>
					<li style="width:33%"><a href="/rcp/VgRcpList.do" title="Recipes"><span>레시피</span></a></li>
					<li style="width:33%"><a href="/cmu/VgCmuList.do" title="Blog"><span>커뮤니티</span></a></li>
					<!-- <li><a href="#" title="Pages"><span>냉장고</span></a>
						<ul>
							<li><a href="left_sidebar.html" title="Left sidebar page">드롭다운 예시 코드</a></li>
							
						</ul>
					</li> -->
				</ul>
			</nav>
			
			<nav class="user-nav" role="navigation" style="width: 360px">
				<ul>
					<li class="dark"><a href="/rcp/VgRcpList.do" title="Search for recipes"><i class="icon icon-themeenergy_search"></i> <span>레시피 검색</span></a></li>
					<li class="dark">
					<f:choose>
						<f:when test="${usr_Admin == 1}">
							<a href='/adm/VgAdmMain.do'
						onfocus="this.blur()" class="mar"><i class="icon icon-themeenergy_chef-hat"></i><span>관리자페이지</span></a>	
						</f:when>
						<f:otherwise>
							<a href="/mpg/VgMpgMain.do" onfocus="this.blur()" class="mar"><i class="icon icon-themeenergy_chef-hat"></i><span>마이페이지</span></a>
						</f:otherwise>	
					</f:choose></li>
					<%-- <f:when test="${usr_id != null}"> --%>
						<li class="dark"><a href="/rcp/VgRcpRegst.do" title="Submit a recipe"><i class="icon icon-themeenergy_fork-spoon"></i> <span>레시피 등록</span></a></li>
					<%-- </f:when>
					<f:otherwise>
						<li class="dark"><a href="" title="Submit a recipe" onclick="needL"><i class="icon icon-themeenergy_fork-spoon"></i> <span>레시피 등록</span></a></li>
					</f:otherwise> --%>
					<li class="dark"><f:choose>
						<f:when test="${usr_Id != null}">
							<a href='/usr/VgUsrLogout.do'
						onfocus="this.blur()" class="mar"><i class="icon icon-themeenergy_fork-spoon"></i><span>로그아웃</span></a>	
						</f:when>
						<f:otherwise>
							<a href="/usr/VgUsrLogin.do"
						onfocus="this.blur()" class="mar"><i class="icon icon-themeenergy_fork-spoon"></i><span>로그인</span></a>
						</f:otherwise>	
					</f:choose>
					</li>
				</ul>
			</nav>
		</div>
	</header>
	<!--//header-->
	<script src="resources/js/jquery-3.1.0.min.js"></script>
	<script src="resources/js/jquery.uniform.min.js"></script>
	<script src="resources/js/jquery.slicknav.min.js"></script>
	<script src="resources/js/scripts.js"></script>
	<script src="resources/js/home.js"></script>
</body>
</html>