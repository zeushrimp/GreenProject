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

<link rel="stylesheet" href="resources/css/styleHeader.css" />
<link rel="stylesheet" href="resources/css/styleFooter.css" />
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







</head>
<body>
	<!--preloader-->
	<div class="preloader">
		<div class="spinner"></div>
	</div>
	<!--//preloader-->


	<%@ include file="resources/Header.jsp"%>

	<!--main-->
	<main class="main" role="main">
		<!--wrap-->
		<div class="wrap clearfix">
			<!--row-->
			<div class="row">
				<!--content-->
				<section class="content center full-width">
					<div class="modal container">
						<h3>로그인</h3>
						<form action="VgMain.jsp" method="post">
							<div class="f-row">



								<input type="text" placeholder="Your username" id="id" name="id" />



							</div>

							<div class="f-row">



								<input type="password" placeholder="Your password" id="password"
									name="password" />



							</div>

							<div class="f-row">
								<input type="checkbox" /> <label>아이디 저장</label>
							</div>

							<div class="f-row bwrap">
								<input type="submit" value="login" />

							</div>

							<p>
								<a href="VgUsrFid.jsp">아이디 찾기</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a
									href="VgUsrFpw.jsp">비밀번호 찾기</a>
							</p>
							<p>
								아직 회원이 아니신가요?&nbsp;<a href="VgUsrRegst.jsp">가입하러 가기</a>
							</p>
					</div>
					</form>
				</section>
				<!--//content-->
			</div>
			<!--//row-->
		</div>
		<!--//wrap-->
	</main>
	<!--//main-->


	<%@ include file="resources/Footer.jsp" %>


	<script src="resources/js/jquery-3.1.0.min.js"></script>
	<script src="resources/js/jquery.uniform.min.js"></script>
	<script src="resources/js/jquery.slicknav.min.js"></script>
	<script src="resources/js/scripts.js"></script>
</body>
</html>


