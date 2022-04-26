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
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="modal" id="modal7" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div style="text-align: center;">
						<div class="modal-body"
							style="text-align: center; display: inline-block;">
							<div>
								<h1 style="text-align: center;">${mpgdata.USR_NAME}님사진
									변경하시게용 ?</h1>
								<form id="Mf_pfpic" action="uploadprofilephoto.do" method="post"
									enctype="multipart/form-data">
									<!-- 생략 -->
									<div class="form-group" id="file-list">



										<div class="file-group">
											<input type="file" name="file">
										</div>
									</div>

									<input type="button"
										class="close btn btn-default VgMpg_modify_pfpicclose"
										data-dismiss="modal" value="확인" onclick="Mf_pfpicsubmit()">
								</form>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$("a[name='file-delete']").on("click", function(e) {
			e.preventDefault();
			deleteFile($(this));
		});
	})
</script>


</div>
</html>