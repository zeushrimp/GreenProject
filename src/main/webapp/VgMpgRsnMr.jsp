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
		<div class="modal" id="modal1" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div style="text-align: center;">
						<div style="display: inline-block;">
							<img src="resources/images/admin.png" id="imagepreview"
								style="width: 256px; height: 256px;">
						</div>
						<div class="modal-body"
							style="text-align: center; display: inline-block;">
							<div>
								<h1 style="text-align: center;">정말 떠나시는 건가요?</h1>
								<h5 style="text-align: center;">
									탈퇴하시면 지금까지 그린프로젝트에 기록하신 모든내용은 남지만,<br> 더 이상 회원님께서 관리하기
									어려워집니다. <br>근데 이런걸 떠나서 그냥 가지 않으셨으면 좋겠어요.<br> 소원입니다.
								</h5>
								<br>
								<form name="frm">
									<input type="password" placeholder="비밀번호를 입력해주세요" id="jwpwd"
										name="pw" onkeyup="enterkey()"> <input type="button"
										class="close VgMpgRsnMrclose" data-dismiss="modal" value="확인"
										onclick="RsnMrshow()">
								</form>



							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>