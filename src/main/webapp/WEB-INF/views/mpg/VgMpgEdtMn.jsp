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
		<div class="modal" id="modal3" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div style="text-align: center;">
						<div style="display: inline-block;">
							<img src="/resources/images/nickname.png" id="imagepreview"
								style="width: 256px; height: 256px;">
						</div>
						<div class="modal-body"
							style="text-align: center; display: inline-block;">
							<div>
								<h1 style="text-align: center;">닉네임 변경</h1>
								<h5 style="text-align: center;">
									한글 영문 숫자(2-10자)<br> 닉네임은 게시글, 댓글 작성 등 커뮤니티 활동할때 표시됩니다.
								</h5>
								<br>
								<form name="change_nickname">
								변경전 닉네임 : 홍길동(변수가져오기)
									<input type="text" placeholder="변경할 닉네임을 입력해주세요."
										id="jwnickname" name="nickname" onkeyup="enterkey()">
										<input
										type="password" placeholder="비밀번호를 입력해주세요" id="nic"
										name="pw" onkeyup="enterkey()"> 
										<input type="button"
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
	<a href="VgMpgMain.jsp">VgMpgMain로 이동</a>

</body>
</html>