<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vegcipe</title>
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
							style="text-align: left; display: inline-block;">
							<div>
								<h1 style="text-align: center;">닉네임 변경</h1>
								<h5 style="text-align: center;">
									한글 영문 숫자(2-10자)<br> 닉네임은 게시글, 댓글 작성 등 커뮤니티 활동할때 표시됩니다.
								</h5>
								<br>
								<form id="Mf_nk" action="modifynk.do">
									변경전 닉네임 : ${mpgdata.USR_NICK} <input type="text"
										placeholder="변경할 닉네임을 입력해주세요." name="USR_NICK"
										onkeyup="enterkey()">

								</form>
								<input type="password" placeholder="ex) *******"
									onkeyup="fn_compare_cr_pwd2()" id="crpwcheck2"> <span
									id="s_result2"
									style="font-size: 12px; visibility: hidden; color: red;">
									비밀번호가 일치하지 않습니다.</span>
								<div>
									<input form="Mf_nk" type="button"
										class="close VgMpg_modify_nkclose" data-dismiss="modal"
										value="확인" disabled="disabled" onclick="Mf_nksubmit()">
								</div>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>