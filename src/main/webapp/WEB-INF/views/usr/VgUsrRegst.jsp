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


<link rel="stylesheet" href="../../../resources/css/icons.css" />
<link rel="stylesheet" href="../../../resources/css/style.css" />
<link
	href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800"
	rel="stylesheet">
<script src="https://use.fontawesome.com/e808bf9397.js"></script>

<link rel="shortcut icon" href="../../../resources/images/favicon.ico" />

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
#mail_check_input_box_false{
    background-color:#ebebe4;
}
 
#mail_check_input_box_true{
    background-color:white;
}
</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>










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
						<h3>회원가입하기</h3>


						<form method="post" action="VgUsrRegstDone.do" name="form"
							 onsubmit="return check();" accept-charset="UTF-8">
							<div class="f-row">


								<input type="text" placeholder="아이디" name="USR_ID" id="USR_ID"
									class="int" onkeydown="inputIdChk()" title="4~12자의 영문 대소문자와 숫자로만 입력."
									style="width:200px !important;"
									/>
								<input type="button" onclick="idcheck()" value="중복확인" class="recheck"><br>
								<input type="hidden" name="idDuplication" id="idDuplication" value="idUncheck" >
								</div>
							<div class="f-row">


								<input type="text" placeholder="이름" id = "USR_NAME" name="USR_NAME" size="30" />


							</div>
							<div class="f-row">

								<input type="password" placeholder="패스워드" id="USR_PW" name="USR_PW" />



							</div>
							<div class="f-row">

								<input type="password" placeholder="패스워드" id="USR_PW1" name="USR_PW1" />
	
							</div>
							<div class="f-row" style="padding-bottom: 5px !important;">

								<input type="text" name="USR_ADDR1" id="sample6_postcode" placeholder="우편번호" style= "width:100px !important; padding:10px;" >
								<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
							</div>
							<div class="f-row" style="padding-bottom: 5px !important;">
								<input type="text" name="USR_ADDR2" id="sample6_address" placeholder="주소" style= "width:500px !important; padding:10px;" >
							</div>
							<div class="f-row">	
								<span id="guide" style="color:#999;display:none"></span>
								<input type="text" name="USR_ADDR3" id="sample6_detailAddress" placeholder="상세주소" style= "width:275px !important; padding:10px;">
								<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
							</div>
							<div class="f-row">

								<input type="text" name="USR_TEL" id="USR_TEL" placeholder="전화번호" />
							</div>
							<div class="f-row">

								<input type="text" name="USR_NICK" id="USR_NICK" placeholder="닉네임" style="width:200px !important;" />
								<input type="button" onclick="nickcheck()" value="중복확인" class="recheck"><br>
								<input type="hidden" name="nickDuplication" id="nickDuplication" value="nickUncheck" >
							</div>
							<div class="f-row">

								<input type="text" name="USR_EMAIL" id="USR_EMAIL" placeholder="이메일" style="width:180px !important;" /> &nbsp;@&nbsp;
								<input type="text" name="USR_EMAIL1" id="USR_EMAIL1" style="width:250px !important;" />
							</div>
								<div class="f-row">
								<div class="mail_check_input_box" id="mail_check_input_box_false">
									<input type="text" clsass="mail_check_input" id="USR_CHK" style="width:250px !important;" disabled="disabled" onkeyup="EmailCheck()"  />
									<input type="button" id="mail_check_button" value="인증번호 받기" onclick="sendEmail()">
								</div>	
									
									
								
							</div>
							<div class="f-row">

								<select name="USR_VEGE" >
								<option value="" disabled selected>채식 타입</option>
								<option value="프루테라">프루테라</option>
								<option value="비건">비건</option>
								<option value="락토">락토</option>
								<option value="오보">오보</option>
								<option value="락토오보">락토오보</option>
								<option value="페스코">페스코</option>
								<option value="폴로">폴로</option>
								</select>
							</div>
							<p>
								Already have an account yet? <a href="VgUsrLogin.do">Login.</a>
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
								<input type="radio" name="first" value="1" required>동의합니다.
								
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

								<input type="radio" name="sec" value="1" required>동의합니다.
								
							</div>
							<div class="f-row">
							<input type="submit" class="join" value="회원가입" id="join" >
							<!--disabled="disabled"  -->
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


		<%@ include file="../../../Footer.jsp" %>


	<script src="../../../resources/js/jquery-3.1.0.min.js"></script>
	<script src="../../../resources/js/jquery.uniform.min.js"></script>
	<script src="../../../resources/js/jquery.slicknav.min.js"></script>
	<script src="../../../resources/js/scripts.js"></script>
	

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<script type="text/javascript">
var num=0;
function idcheck(){
	if(form.USR_ID.value==""){
    	
        alert("아이디를 입력해주세요");
        form.USR_ID.focus();
        return false;
    }

    $.ajax({
		url : "/usr/checkId.do",
		type : "post",
		dataType : "text",
		data : {"USR_ID" : $("#USR_ID").val()},
		success : function(data){
			if(data == 1){
				alert("중복된 아이디입니다.");
			}else if(data == 0){
				$("#idDuplication").attr("value", $("#USR_ID").val());
				alert("사용가능한 아이디입니다.");
			}
		}
	}) 
};
function nickcheck(){
	if(form.USR_NICK.value==""){
    	
        alert("닉네임를 입력해주세요");
        form.USR_NICK.focus();
        return false;
    }

    $.ajax({
		url : "/usr/checkNick.do",
		type : "post",
		dataType : "text",
		data : {"USR_NICK" : $("#USR_NICK").val()},
		success : function(result){
			if(result == 1){
				alert("중복된 아이디입니다.");
			}else if(result == 0){
				$("#nickDuplication").attr("value", $("#USR_NICK").val());
				alert("사용가능한 닉네임입니다.");
			}
		}
	}) 
};
/*인증번호 이메일 전송*/

function sendEmail(){
	var email = $("#USR_EMAIL").val() + "@"+ $("#USR_EMAIL1").val() ;
	 var checkBox = $(".mail_check_input"); 
	 var boxWrap = $(".mail_check_input_box");
	 alert(email);
	$.ajax({
        
        type:"GET",
        url:"mailCheck?email=" + email,
        
        success : function(result){
        	num = result;
        	var input = document.getElementById("USR_CHK");

            input.removeAttribute("disabled");
        	
        },
		error : function(request, status, error){
			alert("이메일을 확인해주세요.")
		}
    }); 
}
function check() {
    if(form.USR_ID.value==""){
        alert("아이디를 입력해주세요");
        form.USR_ID.focus();
        return false;
    }
    else if(form.USR_NICK.value==""){
        alert("닉네임을 입력해주세요");
        form.USR_NICK.focus();
        return false;
    }
    else if(form.USR_PW.value==""){
        alert("비밀번호를 입력해주세요");
        form.USR_PW.focus();
        return false;
    }
    else if(form.USR_PW1.value==""){
        alert("비밀번호 재확인란을 입력해주세요");
        form.USR_PW1.focus();
        return false;
    }
    else if(form.USR_PW.value!=form.USR_PW1.value){
        alert("비밀번호가 입력하신 것과 일치하지 않습니다");
        form.USR_PW1.focus();
        return false;
    }
    else if(form.USR_NAME.value==""){
        alert("이름을 입력해주세요");
        form.USR_NAME.focus();
        return false;
    }
		else if(form.USR_EMAIL.value==""){
        alert("이메일을 입력해주세요");
        form.USR_EMAIL.focus();
        return false;
    }
    else if(form.USR_EMAIL1.value==""){
        alert("이메일을 입력해주세요");
        form.USR_EMAIL1.focus();
        return false;
    }

    else if(form.USR_TEL.value==""){
        alert("휴대전화를 입력해주세요");
        form.USR_TEL.focus();
        return false;
    }
    else if(form.USR_ADDR1.value==""){
        alert("주소를 입력해주세요");
        form.USR_ADDR1.focus();
        return false;
    }
    else if(form.USR_ADDR2.value==""){
        alert("주소를 입력해주세요");
        form.USR_ADDR2.focus();
        return false;
    }
    else if(form.USR_ADDR3.value==""){
        alert("주소를 입력해주세요");
        form.USR_ADDR3.focus();
        return false;
    }
    else if(form.idDuplication.value=="idUncheck" || form.USR_ID.value != form.idDuplication.value){
        alert("아이디 중복확인을 하지 않으셨습니다.");
        return false;
    }
    else if(form.nickDuplication.value=="nickUncheck" || form.USR_NICK.value != form.nickDuplication.value){
        alert("닉네임 중복확인을 하지 않으셨습니다.");
        return false;
    }
    
}

/* function EmailCheck(){
	var num1=$("#USR_CHK").val()
	var submit=document.getElementById("join");
	if(num1==num){
		alert("인증성공")
	submit.removeAttribute("disabled");
	}
} */
</script>
</body>
</html>


