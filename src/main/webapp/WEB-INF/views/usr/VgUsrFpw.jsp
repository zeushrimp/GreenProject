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
	
<link rel="stylesheet" href="../../../resources/css/style.css" />

	<link rel="stylesheet" href="../../../resources/css/icons.css" />
	<link href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800" rel="stylesheet">
	<script src="https://use.fontawesome.com/e808bf9397.js"></script>
	<link rel="shortcut icon" href="../../../resources/images/favicon.ico" />
	
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
	<%@ include file="../../../Header.jsp" %>
	<div style="padding-top: 200px"></div>
		
		
	<!--main-->
	<main class="main" role="main">
		<!--wrap-->
		<div class="wrap clearfix">
			<!--row-->
			<div class="row">
			<!--content-->
				<section class="content center full-width">
					<div class="modal container">
						<h3><a href="VgUsrFid.do">아이디 찾기</a> / <a href="VgUsrFpw.do">비밀번호 찾기</a></h3>
							<form action="VgUsrFpwMp.jsp" method="post">
						<div class="f-row">
						
						
							
							<input type="text" placeholder="이름" id="USR_NAME" name="USR_NAME"/>
							
							
							
						</div>
						<div class="f-row">
						
						
						
							<input type="text" placeholder="아이디" id="USR_ID" name="USR_ID"/>
							
							
							
						</div>
						<div class="f-row">
						
						
						
							<input type="text" placeholder="휴대폰번호" id="USR_TEL" name="USR_TEL"/>
							
							
							
						</div>
						
						<div class="f-row">
							<input type="button" value="확인" onclick="FindPw()" style="width: 25%" />
							<input type="reset" value="취소" style="width: 25%; float: right;"/>
							
		
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
	
	<%@ include file="../../../Footer.jsp" %>
		
	
	<script src="../../../resources/js/jquery-3.1.0.min.js"></script>
	<script src="../../../resources/js/jquery.uniform.min.js"></script>
	<script src="../../../resources/js/jquery.slicknav.min.js"></script>
	<script src="../../../resources/js/scripts.js"></script>
		<script type="text/javascript">
	function FindPw() {
		var USR_NAME=$("#USR_NAME").val()
		var USR_TEL=$("#USR_TEL").val()
		var USR_ID=$("#USR_ID").val()
		$.ajax({
			type:"POST",
			url:"/usr/UsrFindPw.do",
			dataType:'text',
			data: {
				"USR_NAME" : USR_NAME,
				"USR_TEL" : USR_TEL,
				"USR_ID" : USR_ID
			},
			success: function(result){
				if(result==""){
					alert("일치하는 회원정보가 없습니다.")
				}else{
			alert("회원님의 비밀번호는 "+ result +" 입니다")
			location.href="VgUsrLogin.do";
				}
			},	
			error : function(request, status, error){
			alert("실패.")
			}
			
			
			
		});
	}
	
	</script>
</body>
</html>


