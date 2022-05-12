<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 제이쿼리 홈페이지 -->
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>

<!-- 구글 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 다운받은 제이쿼리 -->
<scirpt src="E:\work\jquery\3.3.1\jquery.min.js"></scirpt>

<meta charset="UTF-8">
<title>Vegcipe</title>

</head>
<body>
	<div class="row">
		<div class="modal" id="modal01" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div style="text-align: center;">
						<div class="modal-body"
							style="text-align: center; display: inline-block;">
							<div>
								<h3>채소, 야채 사진을 넣어주세요.</h3>
								<form id="Ai_imgsend" action="vegcipefile.do" method="post"
									enctype="multipart/form-data">
									<!-- 생략 -->
									<div class="inputArea">
										<label for="gdsImg">이미지</label> <input type="file"
											id="gdsImg01" name="file"
											accept="image/gif, image/jpeg, image/png" />
										<div class="select_img01">
											<img src="" />
										</div>

										<input type="button"
											class="close btn btn-default Ai_imgsend_fisrt"
											data-target="modal02"
											data-toggle="modal" value="확인" onclick="Ai_imgsend()" >
									</div>
								</form>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	$("#gdsImg01").change(
			function() {
				if (this.files && this.files[0]) {
					var reader = new FileReader;
					reader.onload = function(data) {
						$(".select_img01 img").attr("src", data.target.result)
								.width(300);
					}
					reader.readAsDataURL(this.files[0]);
				}
			});

	function Ai_imgsend() {
		alert('잠시만기다려주세요.');
		$('.Ai_imgsend_fisrt').click(function() {
			$('#Ai_imgsend').submit();
		})

	};
</script>
<%@ include file="VgAiRegst.jsp"%>



</div>
</html>