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



<style>
#idmessage {
	display: inline-block;
}
select option[value=""][disabled] {
	display: none;
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

	<!--header-->
	<header class="head" role="banner">
		<!--wrap-->
		<div class="wrap clearfix">
			<a href="index.html" title="SocialChef" class="logo"><img src="resources/images/ico/logo.png" alt="SocialChef logo" /></a>
			
			<nav class="main-nav" role="navigation" id="menu">
				<ul>
					<li><a href="index.html" title="Home"><span>Home</span></a></li>
					<li><a href="recipes.html" title="Recipes"><span>Recipes</span></a>
						<ul>
							<li><a href="recipes2.html" title="Recipes 2">Recipes 2</a></li><li><a href="recipe.html" title="Recipe">Recipe</a></li>
						</ul>
					</li>
					<li><a href="blog.html" title="Blog"><span>Blog</span></a>
						<ul>
							<li><a href="blog_single.html" title="Blog post">Blog post</a></li>
						</ul>
					</li>
					<li><a href="#" title="Pages"><span>Pages</span></a>
						<ul>
							<li><a href="left_sidebar.html" title="Left sidebar page">Left sidebar page</a></li>
							<li><a href="right_sidebar.html" title="Right sidebar page">Right sidebar page</a></li>
							<li><a href="two_sidebars.html" title="Both sidebars page">Both sidebars page</a></li>
							<li><a href="full_width.html" title="Full width page">Full width page</a></li>
							<li><a href="login.html" title="Login page">Login page</a></li><li><a href="register.html" title="Register page">Register page</a></li>
							<li><a href="error404.html" title="Error page">Error page</a></li>
						</ul>
					</li>
					<li><a href="#" title="Features"><span>Features</span></a>
						<ul>
							<li><a href="icons.html" title="Icons">Icons</a></li>
							<li><a href="grid.html" title="Grid">Grid</a></li>
							<li><a href="shortcodes.html" title="Shortcodes">Shortcodes</a></li>
							<li><a href="pricing.html" title="Pricing tables">Pricing tables</a></li>
						</ul>
					</li>
					<li><a href="contact.html" title="Contact"><span>Contact</span></a></li>
					<li><a href="http://themeforest.net/item/socialchef-social-recipe-html-template/8568727?ref=themeenergy" title="Buy now"><span>Buy now</span></a></li>
				</ul>
			</nav>
			
			<nav class="user-nav" role="navigation">
				<ul>
					<li class="light"><a href="find_recipe.html" title="Search for recipes"><i class="icon icon-themeenergy_search"></i> <span>Search for recipes</span></a></li>
					<li class="medium"><a href="my_profile.html" title="My account"><i class="icon icon-themeenergy_chef-hat"></i> <span>My account</span></a></li>
					<li class="dark"><a href="submit_recipe.html" title="Submit a recipe"><i class="icon icon-themeenergy_fork-spoon"></i> <span>Submit a recipe</span></a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!--//header-->

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


								<input type="text" placeholder="이름" name="id" id="id"
									class="userid" size="30" pattern="[a-zA-Z0-9]{4,12}" title="4~12자의 영문 대소문자와 숫자로만 입력."
									required />

								<div id="idmessage" style="display: none;"></div>

							</div>
							<div class="f-row">


								<input type="email" placeholder="이메일" name="email"
									value="" size="30"
									pattern="[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}"
									required />


							</div>
							<div class="f-row">

								<input type="password" placeholder="패스워드" id="pw"
									name="password" minlength="4" maxlength="12" size="30"
									placeholder="영문 대소문자, 숫자 4~12자" pattern="[a-zA-Z0-9]{4,12}"
									title="4~12자의 영문 대소문자와 숫자로만 입력." required />



							</div>
							<div class="f-row">

								<input type="password" placeholder="패스워드" id="pw_cf"
									name="password_confirm" onkeyup="check_pw()" value=""
									maxlength="12" size="30" required /> <span id="pw_check_msg"></span>




							</div>
							<div class="f-row" style="padding-bottom: 5px !important;">

								<input type="text" id="sample4_postcode" placeholder="우편번호" style= "width:100px !important; padding:10px;">
								<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
							</div>
							<div class="f-row" style="padding-bottom: 5px !important;">
								<input type="text" id="sample4_roadAddress" placeholder="도로명주소" style= "width:500px !important; padding:10px;">
							</div>
							<div class="f-row">	
								<span id="guide" style="color:#999;display:none"></span>
								<input type="text" id="sample4_detailAddress" placeholder="상세주소" style= "width:275px !important; padding:10px;">
							</div>
							<div class="f-row">

								<input type="text" name="nickname" class="usernickname"
									value="" minlength="3" maxlength="5" size="30"
									placeholder="전화번호" title="3~5자의 한글 입력."
									required />
							</div>
							<div class="f-row">

								<input type="text" name="" class="usernickname"
									value="" minlength="3" maxlength="5" size="30"
									placeholder="닉네임" title="3~5자의 한글 입력."
									required />
							</div>
							<div class="f-row">

								<input type="text" name="" class="usernickname"
									value="" minlength="3" maxlength="5" size="30"
									placeholder="이메일" title="3~5자의 한글 입력."
									required />
							</div>
							<div class="f-row">

								<select name="vegetype" required>
								<option value="" disabled selected>채식 타입</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								</select>
							</div>
							<p>
								Already have an account yet? <a href="VgUsrLogin.jsp">Log
									in.</a>
							</p>
							<div class="f-row">
								이용 약관 동의(필수)<br>
								<div style="overflow:scroll; width:500px; height:120px; padding:10px;">

								친구의 이야기를 다 들었을 때 나에게는, 친구의 의도와 상관 없이, 거대한 암흑의 이미지가 떠올라 있었다.<br />
								<br />
								다른 친구들은 그 친구의 이야기를 거의 듣지 않은 듯싶었다. 왜냐하면 토요일 오후였기 때문이다. 그러나 나에게는 친구의 이야기가 화창한 토요일 오후와 대비되어 더욱 강렬하게 다가왔었다. 무엇보다도 친구의 들뜨고 밝은 표정이 깊은 인상을 남겼다.<br />
								<br />
								친구에게 그 이야기를 재차 확인하고 싶었지만 어쩐지 입이 떨어지지 않았다. 자동차로 한두 시간 거리에 그토록 어둠에 찬 곳이 있다는 사실이 우선 믿기지 않았다. 그리고 그런 곳에 사는 것이 왜 그리 즐겁고 들뜬 일인지 짐작할 수조차 없었다.<br />
								<br />
								</div>
								<input type="radio" name="first" value="1">동의합니다.
								<input type="radio" name="first" value="2">동의하지않습니다.
							</div>
							<div class="f-row">
								개인정보의 수집 및 이용에 대한 동의(필수)
								<div style="overflow:scroll; width:500px; height:120px; padding:10px;">

								친구의 이야기를 다 들었을 때 나에게는, 친구의 의도와 상관 없이, 거대한 암흑의 이미지가 떠올라 있었다.<br />
								<br />
								다른 친구들은 그 친구의 이야기를 거의 듣지 않은 듯싶었다. 왜냐하면 토요일 오후였기 때문이다. 그러나 나에게는 친구의 이야기가 화창한 토요일 오후와 대비되어 더욱 강렬하게 다가왔었다. 무엇보다도 친구의 들뜨고 밝은 표정이 깊은 인상을 남겼다.<br />
								<br />
								친구에게 그 이야기를 재차 확인하고 싶었지만 어쩐지 입이 떨어지지 않았다. 자동차로 한두 시간 거리에 그토록 어둠에 찬 곳이 있다는 사실이 우선 믿기지 않았다. 그리고 그런 곳에 사는 것이 왜 그리 즐겁고 들뜬 일인지 짐작할 수조차 없었다.<br />
								<br />
								</div>

								<input type="radio" name="sec" value="1">동의합니다.
								<input type="radio" name="sec" value="2">동의하지않습니다.
							</div>
							<div class="f-row">
							<button type = "submit" name = "" id ="">가입하기</button>
							</div>
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


	<!--footer-->
	<footer class="foot" role="contentinfo">
		<div class="wrap clearfix">
			<div class="row">
				<article class="one-half">
					<h5>About SocialChef Community</h5>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci.</p>
				</article>
				<article class="one-fourth">
					<h5>Need help?</h5>
					<p>Contact us via phone or email</p>
					<p><em>T:</em>  +1 555 555 555<br /><em>E:</em>  <a href="#">socialchef@email.com</a></p>
				</article>
				<article class="one-fourth">
					<h5>Follow us</h5>
					<ul class="social">
						<li><a href="#" title="facebook"><i class="fa fa-fw fa-facebook"></i></a></li>
						<li><a href="#" title="youtube"><i class="fa  fa-fw fa-youtube"></i></a></li>
						<li><a href="#" title="rss"><i class="fa  fa-fw fa-rss"></i></a></li>
						<li><a href="#" title="gplus"><i class="fa fa-fw fa-google-plus"></i></a></li>
						<li><a href="#" title="linkedin"><i class="fa fa-fw fa-linkedin"></i></a></li>
						<li><a href="#" title="twitter"><i class="fa fa-fw fa-twitter"></i></a></li>
						<li><a href="#" title="pinterest"><i class="fa fa-fw fa-pinterest-p"></i></a></li>
						<li><a href="#" title="vimeo"><i class="fa fa-fw fa-vimeo"></i></a></li>
					</ul>
				</article>
				
				<div class="bottom">
					<p class="copy">Copyright 2016 SocialChef. All rights reserved</p>
					
					<nav class="foot-nav">
						<ul>
							<li><a href="index.html" title="Home">Home</a></li>
							<li><a href="recipes.html" title="Recipes">Recipes</a></li>
							<li><a href="blog.html" title="Blog">Blog</a></li>
							<li><a href="contact.html" title="Contact">Contact</a></li>    
							<li><a href="find_recipe.html" title="Search for recipes">Search for recipes</a></li>
							<li><a href="login.html" title="Login">Login</a></li>	<li><a href="register.html" title="Register">Register</a></li>													
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</footer>


	<script src="resources/js/jquery-3.1.0.min.js"></script>
	<script src="resources/js/jquery.uniform.min.js"></script>
	<script src="resources/js/jquery.slicknav.min.js"></script>
	<script src="resources/js/scripts.js"></script>
	

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
</body>
</html>


