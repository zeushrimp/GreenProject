<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="modal" id="modal10" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" style="text-align: center; display: inline-block;">
						<div>
							<video id="introVid" muted autoplay loop class="mainvideo"></video>
						</div>
						<div>여기는 공간입니다.</div>
					</div>


				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">

window.onload = function() {
	var vidNum = "/resources/videos/mainvideo" + (Math.floor(Math.random() * 30) + 1) + ".mp4";
	var objVid = document.getElementById("introVid");
	objVid.setAttribute("src", vidNum);
}

</script>
</html>