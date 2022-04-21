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
		<div class="modal" id="modal5" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div style="text-align: center;">
						<div style="display: inline-block;">
							<img src="/resources/images/addr.png" id="imagepreview"
								style="width: 256px; height: 256px;">
						</div>
						<div class="modal-body"
							style="text-align: center; display: inline-block;">
							<div>
								<h1 style="text-align: center;">${mpgdata.USR_NAME}님
									이사하셨나봐요!</h1>
								<h5 style="text-align: center;">
									주소를 변경을 위해 <span style="color: #ff7b74;">우편번호찾기</span> 버튼을
									눌러주세요~<br>
								</h5>
								<br>
								<form id="Mf_addr" action="">
									<div>
										<input type="text" name="USR_ADDR1" id="sample6_postcode1"
											placeholder="우편번호" readonly> <input type="button"
											class="close" onclick="sample6_execDaumPostcode1()"
											value="우편번호 찾기"><br>
									</div>
									<div>
										<input type="text" name="USR_ADDR2" id="sample6_address1"
											placeholder="주소" readonly>
									</div>
									<div>
										<span id="guide1" style="color: #999; display: none"></span> <input
											type="text" name="USR_ADDR3" id="sample6_detailAddress1"
											placeholder="상세주소"> <input type="hidden"
											id="sample6_extraAddress1" placeholder="참고항목">
									</div>
									<span id="s_result3" style="font-size: 12px; color: red; visibility: hidden;">상세
										주소를 입력해주세요.</span> <input type="button"
										class="close VgMpg_modify_addrclose" data-dismiss="modal"
										value="확인" disabled="disabled" onclick="addr_not_null_check()">
								</form>



							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>
</html>