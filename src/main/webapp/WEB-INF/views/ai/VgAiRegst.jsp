<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<scirpt src="E:\work\jquery\3.3.1\jquery.min.js"></scirpt>

<meta charset="UTF-8">
<title>Vegcipe</title>

</head>
<body>
	<div class="row">
		<div class="modal" id="modal02" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div style="text-align: center;">
						<div class="modal-body"
							style="text-align: center; display: inline-block;">
							<div>
								<h3>Vegcipe가 재료를 구별했는지 확인해주세요!</h3>
								<form id="Ai_imgsend1" action="vegcipefilecheck.do" method="post">
									<!-- 생략 -->
									<div class="inputArea">
										<label for="gdsImg">이미지</label>
										<div class="select_img01">
											<img src="" />
										</div>
										<div>
											<div>${vegcipefirst} 입니다.</div>
											<div>맞다면 확인을, 아니라면 ${vegcipefirst}를(을) 지우고 재료이름을 입력해주세요.</div>
											<div>
												<input type="text" value="${vegcipefirst}" name="RCPRS_TITLE">
											</div>


											<input type="button"
												class="close btn btn-default Ai_imgsend_next"
												data-dismiss="modal" value="확인" onclick="Ai_imgsend_next()">

										</div>
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

	function Ai_imgsend_next() {
		alert('레시프를 찾는 중입니다.');
		$('.Ai_imgsend_next').click(function() {

			$('#Ai_imgsend1').submit();
		})

	}
</script>




</div>
</html>