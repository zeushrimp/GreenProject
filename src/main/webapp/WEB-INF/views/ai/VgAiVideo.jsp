<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		var vidNum = "/resources/videos/mainvideo"
				+ (Math.floor(Math.random() * 30) + 1) + ".mp4";
		var objVid = document.getElementById("introVid");
		objVid.setAttribute("src", vidNum);
		slideShow();
	}
</script>
</head>
<body>

	<div>
		<video id="introVid" muted autoplay loop class="mainvideo" ></video>
	</div>
	<a href="VgAiUpload.do">다음페이지 사진업로드 페이지</a>

</body>

</html>