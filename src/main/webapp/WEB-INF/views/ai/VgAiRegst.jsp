<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vegcipe</title>
<link rel="stylesheet" href="/resources/css/bootstrap.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="/resources/css/Mpg.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<link rel="stylesheet" href="/resources/css/icons.css" />
<link
	href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800"
	rel="stylesheet">
<script src="https://use.fontawesome.com/e808bf9397.js"></script>
<link rel="shortcut icon" href="/resources/images/favicon.ico" />

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap')
	;
</style>
</head>
<body>
	<!--header-->
	<%@ include file="../../../Header.jsp"%>
	<div style="padding-top: 200px"></div>
	<!--//header-->

	<div
		style="max-width: 1170px; margin: auto; display: flex; border: 20px solid #fffff0; background-color: #fffff0; border-radius: 16px; box-shadow: inset 0 0 8px #e6d2b5;">
		<div style="width: 40%;">
			<img src="data:image/gif;base64,${vegimg}"
				style="border-radius: 30%; border: green 10px solid; max-height: 300px; display: inline-block; margin: 20px 0px;" />
		</div>
		<div
			style="width: 40%; font-family: 'Noto Sans KR', sans-serif; padding: 15px 20px 0px 45px; text-align: left;">
			<h2 style="font-weight: 700;">결과를 확인하세요</h2>
			<div
				style="font-weight: bold; font-size: larger; color: #239961; padding-bottom: 15px;">VEGCIPE</div>

			<div>
				<b>${vegcipefirst} 입니다.</b>
			</div>


			<div>맞다면 확인을, 아니라면 ${vegcipefirst}를(을) 지우고 재료이름을 입력해주세요.</div>
			<form id="Ai_imgsend1" action="vegcipefilecheck.do" method="post">
				<div>
					<input type="text" value="${vegcipefirst}" name="RCPRS_TITLE">
				</div>
				<br> <input type="button" value="확인" class="Ai_imgsend_fisrt"
					onclick="Ai_imgsend_next()"> <br>
			</form>
		</div>
	</div>

	<!--footer-->
	<div style="margin-top: 100px;"></div>
	<%@ include file="../../../Footer.jsp"%>
	<!--//footer-->
</body>

<script src="/resources/js/jquery-3.1.0.min.js"></script>
<script src="/resources/js/jquery.uniform.min.js"></script>
<script src="/resources/js/jquery.slicknav.min.js"></script>
<script src="/resources/js/scripts.js"></script>
<script src="/resources/js/bootstrap.js"></script>
<script src="/resources/js/Mpg.js"></script>
<script>
	function Ai_imgsend_next() {
		alert('잠시만기다려주세요.');
		$('.Ai_imgsend_fisrt').click(function() {
			$('#Ai_imgsend1').submit();
		})

	};
</script>

</html>