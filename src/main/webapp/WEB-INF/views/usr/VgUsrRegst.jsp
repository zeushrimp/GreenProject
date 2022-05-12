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

<title>Vegcipe</title>


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

								<input type="text" name="USR_ADDR1" id="sample6_postcode" placeholder="우편번호" style= "width:30% !important; padding:10px;" >
								<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
							</div>
							<div class="f-row" style="padding-bottom: 5px !important;">
								<input type="text" name="USR_ADDR2" id="sample6_address" placeholder="주소" style= "width:100% !important; padding:10px;" >
							</div>
							<div class="f-row">	
								<span id="guide" style="color:#999;display:none"></span>
								<input type="text" name="USR_ADDR3" id="sample6_detailAddress" placeholder="상세주소" style= "width:70% !important; padding:10px;">
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

								<input type="text" name="USR_EMAIL" id="USR_EMAIL" placeholder="이메일" style="width:35% !important;" /> &nbsp;@&nbsp;
								<input type="text" name="USR_EMAIL1" id="USR_EMAIL1" style="width:50% !important;" />
							</div>
								<div class="f-row">
								<div class="mail_check_input_box" >
									<input type="text" clsass="mail_check_input" id="USR_CHK" style="width:250px !important;" disabled="disabled" onkeyup="EmailCheck()"  />
									<input type="button" id="mail_check_button" value="인증번호 받기" onclick="sendEmail()">
								</div>	
									
									
								
							</div>
							<div class="f-row">

								<select name="USR_VEGE" >
								<option value="" disabled selected>채식 타입</option>
								<option value="비건">비건</option>
								<option value="락토">락토</option>
								<option value="오보">오보</option>
								<option value="락토오보">락토-오보</option>
								<option value="페스코">페스코</option>
								<option value="폴로">폴로</option>
								</select>
							</div>
							<p>
								Already have an account yet? <a href="VgUsrLogin.do">Login.</a>
							</p>
							<div class="f-row">
								이용 약관 동의(필수)<br>
								<div style="width:100%; height:225px; padding:10px;">
									<textarea readonly="readonly" style="width:100%; height:100%;">

 제1조(목적) 이 약관은 업체 회사(전자상거래 사업자)가 운영하는 업체 사이버 베시피(이하 “베시피”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 Vecipe(이하 "베시피"라 한다)와 이용자의 권리․의무 및 책임사항을 규정함을 목적으로 합니다.
 
  ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」
 
제2조(정의)
 
  ① “베시피”이란 업체 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버베시피을 운영하는 사업자의 의미로도 사용합니다.
  
  ② “이용자”란 “베시피”에 접속하여 이 약관에 따라 “베시피”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
 
  ③ ‘회원’이라 함은 “베시피”에 회원등록을 한 자로서, 계속적으로 “베시피”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.
 
  ④ ‘비회원’이라 함은 회원에 가입하지 않고 “베시피”이 제공하는 서비스를 이용하는 자를 말합니다.
 
제3조 (약관 등의 명시와 설명 및 개정)
 
  ① “베시피”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보관리책임자 등을 이용자가 쉽게 알 수 있도록 00 사이버베시피의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
 
  ② “베시피은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회․배송책임․환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
 
  ③ “베시피”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
 
  ④ “베시피”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 베시피의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다.  이 경우 "베시피“은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. 
 
  ⑤ “베시피”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 “베시피”에 송신하여 “베시피”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.
 
  ⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 「전자상거래 등에서의 소비자 보호지침」 및 관계법령 또는 상관례에 따릅니다.
 


								</textarea>
								<input type="radio" name="first" value="1" required>동의합니다.
								</div>
								
								
							</div>
							</br>
							<div class="f-row">
								개인정보의 수집 및 이용에 대한 동의(필수)
								<div style="width:100%; height:225px; padding:10px;">
									<textarea readonly="readonly" style="width:100%; height:100%;">
1. 총칙

본 업체 사이트는 회원의 개인정보보호를 소중하게 생각하고, 회원의 개인정보를 보호하기 위하여 항상 최선을 다해 노력하고 있습니다. 
1) 회사는 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」을 비롯한 모든 개인정보보호 관련 법률규정을 준수하고 있으며, 관련 법령에 의거한 개인정보처리방침을 정하여 이용자 권익 보호에 최선을 다하고 있습니다.
2) 회사는 「개인정보처리방침」을 제정하여 이를 준수하고 있으며, 이를 인터넷사이트 및 모바일 어플리케이션에 공개하여 이용자가 언제나 용이하게 열람할 수 있도록 하고 있습니다.
3) 회사는 「개인정보처리방침」을 통하여 귀하께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
4) 회사는 「개인정보처리방침」을 홈페이지 첫 화면 하단에 공개함으로써 귀하께서 언제나 용이하게 보실 수 있도록 조치하고 있습니다.
5) 회사는  「개인정보처리방침」을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.

2. 개인정보 수집에 대한 동의

귀하께서 본 사이트의 개인정보보호방침 또는 이용약관의 내용에 대해 「동의 한다」버튼 또는 「동의하지 않는다」버튼을 클릭할 수 있는 절차를 마련하여, 「동의 한다」버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다.

3. 개인정보의 수집 및 이용목적

본 사이트는 다음과 같은 목적을 위하여 개인정보를 수집하고 있습니다.
서비스 제공을 위한 계약의 성립 : 본인식별 및 본인의사 확인 등
서비스의 이행 : 상품배송 및 대금결제
회원 관리 : 회원제 서비스 이용에 따른 본인확인, 개인 식별, 연령확인, 불만처리 등 민원처리
기타 새로운 서비스, 신상품이나 이벤트 정보 안내
단, 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 등)는 수집하지 않습니다.

4. 수집하는 개인정보 항목

본 사이트는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고 있습니다. 
1) 개인정보 수집방법 : 홈페이지(회원가입)
2) 수집항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 전화번호 , 주소 , 휴대전화번호 , 이메일 , 주민등록번호 , 접속 로그 , 접속 IP 정보 , 결제기록


5. 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항

본 사이트는 귀하에 대한 정보를 저장하고 수시로 찾아내는 '쿠키(cookie)'를 사용합니다. 쿠키는 웹사이트가 귀하의 컴퓨터 브라우저(넷스케이프, 인터넷 익스플로러 등)로 전송하는 소량의 정보입니다. 귀하께서 웹사이트에 접속을 하면 본 사이트의 컴퓨터는 귀하의 브라우저에 있는 쿠키의 내용을 읽고, 귀하의 추가정보를 귀하의 컴퓨터에서 찾아 접속에 따른 성명 등의 추가 입력 없이 서비스를 제공할 수 있습니다.
1) 쿠키는 귀하의 컴퓨터는 식별하지만 귀하를 개인적으로 식별하지는 않습니다. 또한 귀하는 쿠키에 대한 선택권이 있습니다. 웹브라우저의 옵션을 조정함으로써 모든 쿠키를 다 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있는 선택권을 가질 수 있습니다.
2) 쿠키 등 사용 목적 : 이용자의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공
3) 쿠키 설정 거부 방법 : 쿠키 설정을 거부하는 방법으로는 귀하가 사용하는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다. 설정방법 예시 : 인터넷 익스플로어의 경우 → 웹 브라우저 상단의 도구 &gt; 인터넷 옵션 &gt; 개인정보
단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다.

6 목적 외 사용 및 제3자에 대한 제공

본 사이트는 귀하의 개인정보를 "개인정보의 수집목적 및 이용목적"에서 고지한 범위 내에서 사용하며, 동 범위를 초과하여 이용하거나 타인 또는 타 기업·기관에 제공하지 않습니다.
그러나 보다 나은 서비스 제공을 위하여 귀하의 개인정보를 업체 자회사 또는 제휴사에게 제공하거나, 업체 자회사 또는 제휴사와 공유할 수 있습니다. 개인정보를 제공하거나 공유할 경우에는 사전에 귀하께 업체 자회사 그리고 제휴사가 누구인지, 제공 또는 공유되는 개인정보항목이 무엇인지, 왜 그러한 개인정보가 제공되거나 공유되어야 하는지, 그리고 언제까지 어떻게 보호·관리되는지에 대해 개별적으로 전자우편 및 서면을 통해 고지하여 동의를 구하는 절차를 거치게 되며, 귀하께서 동의하지 않는 경우에는 업체 자회사 그리고 제휴사에게 제공하거나 공유하지 않습니다. 또한 이용자의 개인정보를 원칙적으로 외부에 제공하지 않으나, 아래의 경우에는 예외로 합니다.
1) 이용자들이 사전에 동의한 경우
2) 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우

7. 개인정보의 열람 및 정정

귀하는 언제든지 등록되어 있는 귀하의 개인정보를 열람하거나 정정하실 수 있습니다. 개인정보 열람 및 정정을 하고자 할 경우에는 "회원정보수정"을 클릭하여 직접 열람 또는 정정하거나, 개인정보 최고관리책임자에게 E-mail로 연락하시면 조치하겠습니다.
귀하가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 이용하지 않습니다.

8. 개인정보 수집, 이용, 제공에 대한 동의철회

회원가입 등을 통해 개인정보의 수집, 이용, 제공에 대해 귀하께서 동의하신 내용을 귀하는 언제든지 철회하실 수 있습니다. 동의철회는 "마이페이지"의 "회원탈퇴(동의철회)"를 클릭하거나 개인정보관리책임자에게 E-mail등으로 연락하시면 즉시 개인정보의 삭제 등 필요한 조치를 하겠습니다.
본 사이트는 개인정보의 수집에 대한 회원탈퇴(동의철회)를 개인정보 수집시와 동등한 방법 및 절차로 행사할 수 있도록 필요한 조치를 하겠습니다.

9. 개인정보의 보유 및 이용기간

원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.
1) 보존 항목 : 회원가입정보(로그인ID, 이름, 별명)
2) 보존 근거 : 회원 탈퇴 시 다른 회원이 기존 회원아이디로 재가입하여 활동하지 못하도록 하기 위함
3) 보존 기간 : 영구
그리고 상법 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 거래 및 회원정보를 보관합니다.
⚪보존 항목 : 계약 또는 청약철회 기록, 대금 결제 및 재화공급 기록, 불만 또는 분쟁처리 기록
⚪보존 근거 : 전자상거래등에서의 소비자보호에 관한 법률 제6조 거래기록의 보존
⚪보존 기간 : 계약 또는 청약철회 기록(5년), 대금 결제 및 재화공급 기록(5년), 불만 또는 분쟁처리 기록(3년), 위 보유기간에도 불구하고 계속 보유하여야 할 필요가 있을 경우에는 귀하의 동의를 받겠습니다.
⚪회원이 1년간 서비스 이용기록이 없는 경우[정보통신망 이용촉진 및 정보보호 등에 관한 법률] 제 29조 '개인정보 유효 기간제'에 따라 회원에게 사전 통지하고 별도로 분리하여 저장합니다. 
4) 개인정보의 국외 보관에 대한 내용
 회사는 이용자로부터 취득 또는 생성한 개인정보를 미리내가 보유하고 있는 데이터베이스 (물리적보관소: 한국)에 저장합니다. 미리내는 해당 서버의 물리적인 관리만을 행하고, 원칙적으로 회원님의 개인정보에 접근하지 않습니다. 


⚪이전항목: 서비스 이용기록 또는 수집된 개인정보
⚪이전국가: 한국
⚪이전일시 및 방법: 전산 서버 수탁계약 이후 서비스 이용 시점에 네트워크를 통한 전송
⚪개인정보 보유 및 이용기간: 회원탈퇴시 혹은 위탁계약 종료시까지 

10. 개인정보의 파기절차 및 방법

본 사이트는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.
파기절차 : 귀하가 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다. 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.
파기방법 : 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.

11. 아동의 개인정보 보호

본 사이트는 만14세 미만 아동의 개인정보를 수집하는 경우 법정대리인의 동의를 받습니다.
만14세 미만 아동의 법정대리인은 아동의 개인정보의 열람, 정정, 동의철회를 요청할 수 있으며, 이러한 요청이 있을 경우 본 사이트는 지체 없이 필요한 조치를 취합니다.

12. 개인정보 보호를 위한 기술적 대책

본 사이트는 귀하의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.
귀하의 개인정보는 비밀번호에 의해 보호되며, 파일 및 전송 데이터를 암호화하거나 파일 잠금기능(Lock)을 사용하여 중요한 데이터는 별도의 보안기능을 통해 보호되고 있습니다.
본 사이트는 백신프로그램을 이용하여 컴퓨터바이러스에 의한 피해를 방지하기 위한 조치를 취하고 있습니다. 백신프로그램은 주기적으로 업데이트되며 갑작스런 바이러스가 출현할 경우 백신이 나오는 즉시 이를 제공함으로써 개인정보가 침해되는 것을 방지하고 있습니다.
해킹 등에 의해 귀하의 개인정보가 유출되는 것을 방지하기 위해, 외부로부터의 침입을 차단하는 장치를 이용하고 있습니다.

13. 개인정보의 위탁처리
본 사이트는 서비스 향상을 위해서 귀하의 개인정보를 외부에 위탁하여 처리할 수 있습니다.
개인정보의 처리를 위탁하는 경우에는 미리 그 사실을 귀하에게 고지하겠습니다.
개인정보의 처리를 위탁하는 경우에는 위탁계약 등을 통하여 서비스제공자의 개인정보보호 관련 지시 엄수, 개인정보에 관한 비밀유지, 제3자 제공의 금지 및 사고시의 책임부담 등을 명확히 규정하고 당해 계약내용을 서면 또는 전자적으로 보관하겠습니다.

14. 의견수렴 및 불만처리
본 사이트는 개인정보보호와 관련하여 귀하가 의견과 불만을 제기할 수 있는 창구를 개설하고 있습니다. 개인정보와 관련한 불만이 있으신 분은 본 사이트의 개인정보 최고 관리책임자에게 의견을 주시면 접수 즉시 조치하여 처리결과를 통보해 드립니다.
1) 개인정보 최고 관리책임자는 회사의 대표가 직접 맡아서 개인정보에 대한 강조를 하고 있습니다. 개인정보를 보호하고 유출을 방지하는 책임자로서 이용자가 안심하고 회사가 제공하는 서비스를 이용할 수 있도록 도와드리며, 개인정보를 보호하는데 있어 이용자에게 고지한 사항들에 반하여 사고가 발생할 시에는 이에 관한 책임을 집니다.
2) 기술적인 보완조치를 취하였음에도 불구하고 악의적인 해킹 등 기본적인 네트워크상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 멸실, 이용자가 작성한 게시물에 의한 각종 분쟁 등에 관해서는, 본 사이트 회사는 책임이 없습니다.
3) 회사는 정보통신망 이용촉진 및 정보보호 등에 관한 법률에서 규정한 관리책임자를 다음과 같이 지정합니다.
개인정보 최고 관리책임자 성명 : 
전화번호 :
이메일 : 

또는 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.
개인분쟁조정위원회 (www.1336.or.kr / 1336)
정보보호마크인증위원회 (www.eprivacy.or.kr / 02-580-0533~4)
대검찰청 인터넷범죄수사센터 (icic.sppo.go.kr / 02-3480-3600)
경찰청 사이버테러대응센터 (www.ctrc.go.kr / 02-392-0330)
									</textarea>
								<input type="radio" name="sec" value="1" required>동의합니다.
								</div>

								
								
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


