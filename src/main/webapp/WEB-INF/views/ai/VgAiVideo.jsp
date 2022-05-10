<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<script type="text/javascript">
	window.onload = function() {
		var vidNum = "/resources/videos/mainvideo"
				+ (Math.floor(Math.random() * 30) + 1) + ".mp4";
		var objVid = document.getElementById("introVid");
		objVid.setAttribute("src", vidNum);
		slideShow();
	}
</script>
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
		<div style="width: 60%;">
			<video id="introVid" muted autoplay loop class="mainvideo"></video>
		</div>
		<div
			style="width: 40%; font-family: 'Noto Sans KR', sans-serif; padding: 15px 20px 0px 45px; text-align: left;">
			<h2 style="font-weight: 700;">AI 비건 냉장고 레시피</h2>
			<div
				style="font-weight: bold; font-size: larger; color: #239961; padding-bottom: 15px;">VEGCIPE</div>

			<div>
				<b>1. 사진 선택</b>
			</div>


			<div>먼저 냉장고에 있는 야채사진을 선택하세요.</div>
			<div>
				<b style="color: #FF7F00;">${countrcp}</b> 개의 비건 레시피가 준비되어 있으며,
			</div>
			<div>지속적으로 업데이트 중입니다.</div>
			<br>

			<div>
				<b>2. 재료 확인</b>
			</div>


			<div>사진과 Vegcipe가 맞춘 재료가 맞는지 확인해주세요.</div>
			<div>아직 공부하고있는 어린 Vegicpe라 교육이 필요합니다.</div>
			<br>

			<div>
				<b>3. 냉장고 들어가기</b>
			</div>


			<div>모든 준비가 끝났습니다.</div>
			<div style="display: inline-block;">웹에서 AI냉장고 레시피를 확인하세요.</div>
			<button data-target="#modal01" data-toggle="modal"
				style="float: right; padding: 5px 10px;">
				<i class="bi bi-power" style="font-weight: bold; font-size: large;"></i>
			</button>
		</div>
	</div>

	<!--footer-->
	<div style="margin-top: 100px;"></div>
	<%@ include file="../../../Footer.jsp"%>
	<!--//footer-->
</body>
<%@ include file="VgAiUpload.jsp"%>
<script src="/resources/js/jquery-3.1.0.min.js"></script>
<script src="/resources/js/jquery.uniform.min.js"></script>
<script src="/resources/js/jquery.slicknav.min.js"></script>
<script src="/resources/js/scripts.js"></script>
<script src="/resources/js/bootstrap.js"></script>
<script src="/resources/js/Mpg.js"></script>

</html>