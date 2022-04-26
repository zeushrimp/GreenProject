$('.checkT input[type="checkbox"]').click(function() {
	var tmpp = $(this).prop('checked');
	// this를 사용하여 클릭한 checkbox 가 체크되도록 설정
	if (tmpp) {
		$(".btnArea button").prop("disabled", false);
	}
	else {
		$(".btnArea button").prop("disabled", true);
	}
});

//사용자의 패스워드 불러오기
var pwd = document.getElementById("jjjj2222").innerHTML;


function RsnMrshow() {

	var y = $('#jwpwd').val();
	//db 접속
	// 이벤트와 화면이 동기화 (같이움직인다,새로고침) >기본설정 화면이 로딩될떄 체크
	// 비동화 : ajax > 본인 jsp 가 db를 갓다가 본인 jsp 복귀하는 로직, 화면 전환 필요없음 (새로고침이 없음)
	// $.ajax({
	//	type : post,
	//  url : "*.do",
	//  data : { },
	//  success: function(){ },
	//	error : function(){ }
	//});


	//제이쿼리 클래스 제거 생성 검색 
	//attr 검색

	if (y == pwd) {
		$('.VgMpgRsnMrshow').css('visibility', 'visible');


	} else {
		$('#testssss').innerHTML = "비밀번호가 맞지 않습니다."
		$('#jwpwd').val("").focus();
		$('.VgMpgRsnMrshow').css('visibility', 'hidden');


	}



	// document.frm.submit() // form 태그 안에 들어있는 input태그들의 값을 컨트롤로 전달 시키는 키워드 : submit

}

document.addEventListener('keydown', function(event) {
	if (event.keyCode === 13) {
		event.preventDefault();
	};
}, true);

var compare_result = false;

function fn_compare_pwd() {



	var pwd1 = $("#mpgpasscheck1").val();

	var pwd2 = $("#mpgpasscheck2").val();

	var $s_result = $("#s_result");

	$s_result.css('visibility', 'visible');

	if (pwd1 == pwd2) {

		compare_result = true;

		$s_result.text("비밀번호가 일치합니다.");

		$s_result.css('color', 'green');
		$('.VgMpg_modify_pwclose').prop("disabled", false);

		return;


	}



	compare_result = false;
	$('.VgMpg_modify_pwclose').prop("disabled", true);

	$s_result.text("비밀번호가 일치하지 않습니다.");
	$s_result.css('color', 'red');

}

//비밀번호변경-현재 비밀번호 check
function fn_compare_cr_pwd1() {



	var pwd1 = $("#crpwcheck1").val();


	var $s_result = $("#s_result1");

	$s_result.css('display', 'inline-block');

	if (pwd == pwd1) {

		compare_result = true;

		$s_result.text("비밀번호가 일치합니다.");

		$s_result.css('color', 'green');
		$('.VgMpg_modify_pwclose').prop("disabled", false);

		return;

	}



	compare_result = false;
	$('.VgMpg_modify_pwclose').prop("disabled", true);


	$s_result.text("비밀번호가 일치하지 않습니다.");
	$s_result.css('color', 'red');

}

//닉네임변경-현재 비밀번호 check
function fn_compare_cr_pwd2() {



	var pwd1 = $("#crpwcheck2").val();


	var $s_result = $("#s_result2");

	$s_result.css('visibility', 'visible');

	if (pwd == pwd1) {

		compare_result = true;

		$s_result.text("비밀번호가 일치합니다.");

		$s_result.css('color', 'green');
		$('.VgMpg_modify_nkclose').prop("disabled", false);

		return;

	}



	compare_result = false;
	$('.VgMpg_modify_nkclose').prop("disabled", true);


	$s_result.text("비밀번호가 일치하지 않습니다.");
	$s_result.css('color', 'red');

}



//비밀번호변경-submit
function Mf_pwsubmit() {
	$('.VgMpg_modify_pwclose').click(function() {
		$('#Mf_pw').submit();
	})
	alert("비밀번호가 변경되었습니다.")

}

//닉네임변경-submit
function Mf_nksubmit() {
	$('.VgMpg_modify_nkclose').click(function() {
		$('#Mf_nk').submit();
	})
	alert("닉네임이 변경되었습니다.")

}

//채식변경-submit
function Mf_vgsubmit() {
	$('.VgMpg_modify_vgclose').click(function() {
		$('#Mf_vg').submit();
	})
	alert("채식종류가 변경되었습니다.")

}

//주소변경-submit
function Mf_addrsubmit() {
	$('.VgMpg_modify_addrclose').click(function() {

		$('#Mf_addr').submit();
	})
	alert("주소가 변경되었습니다.")

}




function sample6_execDaumPostcode1() {

	new daum.Postcode({
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var addr = ''; // 주소 변수
			var extraAddr = ''; // 참고항목 변수

			//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				addr = data.roadAddress;
			} else { // 사용자가 지번 주소를 선택했을 경우(J)
				addr = data.jibunAddress;
			}

			// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			if (data.userSelectedType === 'R') {
				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
				// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraAddr !== '') {
					extraAddr = ' (' + extraAddr + ')';
				}
				// 조합된 참고항목을 해당 필드에 넣는다.
				document.getElementById("sample6_extraAddress1").value = extraAddr;

			} else {
				document.getElementById("sample6_extraAddress1").value = '';
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('sample6_postcode1').value = data.zonecode;
			document.getElementById("sample6_address1").value = addr;
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById("sample6_detailAddress1").focus();
		}
	}).open();
}


function addr_not_null_check() {
	var $woopyeon = $('#sample6_postcode1');
	var $sangsae = $('#sample6_detailAddress1');
	var $text = $('#s_result3');
	
	


}




