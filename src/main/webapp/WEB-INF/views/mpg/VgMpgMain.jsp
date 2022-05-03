<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<%@ include file="../../../Header.jsp"%>
	<div style="padding-top: 200px"></div>
	<!--//header-->

	<!--main-->
	<main class="main" role="main">
		<!--wrap-->
		<div class="wrap clearfix">
			<!--breadcrumbs-->
			<nav class="breadcrumbs">
				<ul>
					<li><a href="../../test.jsp" title="Home">메인</a></li>
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
							<img src="data:image/gif;base64,${mpgdata.USR_PHOTO}" alt=""
								style="width: 500px; height: 250px;" />
						</figure>
						<div class="container">
							<h2 align="center">${mpgdata.USR_NAME}</h2>
						</div>
						<div align="right">
							<a class="btn btn-default" data-target="#modal7" R
								data-toggle="modal">사진바꾸기</a>
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
									<dd>${mpgdata.USR_NAME}</dd>
									<dd
										style="text-align: right; background-color: transparent; width: 30%;">
										<a class="btn btn-default" data-target="#modal1"
											data-toggle="modal">회원탈퇴</a>

									</dd>
									<dt>채식종류</dt>
									<dd>${mpgdata.USR_VEGE}</dd>
									<dd
										style="text-align: right; background-color: transparent; width: 30%;">
										<a class="btn btn-default" data-target="#modal2"
											data-toggle="modal">채식 종류 변경</a>
									</dd>
									<dt>닉네임</dt>
									<dd>${mpgdata.USR_NICK}</dd>
									<dd
										style="text-align: right; background-color: transparent; width: 30%;">
										<a class="btn btn-default" data-target="#modal3"
											data-toggle="modal">닉네임 변경</a>
									</dd>
									<dt>비밀번호</dt>
									<dd>${pwhide}</dd>
									<dd style="display: none;">
										<a id="jjjj2222">${mpgdata.USR_PW}</a>
									</dd>
									<dd
										style="text-align: right; background-color: transparent; width: 30%;">
										<a class="btn btn-default" data-target="#modal4"
											data-toggle="modal">비밀번호 변경</a>
									</dd>
									<dt>주소</dt>
									<dd>${mpgdata.USR_ADDR2}&nbsp;
										${mpgdata.USR_ADDR3}&nbsp;,우편번호 : ${mpgdata.USR_ADDR1}</dd>
									<dd
										style="text-align: right; background-color: transparent; width: 30%;">
										<a class="btn btn-default" data-target="#modal5"
											data-toggle="modal">주소 변경</a>
									</dd>
									<dt>내 등급</dt>
									<dd>${mpgdata.USR_GRADE}</dd>
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
												disabled="disabled"
												onclick='location.href="VgMpgMainRsn.do";' type="button">탈퇴하기</button></span>
									</div>
								</dl>



							</div>
						</div>
						<!--//about-->

						<!--my recipes-->
						<div class="tab-content" id="recipes">
							<div class="entries row">
								<!--item-->


								<c:forEach items="${myrecipes}" var="rcpvo">
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
												<a href="VgRcpDtail.jsp"> <c:choose>
														<c:when test="${fn:length(rcpvo.RCP_TITLE) > 12}">
															<c:out value="${fn:substring(rcpvo.RCP_TITLE,0,11)}" />.... </c:when>
														<c:otherwise>
															<c:out value="${rcpvo.RCP_TITLE}" />
														</c:otherwise>
													</c:choose>
												</a>
											</h2>
											<div class="actions">
												<div>
													<div class="difficulty">
														<i class="ico i-medium"></i><a href="#">medium</a>
													</div>
													<div class="likes">
														<i class="fa fa-heart"></i><a href="#">${rcpvo.RCP_LIKE}</a>
													</div>
													<div class="comments">
														<i class="fa fa-comment"></i><a
															href="VgRcpDtail.jsp#comments">${rcpvo.RCP_COM}</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<!-- css 변경안되게 눈속임 -->
								<div class="entry one-third jaewoocheck1"
									style="visibility: hidden;">
									<figure>
										<img src="/resources/images/img.jpg" alt="" />
										<figcaption></figcaption>
									</figure>
									<div class="container">
										<h2></h2>
										<div class="actions"></div>
									</div>
								</div>
								<!-- css 변경안되게 눈속임 -->
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
								<!-- css 변경안되게 눈속임 -->
								<div class="entry one-third" style="visibility: hidden;">
									<figure>
										<img src="/resources/images/img.jpg" alt="" />
										<figcaption></figcaption>
									</figure>
									<div class="container">
										<h2></h2>
										<div class="actions"></div>
									</div>
								</div>
								<!-- css 변경안되게 눈속임 -->
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
								<c:forEach items="${myposts}" var="cmuvo">
									<c:if test="${myposts==null}">
										<c:out value="jaewoo_css_hidetest3();" />
									</c:if>
									<div class="entry one-third">

										<div class="container">
											<h2>
												<a href="/cmu/VgCmuDtail.do?CMU_PK=${cmuvo.CMU_PK}"> <c:choose>
														<c:when test="${fn:length(cmuvo.CMU_TITLE) > 13}">
															<c:out value="${fn:substring(cmuvo.CMU_TITLE,0,12)}" />.... </c:when>
														<c:otherwise>
															<c:out value="${cmuvo.CMU_TITLE}" />
														</c:otherwise>
													</c:choose>

												</a>
											</h2>
											<div class="actions">
												<div>
													<div class="date">
														<i class="fa fa-calendar"></i><a href="#">${cmuvo.CCM_REG}</a>
													</div>
													<div class="comments">
														<i class="fa fa-comment"></i><a
															href="VgCmuDtail.jsp#comments">${cmuvo.CMU_COM}</a>
													</div>
												</div>
											</div>
											<div class="excerpt">
												<p>
													<c:choose>
														<c:when test="${fn:length(cmuvo.CMU_CONTENT) > 16}">
															<c:out value="${fn:substring(cmuvo.CMU_CONTENT,0,15)}" />.... </c:when>
														<c:otherwise>
															<c:out value="${cmuvo.CMU_CONTENT}" />
														</c:otherwise>
													</c:choose>


												</p>
											</div>
										</div>
									</div>
								</c:forEach>
								<!-- css 변경안되게 눈속임 -->
								<div class="entry one-third jaewoocheck3"
									style="visibility: hidden;">
									<figure>
										<img src="/resources/images/img.jpg" alt="" />
										<figcaption></figcaption>
									</figure>
									<div class="container">
										<h2></h2>
										<div class="actions"></div>
									</div>
								</div>
								<!-- css 변경안되게 눈속임 -->
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
					<!--//row-->
			</section>
			<!--//content-->
		</div>
		<!--//wrap-->
	</main>
	<!--//main-->


	<!--footer-->
	<%@ include file="../../../Footer.jsp"%>
	<!--//footer-->
	<%@ include file="VgMpgEdtMa.jsp"%>
	<%@ include file="VgMpgEdtMc.jsp"%>
	<%@ include file="VgMpgEdtMn.jsp"%>
	<%@ include file="VgMpgEdtMp.jsp"%>
	<%@ include file="VgMpgRsnMr.jsp"%>
	<%@ include file="VgMpgShwMp.jsp"%>
	<%@ include file="VgMpgEdtPt.jsp"%>
	<%@ include file="VgMpgchat.jsp"%>
	<script src="/resources/js/jquery-3.1.0.min.js"></script>
	<script src="/resources/js/jquery.uniform.min.js"></script>
	<script src="/resources/js/jquery.slicknav.min.js"></script>
	<script src="/resources/js/scripts.js"></script>
	<script src="/resources/js/bootstrap.js"></script>
	<script src="/resources/js/Mpg.js"></script>

</body>
</html>


