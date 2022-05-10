<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="SocialChef - Social Recipe HTML Template" />
	<meta name="description" content="SocialChef - Social Recipe HTML Template">
	<meta name="author" content="themeenergy.com">
	
	<title>베지피 커뮤니티</title>
	
	<link rel="shortcut icon" href="/resources/images/favicon.ico" />
	<link rel="stylesheet" href="/resources/css/style.css" />
	<link rel="stylesheet" href="/resources/css/icons.css" />
	<link href="http://resources/fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800" rel="stylesheet">
	<script src="/resources/js/jquery-3.1.0.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/resources/js/cmu_comment.js"></script>
	<script src="https://use.fontawesome.com/e808bf9397.js"></script>
	
	<style type="text/css">
		.three-fourth {width: 100%;}
		.comments .depth-4 {padding-left:180px;margin-left:0;}
		.depth-4 .avatar {left:90px;}
		
		.comments .depth-5 {padding-left:270px; margin-left:0;}
		.depth-5 .avatar {left:180px;}
		
		.cumtitle {border: 1px; float:left; width:92.2%; margin:0px 0px 10px 90px; background: #fff; border-radius: 3px;}
		.cumtitle .lead{font-size:30px; font-weight:500;}

		.cmurlink {display: block; align: center;}
		.cmurlink .R-rlink {cursor: pointer;  padding: 11px 14px; background: #fff; color: #49A54C; border-radius:3px;}
		.post .entry-content {float: left; padding: 17px 20px 0; min-height: 600px;}
		.post .container {float:left; width: 1079px !important; padding:0; border-radius: 3px;}
		.h_button a{cursor: pointer; background: #fff; color: #49A54C; border-radius: 3px;}
		.h_button{float: right; padding-bottom: 15px; padding-right: 15px;}
		.comment-cmulink {float:right;margin-right:3px;top:3px;background:#239961;color:#fff !important;font-size:12px;font-weight:600;text-align:center;padding:6px 13px;-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px;}
		.reply-cmulink {float:right; width:100px; margin-right:5px;top:3px;background:#239961;color:#fff !important;font-size:13px;font-weight:600;text-align:center;padding:6px 13px;-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px;}
		
		/* 모달 css */
		 #modal.modal-overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            
            /* display: flex; */
            display: none;
			z-index: 999;

            flex-direction: column;
			align-items: center; 
/*             justify-content: center; */
            background: rgba(255, 255, 255, 0.25);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(1.5px);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.18);
        }
        #modal .modal-window {
            background: rgba( 69, 139, 197, 0.70 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            width: 400px;
            height: 500px;
            position: relative;
            top: -100px;
            padding: 10px;
            top: 10%;
        }
        #modal .title {
            padding-left: 10px;
            display: inline;
            text-shadow: 1px 1px 2px gray;
            color: white;
            
        }
        #modal .title h2 {
            display: inline;
        }
        #modal .close-area {
            display: inline;
            float: right;
            padding-right: 10px;
            cursor: pointer;
            text-shadow: 1px 1px 2px gray;
            color: white;
        }
        
        #modal .content {
            margin-top: 20px;
            padding: 0px 10px;
            text-shadow: 1px 1px 2px gray;
            color: white;
        }	
        
        .report_text{
/*         	width: 200px; */
/*             height: 300px; */
        
        
        }
		
	</style>
	<!-- HTML5 Shim and Respond.js IE8 support of HTL5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<body class="modal-overlay">
	<!--preloader-->
	<div class="preloader">
		<div class="spinner"></div>
	</div>
	<!--//preloader-->
	<!--header-->
		<%@ include file="../../../Header.jsp" %>
		<div style="padding-top: 200px"></div>		
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
					<input name="CMU_PK" type="hidden" value="${cmuvo.CMU_PK}"/>
						<a class="lead" style="font-size: 25px; font-style: bold; margin:0px 0px 10px 90px; float:left;">${cmuvo.CMU_CATE}</a>
					<div class="cmucon cumtitle">
						<p class="lead" style="padding: 0px !important;">${cmuvo.CMU_TITLE}</p>
					</div>	
					<article class="post single">					
						<div class="entry-meta">
							<div class="date">
								<span class="day"><fmt:formatDate pattern="dd" value="${cmuvo.CMU_REG}"/></span> 
								<span class="my"><fmt:formatDate pattern="yyyy-MM" value="${cmuvo.CMU_REG}"/></span>
							</div>
							<div class="avatar">
								<!-- 작성자 마이페이지 링크 -->
								<a href="VgMpgMain.do"><img src="/resources/images/avatar.jpg" alt="" /><span>${cmuvo.USR_ID}</span></a>
							</div>
						</div>
						<div class="container">
							<div class="entry-content">
								<p class="lead"><c:out value="${cmuvo.CMU_CONTENT}" escapeXml="false" /></p>
							</div>							
						</div>		
					</article>
					<!--//blog entry-->
					<!-- 세션아이디 -->
					<input type="hidden" name="USR_ID" value="${sessionScope.usr_Id }">
					<div>
					
						<!-- 게시글 신고 -->
						   <div class="h_button">
								<button id="btn-modal">
							 	이 게시글 신고하기
								</button>
							</div>
				
						<c:set var="USR_ADMIN" value="${sessionScope.usr_Admin }" />
						<c:set var="USR_ID" value="${sessionScope.usr_Id }" />
						<c:set var="writer_ID" value="${cmuvo.USR_ID }" />
						<c:if test="${USR_ADMIN == 1 || USR_ID eq writer_ID}">
						
				
							<!-- 게시글 삭제 -->
							<div class="h_button">
								<a  href="/cmu/deletecmu.do?CMU_PK=${cmuvo.CMU_PK}"><input
									name="CMU_PK" type="hidden" value="${cmuvo.CMU_PK}" /><input
									type="button" name="deletecmu" id="deletecmu"
									style="width: 130px;" value="삭제하기" />
								</a>
							</div>
							<!-- 게시글 수정 -->
							<div class="h_button">
								<a  href="/cmu/updatecmuform.do?CMU_PK=${cmuvo.CMU_PK}"><input
									name="CMU_PK" type="hidden" value="${cmuvo.CMU_PK}" /><input
									type="button" name="updatecmu" id="updatecmu"
									style="width: 130px;" value="수정하기" />
								</a>
							</div>			
						</c:if>		
														
					</div>
										
					<!--comments-->
					<div class="comments" id="comments">
						<h2>${replycount} comments </h2>
						<ol class="comment-list">						
							<c:forEach var="replylist" items="${replylist}" varStatus="status">
							<li class="comment depth-1">
								<div class="avatar"><a href="VgMpgMain.do"><img src="/resources/images/avatar.jpg" alt="" /></a></div>
							    <div class="comment-box" id="reply_${replylist.CCM_PK}" style="width:100%; margin-left:<c:out value="${30*replylist.CCM_REF_LEVEL}"/>px;">
							        <div class="comment-author meta" style="display:inline-block;"> 
							        <strong><c:out value="${replylist.USR_ID}"/></strong><c:out value="${replylist.CCM_REG}"/>
							        </div>
							        <button class="comment-cmulink" onclick="rereply_comment('${replylist.CMU_PK}','${replylist.CCM_PK}','${replylist.USR_ID}')" value="댓글">댓글</button>
							        <c:set var="comment_ID" value="${replylist.USR_ID }" />
							        <c:if test="${USR_ADMIN == 1 || USR_ID eq comment_ID}">
								        <button class="comment-cmulink" onclick="rereplydelete('${replylist.CMU_PK}','${replylist.CCM_PK}', '${replylist.USR_ID}')" value="삭제">삭제</button>
								        <button class="comment-cmulink" onclick="rereplyupdate('${replylist.CMU_PK}','${replylist.CCM_PK}', '${replylist.USR_ID}', '${replylist.CCM_REG}', '${replylist.CCM_CONTENT}', '${replylist.CCM_REF_LEVEL}')" value="수정">수정</button>
								       
								    </c:if>
								    <div class="comment-text" id="reply <c:out value="${replylist.CCM_PK}"/>"><c:out value="${replylist.CCM_CONTENT}"/></div>								    
							    </div>
							    <!-- 대댓글 히든 창 -->
								<div class="rereply_ajax_${replylist.CCM_PK}">
								</div>
							</li>
							</c:forEach>					
						</ol>											
					</div>
					<!--//comments-->
					
					<!--respond-->
					<div class="comment-respond" id="respond">
						<h2>댓글창</h2>
						<div class="container">
							<p><span class="req">*</span><strong>주의 :</strong> 욕설 및 모욕 등 타인의 기분을 상하게 하는 게시물의 내용은 삼가주시길바랍니다. <span class="req">*</span></p>
							<form name="commentform" >
							<!-- 여기서 할 일, 아이디 세션 받고 게시물 번호 받고(히든) -->
								<div class="f-row" id="comment_form">
									<!-- 게시글 번호 받음 -->
									<input type="hidden" name="CMU_PK" value="<c:out value="${cmuvo.CMU_PK}"/>">
									<input type="hidden" name="USR_ID" value="<c:out value="${cmuvo.USR_ID}"/>">
									<textarea name="CCM_CONTENT" placeholder="댓글을 작성해주세요."></textarea>
								</div>
								
								<div class="f-row">
									<div class="third bwrap">
										<input type="button" id="comment_btn" value="댓글 작성" />
									</div>
								</div>
							</form>
						</div>
					</div>
					<!--//respond-->
				</section>
			</div>
				<div class ="cmurlink">
					<!-- 글 목록가는 링크 -->
					<a class="R-rlink" href="VgCmuList.do"> 글 목록 가기</a>
				</div>
			<!--//row-->
		</div>
		<!--//wrap-->
	</main>
	<!--//main-->									

		
    <!--footer-->
    <%@ include file="../../../Footer.jsp" %>
    <!--//footer-->
    
    <!-- 신고 모달창 -->
    <div id="modal" class="modal-overlay">
        <div class="modal-window">
        	<br>
            <div class="title">
                <h2>부적절한 게시글 신고</h2>
            </div>
            <div class="close-area">X</div>
            <br>
            <div class="content">
            
            <form action="insert_report_cmu.do?CMU_PK=${cmuvo.CMU_PK}">
               <p>신고 사유를 입력하세요.</p>
               <input type="text" class="report_text" style="width: 350px !important;
                height: 100px !important" name="cmu_report_reason">
                <input type="hidden" name="CMU_PK" value="${cmuvo.CMU_PK}">
				<input type="hidden" name="USR_ID" value="${cmuvo.USR_ID}">
   				<br>
   				<br>
<!--    				<input type="hidden" name="CMU_PK"/> -->
   				<button> 신고하기 </button>
			</form>
            </div>
        </div>
    </div>	
		
    
    
	
	<script src="/resources/js/jquery.uniform.min.js"></script>
	<script src="/resources/js/jquery.slicknav.min.js"></script>
	<script src="/resources/js/scripts.js"></script>
	<script>

        const modal = document.getElementById("modal")

        function modalOn() {
            modal.style.display = "flex"
        }
        function isModalOn() {
            return modal.style.display === "flex"
        }
        function modalOff() {
            modal.style.display = "none"
        }
        const btnModal = document.getElementById("btn-modal")

        btnModal.addEventListener("click", e => {
            modalOn()
            document.querySelector("#modal").css


             
        })
        
        const closeBtn = modal.querySelector(".close-area")
        closeBtn.addEventListener("click", e => {
            modalOff()
        })
        modal.addEventListener("click", e => {
            const evTarget = e.target
            if(evTarget.classList.contains("modal-overlay")) {
                modalOff()
            }
        })
        window.addEventListener("keyup", e => {
            if(isModalOn() && e.key === "Escape") {
                modalOff()
            }
        })
        
        
        
        
        
        

        

    </script>
</body>
</html>


