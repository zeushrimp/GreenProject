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
		<div class="modal" id="modal2" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div style="text-align: center;">
						<div style="display: inline-block;">
							<img src="/resources/images/vegetarian.png" id="imagepreview"
								style="width: 256px; height: 256px;">
						</div>
						<div class="modal-body"
							style="text-align: center; display: inline-block;">
							<div>
								<h1 style="text-align: center;">채식종류변경</h1>
								<br> <br> <br> <br>
								<h5 style="text-align: left;">신재우(변경)</h5>

								<form name="select_vegiterian_type">
									<div style=" width:65%; vertical-align : top; display: inline-block;">
										<select>
											<option value="Vegan">비건 채식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
											<option value="Lacto">락토 채식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
											<option value="Ovo">오보 채식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
											<option value="Lacto_Ovo">락토 오보 채식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
											<option value="Pollo">폴로 채식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
											<option value="Pesko">페스코 채식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>

										</select>
									</div>
									<div style="display: inline-block;">
										<input type="button" class="close VgMpgRsnMrclose"
											data-dismiss="modal" value="확인" onclrick="changeVgType()">
									</div>
								</form>
								<br>



							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<a href="VgMpgMain.jsp">VgMpgMain로 이동</a>

</body>
</html>