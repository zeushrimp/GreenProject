<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix='f' uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="../../resources/js/Mpg2.js"></script>
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
	window.onload = function() {
		slideShow();
	}
	var index = 0; //이미지에 접근하는 인덱스

	function slideShow() {
		var i;
		var x = document.getElementsByClassName("slide1"); //slide1에 대한 dom 참조
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none"; //처음에 전부 display를 none으로 한다.
		}
		index++;
		if (index > x.length) {
			index = 1; //인덱스가 초과되면 1로 변경
		}
		x[index - 1].style.display = "block"; //해당 인덱스는 block으로
		setTimeout(slideShow, 4000); //함수를 4초마다 호출

	}
</script>
<style type="text/css">
.three-fourth {
	width: 100%;
}

.album {
	width: 1170px;
	overflow: hidden;
}

.images {
	position: relative;
	display: flex;
}

#img1, #img2, #img3, #img4 {width : 1170px ;}

.next, .next:active, .next:focus {
	width: 100px;
	height: 30px;
	border: none;
	color: white;
	background-color: teal;
	outline: none;
}

.next:hover {
	background-color: turquoise;
}

.next:disabled {
	background-color: gray;
}

.prev, .prev:active, .prev:focus {
	width: 100px;
	height: 30px;
	border: none;
	color: white;
	background-color: teal;
	outline: none;
}

.prev:hover {
	background-color: turquoise;
}

.prev:disabled {
	background-color: gray;
}

.prev {
	float: left;
}

.next {
	float: right;
}
</style>
</head>
<body class="home">

	<!--preloader-->
	<div class="preloader">
		<div class="spinner"></div>
	</div>
	<!--//preloader-->
	<%@ include file="../../../Header.jsp"%>


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


			<body>

				<div class="album">
					<div class="images">
						<img class="slide1" style="max-width: 1170px;" alt=""
							src="../../resources/images/mainImage/1.png"> <img
							class="slide1" style="max-width: 1170px;" alt=""
							src="../../resources/images/mainImage/2.png"> <img
							class="slide1" style="max-width: 1170px;" alt=""
							src="../../resources/images/mainImage/3.png"> <img
							class="slide1" style="max-width: 1170px;" alt=""
							src="../../resources/images/mainImage/4.png">
					</div>
				</div>
			</body>
			<!--row-->
			<div class="row" style="margin: 50px 0 50px 0;">


				<!--content-->
				<section class="content three-fourth" style="padding: 0;">


					<!--cwrap-->
					<div class="cwrap">
						<header class="s-title">
							<h2 class="ribbon bright">오늘의 레시피</h2>
						</header>

						<!--entries-->
						<div class="entries row">
							<c:forEach items="${MNR }" var="vo1">
								<!--item-->
								<div class="entry one-third" style="width: 33.3%">
									<figure>
										<f:choose>
											<f:when test="${vo1.RCP_IMG != null }">
												<img src="data:image/gif;base64,${vo1.RCP_IMG }"
													style="width: 369.59px !important; height: 277.19px !important;" />
											</f:when>
											<f:otherwise>
												<img src="../../resources/images/img.jpg" />
											</f:otherwise>
										</f:choose>
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
												</c:choose> </a>
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
								<div class="entry one-third" style="width: 33.3%">
									<figure>
										<f:choose>
											<f:when test="${vo2.RCP_IMG != null} ">
												<img src="data:image/gif;base64,${vo2.RCP_IMG }"
													style="width: 369.59px !important; height: 277.19px !important;" />
											</f:when>
											<f:otherwise>
												<img src="../../resources/images/img.jpg" />
											</f:otherwise>
										</f:choose>
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
												</c:choose> </a>
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
								<div class="entry one-third" style="width: 33.3%">
									<figure>
										<img src="../../resources/images/rcp_default.png" alt="" />
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
												</c:choose> </a>
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
	<%@ include file="../../../Footer.jsp"%>
	<!--//footer-->




	<script src="../../resources/js/jquery-3.1.0.min.js"></script>
	<script src="../../resources/js/jquery.uniform.min.js"></script>
	<script src="../../resources/js/jquery.slicknav.min.js"></script>
	<script src="../../resources/js/scripts.js"></script>
	<script src="../../resources/js/home.js"></script>
	<script src="../../resources/js/Mpg2.js"></script>

</body>
</html>