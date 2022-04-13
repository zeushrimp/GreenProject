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



<style>
#idmessage {
	display: inline-block;
}
</style>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<script type="text/javascript">
	$(function() {
		$('.userid').keyup(function() {
			var id = $('input[name=id]').val();
			// 제이쿼리에서 제공하는 메소드. 화면과 무관하게 폼태그에서 강제로 서브밋되는 과정
			$.ajax({
				url : 'IdCheck.do', // STS라면 *.do
				type : 'get',
				data : {
					userid : id
				}, // 미리 변수화 시켜도 상관없음 input 태그로 만든 변수다. {키:값} 같이..
				dataType : 'text', // 응답 데이터. VO의 형태면 무조건 json으로 받는다. 내가즈는건 데이터. 받는 건 데이터 타입(서버 응답데이터)
				success : function(data) { // 저곳의 예스 오어 노가 바로 이거
					// 서버에 접속하여 처리가 다 완료되었을 때 실행.  /cont - db - cont - view 까지 정상적으로 왔을 때
					if (data.trim() == 'YES') {
						$('#idmessage').text("이미 사용중인 아이디입니다.");
						$('#idmessage').show();
						$("#confirm").prop("disabled", true);
					} else {
						$('#idmessage').text("사용할 수 있는 아이디입니다.");
						$('#idmessage').show();
						$("#confirm").prop("disabled", false);
					}
				},
				error : function(err) {
					alert('에러발생' + err);
				}
			});
		});

	});

	function check_pw() { //비밀번호 확인 
		var p = document.getElementById('pw').value;
		var p_cf = document.getElementById('pw_cf').value;

		if (p != p_cf) {
			document.getElementById('pw_check_msg').innerHTML = "비밀번호가 다릅니다. 다시 확인해 주세요.";
		} else {
			document.getElementById('pw_check_msg').innerHTML = "";
		}
		if (p_cf == "") {
			document.getElementById('pw_check_msg').innerHTML = "";
		}
	}

	function checked() { //form 유효성 검사 
		var p = document.getElementById('pw');
		var p_cf = document.getElementById('pw_cf');
		var count = 0;
		var check = document.getElementsByName('my_hobby');
		if (p.value != p_cf.value) { //비밀번호 확인 
			alert("비밀번호가 일치하지 않습니다. 확인해 주세요");
			p_cf.focus();
			return false;
		}

		else {
			return true;
		}

	}
</script>








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
						<h3>회원가입하기</h3>


						<form method="post" action="userInsert.do" name="userinput"
							id="userinput">
							<div class="f-row">


								<input type="text" placeholder="Your name" name="id" id="id"
									class="userid" size="30" placeholder="영문 대소문자, 숫자 4~12자"
									pattern="[a-zA-Z0-9]{4,12}" title="4~12자의 영문 대소문자와 숫자로만 입력."
									required />

								<div id="idmessage" style="display: none;"></div>

							</div>
							<div class="f-row">


								<input type="email" placeholder="Your email" name="email"
									value="" size="30"
									pattern="[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}"
									required />


							</div>
							<div class="f-row">

								<input type="password" placeholder="Your password" id="pw"
									name="password" minlength="4" maxlength="12" size="30"
									placeholder="영문 대소문자, 숫자 4~12자" pattern="[a-zA-Z0-9]{4,12}"
									title="4~12자의 영문 대소문자와 숫자로만 입력." required />



							</div>
							<div class="f-row">

								<input type="password" placeholder="Retype password" id="pw_cf"
									name="password_confirm" onkeyup="check_pw()" value=""
									maxlength="12" size="30" required /> <span id="pw_check_msg"></span>




							</div>


							<tr>

								<td><input type="text" name="nickname" class="usernickname"
									value="" minlength="3" maxlength="5" size="30"
									placeholder="한글 3~5자" pattern="[가-힣]{3,5}" title="3~5자의 한글 입력."
									required /></td>
							</tr>
							<a href="VgUsrAddr.jsp">주소찾기</a>

							<div class="f-row bwrap">

<a href="javascript:alert('이메일을 보냈습니다');">가입</a>


						
							</div>
							<p>
								Already have an account yet? <a href="VgUsrLogin.jsp">Log
									in.</a>
							</p>

						</form>
					</div>
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


