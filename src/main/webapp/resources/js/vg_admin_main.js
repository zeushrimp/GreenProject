

// 뭐 누르면 뭐 나오는지
$(function(){
	$('.active').click(function(e){
		// active 클래스에 있는 뭐 클릭하면 아래의 코드들이 실행되는 거임
		var menuSelector = e.target.text;
		
		// 일단 menuSelector라는 변수에 active 클래스의 value 값을 대입한다
		if( menuSelector == '회원관리'){ // 그래서 그 value 값이 '회원관리'와 같으면
/*            admin_userinfo_ajax(menuSelector); // admin_userinfo_ajax 함수를 호출한다*/
		}else if(menuSelector == '레시피 관리'){ // 근데 그 value 값이 '레시피 관리'와 같으면
				admin_rcp_ajax(menuSelector,1,20);	  // admin_rcp_ajax 함수를 호출한다 ()
		}else if (menuSelector == '커뮤니티 관리'){ // 근데 그 value 값이 '커뮤니티 관리'와 같으면
           	 	admin_cmu_ajax(menuSelector);     // admin_cmu_ajax 함수를 호출한다
        }
	})
})

//// '회원관리' 관련 데이터를 불러올 함수이다.
//function admin_userinfo_ajax(menuSelector){
//	
//	$.ajax({
//		type: 'get', // type = 데이터를 전달하는 방식. 'get'은 select 성능 좋음. 파라미터 url 노출 / post는 보안이 좀더낫고 파라미터 노출 x
//		url: '/adm/vg_admin_userinfo_ajax.do', // 컨트롤러의 requestMapping에 적혀진 값과 매칭시켜야 한다.
//		data: {"userinfo_ad_ajax" : menuSelector}, // "폼 데이터 변수 이름" : form 태그의 id에 해당하는 뭐를 넣어준 변수> menuSelector
//		success: function(data){ // ajax 진입 성공 시? 수행될 함수를 적어준다. 파라미터로는 바로 윗줄에 쓴 data 라는 값을 넣어줌
//			var tag_string_userinfo = create_admin_userinfo_list(data);
//			// tag_String이라는 변수에 create_admin_userinfo_list(data)함수의 리턴값을 대입해준다
//			
////			alert(tag_String);
//			$('#userinfo_ad_ajax').html(tag_string_userinfo);
//            // 그냥 내 생각인데 active 클래스의 html 태그들을 tag_String에 담겨진 값으로 가공하려는 코딩인듯
//
//		},
//		error: function(request,status,error){ // ajax 진입인데 에러 시?
//			alert("에러났음"+request.status + " \n error" + error);	
//		}		
//	})	
//}

//function fn_move_page(){
//	
//	admin_rcp_ajax(menuSelector, now_page);
//}

// 페이지 버튼 눌렀을때 그 페이지 뜨게 함 일단 임시로
//$(function test(){	
//	$('.current').click(function(e){
//	
//        var now_page = e.target.text;
//
//        alert(now_page);
//
//		})
//	
//})
//


// '레시피 관리' 관련 데이터를 불러올 함수이다.
function admin_rcp_ajax(menuSelector,now_page,cnt_per_page){
	alert(now_page)
	alert(cnt_per_page)

	$.ajax({
		type: 'post', 
		url: '/adm/select_rcp_list_ad_ajax.do',
		data: {"rcp_list_ad_ajax" : menuSelector,
				"now_page" : now_page,
				"cnt_per_page" : cnt_per_page
		       }, // input 태그내의 값
		success: function(data){
			var tag_string_rcp = create_admin_rcp_list(data);
			alert(data)	
			$('#rcp_list_ad_ajax').html(tag_string_rcp); 
	
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
			var tag_string_cmu = create_admin_cmu_list(data);
			$('#cmu_list_ad_ajax').html(tag_string_cmu);
		},
		error: function(request,status,error){
			alert("에러났음"+request.status + " \n error" + error);	
		}		
	})	
}


//// 유저 info 관련 리스트를 추출할 함수
//// 이거를 써야되는지? 이게 지금 유저 info가 관리자 페이지 첫화면이라 안써도 되는지?
//function create_admin_userinfo_list(data){
//	
//	var str = "";
////	console.log(typeof data);                                           
////	console.log(data);
//	for ( usrvo in data ){
////		console.log(typeof data[cmuvo]);
////		console.log(data[cmuvo].CMU_PK);
//		
//		str += '<td style="width:95px">'
//		str += '<input type="textarea" class="USR_NAME" value="'+data[usrvo].USR_NAME+'" style="width: 100%; padding-left: 0; padding-right: 0;">'
//		str += '<input type="hidden" class="USR_ID" value="'+data[usrvo].USR_ID+'"></td>'
//		str += '<td style="width:150px"><input type="textarea" class="USR_EMAIL" value="'+data[usrvo].USR_EMAIL+'" style="width: 100%; padding-left: 0; padding-right: 0;"></td>'
//		str += '<td style="width:150px"><input type="textarea" class="USR_PW" value="'+data[usrvo].USR_PW+'" style="width: 100%; padding-left: 0; padding-right: 0;"></td>'
////		str += '<td style="width:300px"><span class="text1">${vo.USR_ADDR2 }</span>'
////		str += '<input type="button" onclick="sample6_execDaumPostcode('${status.index}')" value="주소 변경" style="height:24px; background: none !important; border:none !important; float:right; color: #444; padding-bottom: 5px; padding-top: 5px;">'
//		str += '<input type="hidden"  class="sample6_postcode USR_ADDR1" value="'+data[usrvo].USR_ADDR1+'"/>'
//		str += '<input type="hidden" class="sample6_address USR_ADDR2" value="'+data[usrvo].USR_ADDR2+'">'
//		str += '<input type="text"  class="sample6_detailAddress USR_ADDR3" placeholder="상세주소" value="'+data[usrvo].USR_ADDR3+'">'
//		str += '<input type="hidden" class="sample6_extraAddress" placeholder="참고항목">'
//		str += '</td>'
//		str += '<td style="width:140px"><input type="textarea" class="USR_TEL" value="'+data[usrvo].USR_TEL+'" style="width: 100%; padding-left: 0; padding-right: 0;"></td>'
//		str += '<td style="width:140px">'+data[usrvo].USR_DATE+'</td>'
//		str += '<td style="width:100px">100</td>'
//		str += '<td style="width:75px">10</td>'
//		str += '<td style="width:90px">10</td>'
//		str += '<td style="width:90px;">'
////		str += '<input type="button"  onclick="submit_item('${status.index}')" style="width: 100%; padding-left: 0; padding-right: 0; background: none !important; border:none !important; color: #444;" value="수정">'
//		str += '</td>'
//		str += '<td style="width:90px;">'
//		str += '<a type="button" style="width: 100%; padding-left: 0; padding-right: 0; background: none !important; border:none !important; color: #444;" href="delete_usr_info.do?USR_ID='+data[usrvo].USR_ID+'&USR_PW='+data[usrvo].USR_PW+'">'
//		str += '삭제'
//		str += '</a>'
//		str += '</td>';
//		
//	}
//	
//	return str;
//}

// 레시피 관련 리스트를 추출할 함수
function create_admin_rcp_list(data){	
	
	var str = "";

	var rcpvoList = data['rcpvo']
	var pagnig = data['pagnig']
	alert("태그생성");
	str += '<table style="width:90%; margin: auto;" >'
	str += '<th style="text-align: center">레시피 번호</th>'
	str += '<th style="text-align: center">레시피 제목</th>'
	str += '<th style="text-align: center">작성자</th>'
	str += '<th style="text-align: center">작성일</th>'
	str += '<th style="text-align: center">채식 타입</th>'
	

	for ( rcpvo in rcpvoList ){ 
		str += '<tr>'
		str += '<td style="width:100px">'+rcpvoList[rcpvo].RCP_PK+'</td>'
		str += '<td style="width:400px">'+rcpvoList[rcpvo].RCP_TITLE+'</td>'
		str += '<td style="width:100px">'+rcpvoList[rcpvo].USR_ID+'</td>'
		str += '<td style="width:100px">'+rcpvoList[rcpvo].RCP_REG+'</td>'
		str += '<td style="width:90px">'+rcpvoList[rcpvo].RCP_VEGE+'</td>'
		str += '</tr>'	
	}
	
	str += '</table>'
	str += '<div class="pager">'
	if( pagnig.start_page != 1 ){
				
//    str += '<a href="/adm/select_rcp_list_ad_ajax.do?now_page=' + pagnig.start_page - 1 + '&cnt_per_page=' + pagnig.cnt_per_page + '>&lt;</a>'
	  str += '<a href="javascript:void(0);" name="cnt_per_page" onclick="admin_rcp_ajax(\'레시피 관리\', '+ pagnig.start_page-1 +', '+ pagnig.cnt_per_page +')">&lt;</a>'
	
	}
	for (var pagenum = pagnig.start_page; pagenum <= pagnig.end_page; pagenum++ ){
    if(pagenum == pagnig.now_page){
        str += '<a class="current" name="now_page">' + pagenum + '</a>'
    }else if (pagenum != pagnig.now_page){
        str += '<a href="javascript:void(0);" class="paging_num" name="cnt_per_page" onclick="admin_rcp_ajax(\'레시피 관리\', '+pagenum+', '+pagnig.cnt_per_page+')">' 
        str += pagenum + '</a>'
    }
	}
	if(pagnig.end_page != pagnig.last_page){
//    str += '<a href="/adm/select_rcp_list_ad_ajax.do?now_page='
//    str += pagnig.end_page+1 + '&cnt_per_page=' + pagnig.cnt_per_page + ' ">&gt;</a>'
	str += '<a href="javascript:void(0);" onclick="admin_rcp_ajax(\'레시피 관리\', '+pagnig.end_page+1+', '+pagnig.cnt_per_page+')">&gt;</a>'

	}


//	str += '</table>'
//	str += '<div class="pager">'
//	if( pagnig.start_page != 1 ){		
//    str += '<a href="/adm/select_rcp_list_ad_ajax.do?now_page=' + pagnig.start_page - 1 + '&cnt_per_page=' + pagnig.cnt_per_page + '&lt;</a>'
//	}
//	for (var pagenum = pagnig.start_page; pagenum <= pagnig.end_page; pagenum++ ){
//    if(pagenum == pagnig.now_page){
//        str += '<a class="current" name="now_page">' + pagenum + '</a>'
//    }else if (pagenum != pagnig.now_page){
//        str += '<a href="javascript:void(0);" class="paging_num" onclick="admin_rcp_ajax(\'레시피 관리\', '+pagenum+', '+cnt_per_page+')">' 
//        str += pagenum + '</a>'
//    }
//	}
//	if(pagnig.end_page != pagnig.last_page){
//    str += '<a href="/adm/select_rcp_list_ad_ajax.do?now_page='
//    str += pagnig.end_page+1 + '&cnt_per_page=' + pagnig.cnt_per_page + ' ">&gt;</a>'
//
//	}






	//	str += '<c:forEach begin=' + pagnig.start_page + 'end=' + pagnig.end_page + 'var="pagenum">'
	//	str += '<c:choose>'
	//	str += '<c:when test=" ' + 'pagenum ==' + pagnig.now_page + ' ">'
	//	str += '<a class="current">' + 'pagenum' + '</a>'
	//	str += '</c:when>'
	//	str += '<c:when test=" ' + 'pagenum !=' + pagnig.now_page + ' ">'
	//	str += '<a href="/adm/select_rcp_list_ad_ajax.do?now_page=pagenum' + '&cnt_per_page=' + pagnig.cnt_per_page + 'class="paging_num">' 
	//	str += 'pagenum </a>'
	//	str += '</c:when>'
	//	str += '</c:choose>'
	//	str += '</c:forEach>'
	//	str += '<c:if test=" ' + pagnig.end_page != pagnig.last_page + ' ">'
	//	str += '<a href="/adm/select_rcp_list_ad_ajax.do?now_page='
	//	str += pagnig.end_page+1 + '&cnt_per_page=' + pagnig.cnt_per_page + ' ">&gt;</a>'
	//	str += '</c:if>'
	//	str += '</div>'



	
	return str;
}

// 커뮤니티 관련 리스트를 추출할 함수
function create_admin_cmu_list(data){
	var str = "";
	var cmuvoList = data['cmuvo']
	var pagnig = data['pagnig']

	
	str += '<table style="width:90%; margin: auto;" >'
	str += '<th style="text-align: center">게시글 번호</th>'
	str += '<th style="text-align: center">글 제목</th>'
	str += '<th style="text-align: center">작성자</th>'
	str += '<th style="text-align: center">작성일</th>'
	str += '<th style="text-align: center">신고 수</th>'
	

	for ( cmuvo in cmuvoList ){ 
		str += '<tr>'
		str += '<td style="width:100px">'+cmuvoList[cmuvo].CMU_PK+'</td>'
		str += '<td style="width:400px">'+cmuvoList[cmuvo].CMU_TITLE+'</td>'
		str += '<td style="width:100px">'+cmuvoList[cmuvo].USR_ID+'</td>'
		str += '<td style="width:100px">'+cmuvoList[cmuvo].CMU_REG+'</td>'
		str += '<td style="width:100px">'+cmuvoList[cmuvo].CMU_REPORT+'</td>'
		str += '</tr>'	
	}
	
	
	str += '</table>'
	str += '<div class="pager">'
	if( pagnig.start_page != 1 ){
    str += '<a href="/adm/select_cmu_list_ad_ajax.do?now_page=' + pagnig.start_page - 1 + '&cnt_per_page=' + pagnig.cnt_per_page + '&lt;</a>'
	}
	for (var pagenum = pagnig.start_page; pagenum <= pagnig.end_page; pagenum++ ){
    if(pagenum == pagnig.now_page){
        str += '<a class="current">' + pagenum + '</a>'
    }else if (pagenum != pagnig.now_page){
        str += '<a href="/adm/select_cmu_list_ad_ajax.do?now_page='+pagenum + '&cnt_per_page=' + pagnig.cnt_per_page + ' "class="paging_num">' 
        str += pagenum + '</a>'
    }
	}
	if(pagnig.end_page != pagnig.last_page){
    str += '<a href="/adm/select_cmu_list_ad_ajax.do?now_page='
    str += pagnig.end_page+1 + '&cnt_per_page=' + pagnig.cnt_per_page + ' ">&gt;</a>'

	}
	
	return str;

}


