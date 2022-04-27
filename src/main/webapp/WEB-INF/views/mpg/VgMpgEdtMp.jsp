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
								<br> 로그인 아이디 <input type="text"
									placeholder="${mpgdata.USR_ID}" readonly /> 현재비밀번호 <input
									type="password" placeholder="ex) *******"
									onkeyup="fn_compare_cr_pwd1()" id="crpwcheck1"> <span
									id="s_result1"
									style="font-size: 12px; display: none; color: red;">비밀번호가
									일치하지 않습니다.</span>

								<form action="modifypw.do" id="Mf_pw">
									새 비밀번호 <input type="password" placeholder="ex) *******"
										id="mpgpasscheck1"> 
										
									새 비밀번호 확인<input type="password" placeholder="ex) *******" name="USR_PW" onkeyup="fn_compare_pwd()" id="mpgpasscheck2" name="USR_PW"> 
									<span id="s_result" style="font-size: 12px; visibility: hidden; color: red;">비밀번호가 일치하지 않습니다.</span> 
									<input type="button" class="close VgMpg_modify_pwclose" data-dismiss="modal" value="확인" disabled="disabled" onclick="Mf_pwsubmit()">
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