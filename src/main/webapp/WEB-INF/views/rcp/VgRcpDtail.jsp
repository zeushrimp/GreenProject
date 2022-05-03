<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='f' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<!-- <link rel="stylesheet" href="../../../resources/css/styleHeader.css" /> -->
<!-- <link rel="stylesheet" href="../../../resources/css/styleFooter.css" /> -->
<link rel="stylesheet" href="../../../resources/css/icons.css" />
<link rel="stylesheet" href="../../../resources/css/style.css" />
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

.cmutitle {
	border: 1px;
	float: left;
	width: 100%;
	margin-bottom: 10px;
	background: #fff;
	border-radius: 3px;
}

.cmutitle .lead {
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
	<%@ include file="../../../Header.jsp"%>
	<div style="padding-top: 200px" />


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
				<input name="RCP_PK" type="hidden" value="${RcpDtail.RCP_PK}" />
				<header class="s-title">
					<h1>${RcpDtail.RCP_TITLE }</h1>
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
										<strong>${RcpDtail.RCP_CONTENT }</strong>
									</p>
									<p></p>
								</div>
								<div class="instructions">
									<ol>
										<c:forEach items="${detailRcp_cont }" var="detailRcp_cont">
											<li>${detailRcp_cont.RCPCT_CONTENT }</li>
										</c:forEach>
									</ol>
								</div>
							</article>
							<!--//레시피 상세-->

							<!--레시피 재료 및 요건-->
							<article class="one-third">
								<dl class="basic" id="time">
									<dt>조리시간</dt>
									<dd>${RcpDtail.RCP_CT }</dd>
									<dt>조리분량</dt>
									<dd>${RcpDtail.RCP_COUNT }</dd>
								</dl>

								<dl class="user" id="type">
									<dt>채식유형</dt>
									<dd>${RcpDtail.RCP_VEGE }</dd>
									<dt>작성자</dt>
									<dd>${RcpDtail.USR_ID }</dd>
									
									<f:choose>
									<f:when test="${usr_Id != null }">
									<dt>좋아요 수 ( ${RcpDtail.RCP_LIKE } )</dt>
									<dd id="likes" style="padding: 0 0px">
										<button style="padding: 9px; width: 100%">로그인좋아요</button>
									</dd>
									<dt>스크랩 하기</dt>
									<dd id="scrap" style="padding: 0 0px">
										<button style="padding: 9px; width: 100%">로그인스크랩</button>
									</dd>
									</f:when>
									
									<f:otherwise>
									<dt>좋아요 수 ( ${RcpDtail.RCP_LIKE } )</dt>
									<dd id="likes" style="padding: 0 0px">
										<button style="padding: 9px; width: 100%" onclick="non_log_like()" >좋아요</button>
									</dd>
									<dt>스크랩 하기</dt>
									<dd id="scrap" style="padding: 0 0px">
										<button style="padding: 9px; width: 100%" onclick="non_log_scrap()" >스크랩</button>
									</dd>
									</f:otherwise>
									</f:choose>
								</dl>

								<dl class="ingredients">
									<c:forEach items="${detailRcp_reso }" var="detailRcp_reso">
										<dt>${detailRcp_reso.RCPRS_AMOUNT }</dt>
										<dd>${detailRcp_reso.RCPRS_TITLE }</dd>
									</c:forEach>
								</dl>
							</article>
							<!--//레시피 재료 및 요건-->
						</div>

						<input type="hidden" name="USR_ID" value="${sessionScope.usr_Id }">

						<div class="Rcprd">
							<!-- 레시피 삭제하기 -->
							<c:set var="USR_ADMIN" value="${sessionScope.usr_Admin }" />
							<c:set var="USR_ID" value="${sessionScope.usr_Id }" />
							<c:set var="writer_ID" value="${RcpDtail.USR_ID }" />
							<c:if test="${USR_ADMIN == 1 || USR_ID eq writer_ID}">

								<div class="R-div">
									<a class="RCPdelete"
										href="/rcp/VgRcpDel.do?RCP_PK=${RcpDtail.RCP_PK}"> 
									<input
										type="button" name="deleteRcp" id="deleteRcp"
										style="width: 130px;" value="삭제하기" />
									</a>
								</div>
								<!-- 레시피 수정하기 -->
								<div class="R-div">
									<a class="RCPrewrite"
										href="/rcp/VgRcpRew.do?RCP_PK=${RcpDtail.RCP_PK}">
									<input
										type="button" name="rewriteRcp" id="rewriteRcp"
										style="width: 130px;" value="수정하기" />
									</a>
								</div>

							</c:if>
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

	</main>
	<!--//main-->

	<!--footer-->
	<%@ include file="../../../Footer.jsp"%>
	<!--//footer-->

	<script type="text/javascript">
		function deleteRcp() {
			alert("레시피가 삭제되었습니다.");
		}
	</script>







</body>
</html>


