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
		$('#testssss').innerHTML="비밀번호가 맞지 않습니다."
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






