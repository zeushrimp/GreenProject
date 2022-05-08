// 1. jsp 파일에서 뭔 버튼이나 그런거 딱 눌럿을때 onclick? 그런걸 js로 해야댐

// 뭐 누르면 뭐 나오는지
$(function(){
	$('.active').click(function(e){
		// active 클래스에 있는 뭐 클릭하면 아래의 코드들이 실행되는 거임
		var menuSelector = e.target.text;
		// 일단 menuSelector라는 변수에 active 클래스의 value 값을 대입한다
		if( menuSelector == '회원관리'){ // 그래서 그 value 값이 '회원관리'와 같으면
/*            admin_userinfo_ajax(menuSelector); // admin_userinfo_ajax 함수를 호출한다*/
		}else if(menuSelector == '레시피 관리'){ // 근데 그 value 값이 '레시피 관리'와 같으면
			admin_rcp_ajax(menuSelector);	  // admin_rcp_ajax 함수를 호출한다
		}else if (menuSelector == '커뮤니티 관리'){ // 근데 그 value 값이 '커뮤니티 관리'와 같으면
            admin_cmu_ajax(menuSelector);     // admin_cmu_ajax 함수를 호출한다
        }
	})
})

// '회원관리' 관련 데이터를 불러올 함수이다.
function admin_userinfo_ajax(menuSelector){
	
	$.ajax({
		type: 'get', // type = 데이터를 전달하는 방식. 'get'은 select 성능 좋음. 파라미터 url 노출 / post는 보안이 좀더낫고 파라미터 노출 x
		url: '/adm/vg_admin_userinfo_ajax.do', // 컨트롤러의 requestMapping에 적혀진 값과 매칭시켜야 한다.
		data: {"userinfo_ad_ajax" : menuSelector}, // "폼 데이터 변수 이름" : form 태그의 id에 해당하는 뭐를 넣어준 변수> menuSelector
		success: function(data){ // ajax 진입 성공 시? 수행될 함수를 적어준다. 파라미터로는 바로 윗줄에 쓴 data 라는 값을 넣어줌
			var tag_string_userinfo = create_admin_userinfo_list(data);
			// tag_String이라는 변수에 create_admin_userinfo_list(data)함수의 리턴값을 대입해준다
			
//			alert(tag_String);
			$('#userinfo_ad_ajax').html(tag_string_userinfo);
            // 그냥 내 생각인데 active 클래스의 html 태그들을 tag_String에 담겨진 값으로 가공하려는 코딩인듯

		},
		error: function(request,status,error){ // ajax 진입인데 에러 시?
			alert("에러났음"+request.status + " \n error" + error);	
		}		
	})	
}

// '레시피 관리' 관련 데이터를 불러올 함수이다.
function admin_rcp_ajax(menuSelector){
	
	$.ajax({
		type: 'post', 
		url: '/adm/select_rcp_list_ad_ajax.do',
		data: {"rcp_list_ad_ajax" : menuSelector}, // input 태그내의 값
		success: function(data){
//			alert("우선 레시피 ajax 진입은 성공했습니다.");	
			var tag_string_rcp = create_admin_rcp_list(data);		
//			alert(tag_string_rcp);
			$('#rcp_list_ad_ajax').html(tag_string_rcp); 
//			$('#rcp_list_ad_ajax').append(str);			
			
		},
		error: function(request,status,error){
			alert("에러났음"+request.status + " \n error" + error);	
		}		
	})	
}

// '커뮤니티 관리' 관련 데이터를 불러올 함수이다.
function admin_cmu_ajax(menuSelector){
	
	$.ajax({
		type: 'post', 
		url: '/adm/select_cmu_list_ad_ajax.do',
		data: {"cmu_list_ad_ajax" : menuSelector}, // input 태그내의 값
		success: function(data){
//			alert("일단 커뮤니티 ajax 진입은 성공했습니다.");	
			var tag_string_cmu = create_admin_cmu_list(data);
			
			
//			alert(tag_string_cmu);
			$('#cmu_list_ad_ajax').html(tag_string_cmu);
		},
		error: function(request,status,error){
			alert("에러났음"+request.status + " \n error" + error);	
		}		
	})	
}


// 유저 info 관련 리스트를 추출할 함수
// 이거를 써야되는지? 이게 지금 유저 info가 관리자 페이지 첫화면이라 안써도 되는지?
function create_admin_userinfo_list(data){
	
	var str = "";
//	console.log(typeof data);                                           
//	console.log(data);
	for ( usrvo in data ){
//		console.log(typeof data[cmuvo]);
//		console.log(data[cmuvo].CMU_PK);
		
		str += '<td style="width:95px">'
		str += '<input type="textarea" class="USR_NAME" value="'+data[usrvo].USR_NAME+'" style="width: 100%; padding-left: 0; padding-right: 0;">'
		str += '<input type="hidden" class="USR_ID" value="'+data[usrvo].USR_ID+'"></td>'
		str += '<td style="width:150px"><input type="textarea" class="USR_EMAIL" value="'+data[usrvo].USR_EMAIL+'" style="width: 100%; padding-left: 0; padding-right: 0;"></td>'
		str += '<td style="width:150px"><input type="textarea" class="USR_PW" value="'+data[usrvo].USR_PW+'" style="width: 100%; padding-left: 0; padding-right: 0;"></td>'
//		str += '<td style="width:300px"><span class="text1">${vo.USR_ADDR2 }</span>'
//		str += '<input type="button" onclick="sample6_execDaumPostcode('${status.index}')" value="주소 변경" style="height:24px; background: none !important; border:none !important; float:right; color: #444; padding-bottom: 5px; padding-top: 5px;">'
		str += '<input type="hidden"  class="sample6_postcode USR_ADDR1" value="'+data[usrvo].USR_ADDR1+'"/>'
		str += '<input type="hidden" class="sample6_address USR_ADDR2" value="'+data[usrvo].USR_ADDR2+'">'
		str += '<input type="text"  class="sample6_detailAddress USR_ADDR3" placeholder="상세주소" value="'+data[usrvo].USR_ADDR3+'">'
		str += '<input type="hidden" class="sample6_extraAddress" placeholder="참고항목">'
		str += '</td>'
		str += '<td style="width:140px"><input type="textarea" class="USR_TEL" value="'+data[usrvo].USR_TEL+'" style="width: 100%; padding-left: 0; padding-right: 0;"></td>'
		str += '<td style="width:140px">'+data[usrvo].USR_DATE+'</td>'
		str += '<td style="width:100px">100</td>'
		str += '<td style="width:75px">10</td>'
		str += '<td style="width:90px">10</td>'
		str += '<td style="width:90px;">'
//		str += '<input type="button"  onclick="submit_item('${status.index}')" style="width: 100%; padding-left: 0; padding-right: 0; background: none !important; border:none !important; color: #444;" value="수정">'
		str += '</td>'
		str += '<td style="width:90px;">'
		str += '<a type="button" style="width: 100%; padding-left: 0; padding-right: 0; background: none !important; border:none !important; color: #444;" href="delete_usr_info.do?USR_ID='+data[usrvo].USR_ID+'&USR_PW='+data[usrvo].USR_PW+'">'
		str += '삭제'
		str += '</a>'
		str += '</td>';
		
	}
	
	return str;
}

// 레시피 관련 리스트를 추출할 함수
function create_admin_rcp_list(data){
	
	var str = "";
	str += '<table style="width:90%; margin: auto;" >'
	str += '<th style="text-align: center">레시피 번호</th>'
	str += '<th style="text-align: center">레시피 제목</th>'
	str += '<th style="text-align: center">작성자</th>'
	str += '<th style="text-align: center">작성일</th>'
	str += '<th style="text-align: center">신고 횟수</th>'


	for ( rcpvo in data ){
	
		str += '<tr>'
		str += '<td style="width:20%">'+data[rcpvo].RCP_PK+'</td>'
		str += '<td style="width:30%">'+data[rcpvo].RCP_TITLE+'</td>'
		str += '<td style="width:20%">'+data[rcpvo].USR_ID+'</td>'
		str += '<td style="width:30%">'+data[rcpvo].RCP_REG+'</td>'
		str += '<td style="width:40%">123456789</td>'
		str += '</tr>'
	
		
	}	
	
	str += '</table>'
	
	return str;
}

// 커뮤니티 관련 리스트를 추출할 함수
function create_admin_cmu_list(data){
	
	var str = "";
	str += '<table style="width:90%; margin: auto;" >'
	str += '<tr>'
	str += '<th style="text-align: center">글 번호</th>'
	str += '<th style="text-align: center">제목</th>'
	str += '<th style="text-align: center">작성자</th>'
	str += '<th style="text-align: center">작성일</th>'
	str += '<th style="text-align: center">좋아요 수</th>'
	str += '</tr>'


	for ( cmuvo in data ){	
		str += '<tr>'
		str += '<td style="width:20%">'+data[cmuvo].CMU_PK+'</td>'
		str += '<td style="width:30%">'+data[cmuvo].CMU_TITLE+'</td>'
		str += '<td style="width:10%">'+data[cmuvo].USR_ID+'</td>'
		str += '<td style="width:30%">'+data[cmuvo].CMU_REG+'</td>'
		str += '<td style="width:30%">'+data[cmuvo].CMU_LIKE+'</td>'
		str += '</tr>'
	}
	
//	$('#cmu_list_ad_ajax').append(str);
	
	str += '</table>'
	
	return str;
}


