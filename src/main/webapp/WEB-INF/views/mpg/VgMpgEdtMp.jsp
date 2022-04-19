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
		<div class="modal" id="modal4" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">

						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div style="text-align: center;">
						<div style="display: inline-block;">
							<img src="/resources/images/passchange.png" id="imagepreview"
								style="width: 256px; height: 256px;">
						</div>
						<div class="modal-body"
							style="text-align: left; display: inline-block;">
							<div>
								<h1 style="text-align: center;">비밀번호 변경하기</h1>
								<br>
								
								<form>
								로그인 아이디 <input type="text" placeholder="test01" readonly/>
								현재비밀번호 <input type="password" placeholder="ex) *******" 
										name="pw" onkeyup="enterkey()"> 새 비밀번호 <input type="password"
										placeholder="ex) *******" name="pw"
										onkeyup="enterkey()">  새 비밀번호확인<input type="password"
										placeholder="ex) *******" name="pw"
										onkeyup="enterkey()"> <input type="button"
										class="close VgMpgRsnMrclose" data-dismiss="modal" value="확인"
										>
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