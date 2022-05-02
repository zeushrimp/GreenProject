<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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

<link rel="stylesheet" href="../../resources/css/style.css" />
<link rel="stylesheet" href="../../resources/css/icons.css" />
<link
	href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800"
	rel="stylesheet">
<script src="https://use.fontawesome.com/e808bf9397.js"></script>
<link rel="shortcut icon" href="../../resources/images/favicon.ico" />
<style type="text/css">
.tab-content .basic dt {
	width: 25%;
	height: 38px;
	line-height: 40px;
}

.tab-content .basic dd {
	width: 45%;
	height: 38px;
	line-height: 38px;
}

.two-third {
	float: left;
	width: 100%;
	padding: 0 15px 30px;
	max-width: 100%;
}

.user-nav {
	float: right;
	position: absolute;
	top: 0;
	right: 0;
}

@media ( max-width : 1240px) {
	#about .one-third, #about .two-third {
		width: 100%;
	}
}

.tabs li {	
	width: 33.3%;
}

td {
	padding-left: 10px !important;
	padding-right: 10px !important;
}



</style>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.resources/js/1.3.0/respond.min.js"></script>
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
			<!--breadcrumbs-->
			<nav class="breadcrumbs">
				<ul>
					<li><a href="VgMain.jsp" title="Home">관리자</a></li>
					<li>관리자페이지</li>
				</ul>
			</nav>
			<!--//breadcrumbs-->


			<!--content-->
			<section class="content">
				<!--row-->
				<div class="row">
					<div class="three-fourth" >
						<nav class="tabs">
							<ul>
								<li class="active"><a href="#about" title="About me">회원관리</a></li>
								<li><a href="#recipes" title="My recipes">레시피 관리</a></li>
								<li><a href="#posts" title="My posts">커뮤니티 글 관리</a></li>

							</ul>
						</nav>

						<!--about-->
						<div class="tab-content" id="about">
								<div style="width: 1170px">
								<table style="width:90%; margin: auto;">
									<th>이름</th>
									<th>이메일</th>
									<th>비밀번호</th>
									<th>주소</th>
									<th>전화번호</th>
									<th>가입일자</th>
									<th>레시피</th>
									<th>글수</th>
									<th>신고</th>
						<c:forEach items="${AUSR }" var="vo" varStatus="status">		
							
							<tr>
							
								<td style="width:95px"><input type="textarea" class="USR_NAME" value="${vo.USR_NAME }" style="width: 100%; padding-left: 0; padding-right: 0;">
								<input type="hidden" class="USR_ID" value="${vo.USR_ID}"></td>
								<td style="width:150px"><input type="textarea" class="USR_EMAIL" value="${vo.USR_EMAIL }" style="width: 100%; padding-left: 0; padding-right: 0;"></td>
								<td style="width:100px"><input type="textarea" class="USR_PW" value="${vo.USR_PW }" style="width: 100%; padding-left: 0; padding-right: 0;"></td>
								<td style="width:300px"><span class="text1">${vo.USR_ADDR2 }</span>
								<input type="button" onclick="sample6_execDaumPostcode('${status.index}')" value="주소 변경" style="height:24px; background: none !important; border:none !important; float:right; color: #444; padding-bottom: 5px; padding-top: 5px;">
								<input type="hidden"  class="sample6_postcode USR_ADDR1" value="${vo.USR_ADDR1 }"/>
								<input type="hidden" class="sample6_address USR_ADDR2" value="${vo.USR_ADDR2 }">
								<input type="text"  class="sample6_detailAddress USR_ADDR3" placeholder="상세주소" value="${vo.USR_ADDR3 }">
								<input type="hidden" class="sample6_extraAddress" placeholder="참고항목">
								</td>
								<td style="width:140px"><input type="textarea" class="USR_TEL" value="${vo.USR_TEL }" style="width: 100%; padding-left: 0; padding-right: 0;"></td>
								<td style="width:95px">${vo.USR_DATE }</td>
								<td style="width:100px">100</td>
								<td style="width:75px">10</td>
								<td style="width:90px">10</td>								
								<td style="width:90px; background: none !important; border:none !important;"><input type="button"  onclick="submit_item('${status.index}')" style="width: 100%; padding-left: 0; padding-right: 0; background: none !important; border:none !important; color: #444;" value="수정"></td>
							  	<td style="width:90px; background: none !important; border:none !important;"><a type="button" style="width: 100%; padding-left: 0; padding-right: 0; background: none !important; border:none !important; color: #444;"
							  	href="delete_usr_info.do?USR_ID=${vo.USR_ID}&USR_PW=${vo.USR_PW}">삭제</a></td>
							</tr>
							
						
						</c:forEach>	
								<form method="post" action="/adm/ChangeUsrInfo.do" name=form>
									<input type="hidden" id="FS_USR_ID" name="USR_ID">
									<input type="hidden" id="FS_USR_EMAIL" name="USR_EMAIL">
									<input type="hidden" id="FS_USR_NAME" name="USR_NAME">
									<input type="hidden" id="FS_USR_PW" name="USR_PW">
									<input type="hidden" id="FS_USR_ADDR1" name="USR_ADDR1">
									<input type="hidden" id="FS_USR_ADDR2" name="USR_ADDR2">
									<input type="hidden" id="FS_USR_ADDR3" name="USR_ADDR3">
									<input type="hidden" id="FS_USR_TEL" name="USR_TEL">
								</form>	
								</table>
								<div class="pager">
								<a href="#">1</a> <a href="#" class="current">2</a> <a href="#">3</a>
								<a href="#">4</a> <a href="#">5</a>
							</div>
							</div>
						</div>

						<!--//about-->

						<!--my recipes-->
						<div class="tab-content" id="recipes">
							<div style="width: 1170px">
							<table style="width:90%; margin: auto;" >
									<th style="text-align: center">아이디</th>
									<th style="text-align: center">제목</th>
									<th style="text-align: center">신고 횟수</th>
									
									
							<tr>
								<td style="width:20%">deucal</td>
								<td style="width:60%">레시피 제목</td>
								<td style="width:20%">123456789</td>
								
							</tr>	
								
								
								</table>
								
							<div class="pager">
								<a href="#">1</a> <a href="#" class="current">2</a> <a href="#">3</a>
								<a href="#">4</a> <a href="#">5</a>
							</div>
						</div>
						</div>
						<!--//my recipes-->


						<!--my favorites-->
						
						<!--//my favorites-->

						<!--my posts-->
						<div class="tab-content" id="posts">
							<!--entries-->
							<div style="width: 1170px">
							<table style="width:90%; margin: auto;" >
									<th style="text-align: center">아이디</th>
									<th style="text-align: center">제목</th>
									<th style="text-align: center">신고 횟수</th>
									
									
							<tr>
								<td style="width:20%">deucal</td>
								<td style="width:60%">커뮤니티 제목</td>
								<td style="width:20%">123456789</td>
								
							</tr>	
								
								
								</table>
								
							<div class="pager">
								<a href="#">1</a> <a href="#" class="current">2</a> <a href="#">3</a>
								<a href="#">4</a> <a href="#">5</a>
							</div>
						</div>
							</div>
							<!--//entries-->
							
						</div>
						<!--//my posts-->
					</div>
				</div>
				<!--//row-->
			</section>
			<!--//content-->
		</div>

		<!--//wrap-->
	</main>
	<!--//main-->

	<%@ include file="../../../Footer.jsp" %>

	<script src="../../resources/js/jquery-3.1.0.min.js"></script>
	<script src="../../resources/js/jquery.uniform.min.js"></script>
	<script src="../../resources/js/jquery.slicknav.min.js"></script>
	<script src="../../resources/js/scripts.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
function submit_item(index) {
		alert("r")
		var USR_ID=document.getElementsByClassName("USR_ID");
		
		var USR_NAME=document.getElementsByClassName("USR_NAME");
		
		var USR_EMAIL=document.getElementsByClassName("USR_EMAIL");
		
		var USR_PW=document.getElementsByClassName("USR_PW");
		
		var USR_ADDR1=document.getElementsByClassName("USR_ADDR1");
		
		var USR_ADDR2=document.getElementsByClassName("USR_ADDR2");
		
		var USR_ADDR3=document.getElementsByClassName("USR_ADDR3");
		
		var USR_TEL=document.getElementsByClassName("USR_TEL");
		
		document.getElementById("FS_USR_ID").value=USR_ID[index].value
		document.getElementById("FS_USR_NAME").value=USR_NAME[index].value
		document.getElementById("FS_USR_EMAIL").value=USR_EMAIL[index].value
		document.getElementById("FS_USR_PW").value=USR_PW[index].value
		document.getElementById("FS_USR_ADDR1").value=USR_ADDR1[index].value
		document.getElementById("FS_USR_ADDR2").value=USR_ADDR2[index].value
		document.getElementById("FS_USR_ADDR3").value=USR_ADDR3[index].value
		document.getElementById("FS_USR_TEL").value=USR_TEL[index].value
		alert("r2")
		document.form.submit();
	}
	
	
	
    function sample6_execDaumPostcode( targetindex ) {
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
                    var extra=document.getElementsByClassName("sample6_extraAddress");
                    extra[targetindex].value = extraAddr;
                
                } else {
                	var extra=document.getElementsByClassName("sample6_extraAddress");
                    extra[targetindex].value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                var postcode = document.getElementsByClassName('sample6_postcode');
                postcode[targetindex].value = data.zonecode;
                
                var address = document.getElementsByClassName("sample6_address");
                address[targetindex].value = addr;
                
                var showcontent =document.getElementsByClassName("text1");
                showcontent[targetindex].innerText = addr;
                // 커서를 상세주소 필드로 이동한다.
               
            }
        }).open();
    }
    
    
    
    
</script>
</body>
</html>


