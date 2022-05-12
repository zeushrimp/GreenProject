// 페이지 이전 버튼
function fn_prev(page, range, rangesize, listsize, searchtype, keyword) {
		
	var page = ((range - 2) * rangesize) + 1;
	var range = range - 1;
		
	var url = "/VgCmuList.do";
	url = url + "?page=" + page;
	url = url + "&range=" + range;
	url = url + "&listsize=" + listsize;
	url = url + "&searchtype=" + searchtype;
	url = url + "&keyword=" + keyword;
	location.href = url;
	}

// 페이지 번호 클릭
function fn_pagination(page, range, rangesize, listsize, searchtype, keyword) {

	var url = "/cmu/VgCmuList.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&listsize=" + listsize;
		url = url + "&searchtype=" + searchtype;
		url = url + "&keyword=" + keyword; 

		location.href = url;	
	}

// 페이지다음 버튼
// 다음 페이지 범위의 가장 앞 페이지로 이동
function fn_next(page, range, rangesize, listsize, searchtype, keyword) {
	var page = parseInt((range * rangesize)) + 1;
	var range = parseInt(range) + 1;			
	var url = "/cmu/VgCmuList.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&listsize=" + listsize;
		url = url + "&searchtype=" + searchtype;
		url = url + "&keyword=" + keyword;
		location.href = url;
	}

/* 검색 */
$(document).on('click', '#btnSearch', function(e){
	e.preventDefault();
	console.log(e)
	var url = "/cmu/VgCmuList.do";
	url = url + "?searchtype=" + $('#searchtype').val();
	url = url + "&keyword=" + $('#keyword').val();
	url = url + "&listsize=" + 8;
	location.href = url;
	console.log(url);
});

// ajax 카테고리(전체 or 분류)
$(function(){
	$('.catebutton').click(function(e){		
		var menuSelector = e.target.value;		
		if( menuSelector == '전체'){
		}else{
			cate_ajax(menuSelector);	
		}
	})
})

// ajax 카테고리(controller)
function cate_ajax(menuSelector){	
	$.ajax({
		type: 'post', 
		url: '/cmu/VgCmuList_ajax.do',
		data: {"CMU_CATE" : menuSelector}, // input 태그내의 값
		success: function(data){
			var tag_String = create_cate_list(data);			
			$('#listForm').html(tag_String) 
		},
		error: function(request,status,error){
			alert("에러났음"+request.status + " \n error" + error);	
		}		
	})	
}

// ajax 카테고리 분류 화면
function create_cate_list(data){	
	var str = "";
//	console.log(typeof data);                                           
//	console.log(data);
	for ( cmuvo in data ){
//		console.log(typeof data[cmuvo]);
//		console.log(data[cmuvo].CMU_PK);
		
		str += '<div class="entry one-third">';
		str += '<figure>'
		str += '<img src="/resources/images/img.jpg" alt="" /> <!-- 이미지 가져오는 걸로 -->'
		str += '<!-- 상세 페이지 가는 링크 -->'
		str += '<figcaption>'
		str += '<a href="/cmu/VgCmuDtail.do?CMU_PK='+data[cmuvo].CMU_PK+'"></a>'
		str += '<i class="icon icon-themeenergy_eye2"></i> <span>글보기</span></a>'
		str += '</figcaption>'
		str += '</figure>'
		str += '<div class="container">'
		str += '<!-- 상세 페이지 가는 링크 -->'
		str += '<h2>'
		str += '<a href="/cmu/VgCmuDtail.do?CMU_PK='+data[cmuvo].CMU_PK+'">'+data[cmuvo].CMU_TITLE+'</a>'
		str += '</h2>'
		str += '<div class="actions">'
		str += '<div>'
		str += '<div class="difficulty" style="width: 200px; border-right: none !important;">'
		str += '<i class="ico i-medium"></i><a href="/cmu/VgCmuDtail.do?CMU_PK='+data[cmuvo].CMU_PK+'">'+data[cmuvo].USR_ID+'</a>'
		str += '</div>'
		str += '<div class="comments">'
		str += '<i class="fa fa-comment"></i><a href="/cmu/VgCmuDtail.do?CMU_PK='+data[cmuvo].CMU_PK+'">${replycount}</a>'
		str += '</div>'
		str += '<div class="likes">'
		str += '<i class="fa fa-heart"></i><a href="/cmu/VgCmuDtail.do?CMU_PK='+data[cmuvo].CMU_PK+'">0</a>'
		str += '</div>'
		str += '</div>'
		str += '</div>'
		str += '</div>'
		str += '</div>';
		
	}	
	return str;
}

// 댓글 ajax 구현
$(function(){	
	$('#comment_btn').click(function(){
	
		var CMU_PK = $('#comment_form').children('input:eq(0)').val() /* 게시판 번호 */
		var USR_ID = $('#comment_form').children('input:eq(1)').val() /* 유저 아이디 */
		var CCM_CONTENT = $('#comment_form').children('textarea:eq(0)').val() /* 댓글 내용 */
		
		$.ajax({
			type:"POST",
			url:"/cmu/cmu_commentsave.do",
			data : {
				"CMU_PK" : CMU_PK,
				"USR_ID" : USR_ID,
				"CCM_CONTENT" : CCM_CONTENT
			},
			success : function(dataMap){				
				console.log(dataMap)
				var add_comment_string = add_comment_List(dataMap)
				
				$('.comment-list').html(add_comment_string);
				$('#comment_form').children('textarea:eq(0)').val('');
				alert("댓글이 등록되었습니다.");
			},
			error : function(request, status, error){
				alert("code = " + request.status +" \n error = " + error);
			}
			
		})
	})
	
})

// 댓글 작성 리스트
function add_comment_List(dataMap){
	var str = "";
	usrId = dataMap['sess']
	data = dataMap['list']
	
	console.log($('#comments').children('h2').text(data.length+ ' comments'));
	
	console.log(usrId);
	console.log(data);
	for ( key in data ){
		console.log(key)
			str += '<li class="comment depth-1">'
			str += '<div class="avatar"><a href="VgMpgMain.do"><img src="/resources/images/avatar.jpg" alt="" /></a></div>'
			str += '<div class="comment-box" id="reply_'+data[key].CCM_PK+'" style="width:100%; margin-left:'+30*data[key].CCM_REF_LEVEL+'px;">'
			str += '<div class="comment-author meta" style="display:inline-block;"> '
			str += '<strong>'+data[key].USR_ID+'</strong>'+data[key].CCM_REG
			str += '</div>'
			str += '<button class="comment-cmulink" onclick="rereply_comment()" value="댓글">댓글</button>'
			if( usrId == data[key].USR_ID ){
				str += '<button class="comment-cmulink" onclick="rereplydelete('
				str += data[key].CMU_PK, data[key].CCM_PK,data[key].USR_ID;
				str += ')" value="삭제">삭제</button>'
				str += '<button class="comment-cmulink onclick="rereplyupdate('
				str += data[key].CMU_PK, data[key].CCM_PK, data[key].USR_ID, data[key].CCM_REG, data[key].CCM_CONTENT, data[key].CCM_REF_LEVEL;
				str += ')" value="수정">수정</button>'				
			}			
			str += '<div class="comment-text" id="reply_'+data[key].CCM_PK+'">'+data[key].CCM_CONTENT+'</div>'								    
			str += '</div>'
			str += '<div class="rereply_ajax">'
			str += '</div>'
			str += '</li>'
	}
		return str;
	}

//ajax 댓글 수정창
function rereplyupdate(CMU_PK, CCM_PK, USR_ID, CCM_REG, CCM_CONTENT, CCM_REF_LEVEL){
	alert("댓글을 수정해주세요.");
	console.log("댓글 수정");
	
	var str = "";
	
	str += '<div class="comment-box" id="reply_'+CCM_PK+'" style="width:100%; margin-left:'+30*CCM_REF_LEVEL+'px;">'
	str += '<div class="comment-author meta" style="display:inline-block;"> '
	str += '<strong>'+USR_ID+'</strong>'+CCM_REG
	str += '</div>'
	str += '<input type="hidden" name="CMU_PK" value="'+CMU_PK+'">'
	str += '<input type="hidden" name="USR_ID" value="'+USR_ID+'">'
	str += '<button class="comment-cmulink" onclick="rereply_update_cancel_btn(\''+CMU_PK+'\',\''+CCM_PK+'\',\''+USR_ID+'\')" value="수정취소">수정취소</button>'
	str += '<button class="comment-cmulink" onclick="rereply_update_btn(\''+CMU_PK+'\',\''+CCM_PK+'\',\''+USR_ID+'\')" value="수정완료">수정완료</button>'					
	str += '<textarea class="comment-text" style="height:40px; width:85% !important;" id="reply_box_'+CCM_PK+'">'+CCM_CONTENT+'</textarea>'								    
	str += '</div>'
	str += '<div class="rerepl`	`y_ajax">'
	str += '</div>'
	str += '</li>'
	
	var replyEdit = '#reply_'+CCM_PK;
	$(replyEdit).replaceWith(str);
};

//ajax 댓글 수정 확인
function rereply_update_btn(CMU_PK,CCM_PK,USR_ID){
	
	var textAreaEdit = '#reply_box_'+CCM_PK;
	var CCM_CONTENT = $(textAreaEdit).val(); //$(#'')
	
	$.ajax({
		url: '/cmu/cmu_replyupdate.do',
		type: 'POST',
		data: {
				"CMU_PK" : CMU_PK,
				"CCM_PK" : CCM_PK,
				"USR_ID" : USR_ID,
				"CCM_CONTENT" : CCM_CONTENT 
				},
		success: function(data){
			console.log(data)
			var add_comment_string = add_comment_List(data)
			
			$('.comment-list').html(add_comment_string);
			$('#comment_form').children('textarea:eq(0)').val('');
			alert("댓글이 수정되었습니다.");
		}, 
		error: function(request,status,error){
			alert("에러났습니다."+request.status + " \n error" + error);	
		}
								
	});
};

//ajax 댓글 수정 취소
function rereply_update_cancel_btn(CMU_PK,CCM_PK,USR_ID){		
	$.ajax({
		url: '/cmu/cmu_reply_update_cancel.do',
		type: 'POST',
		data: {
				"CMU_PK" : CMU_PK,
				"CCM_PK" : CCM_PK,
				"USR_ID" : USR_ID
				},
		success: function(data){
			console.log(data)
			var add_comment_string = add_comment_List(data)
			
			$('.comment-list').html(add_comment_string);
			$('#comment_form').children('textarea:eq(0)').val('');
		}, 
		error: function(request,status,error){
			alert("에러났습니다."+request.status + " \n error" + error);	
		}								
	});
};

//ajax 댓글 삭제창
function rereplydelete(CMU_PK,CCM_PK,USR_ID){
	alert("댓글을 삭제하겠습니다.");
	console.log("댓글 삭제");	
	$.ajax({
		url: '/cmu/cmu_replydelete.do',
		type: 'POST',
		data: {
				"CMU_PK" : CMU_PK,
				"CCM_PK" : CCM_PK,
				"USR_ID" : USR_ID
				},
		success: function(data){
			console.log(data)
			var add_comment_string = add_comment_List(data)
			
			$('.comment-list').html(add_comment_string);
			$('#comment_form').children('textarea:eq(0)').val('');
			alert("댓글이 삭제되었습니다.");
		}, 
		error: function(request,status,error){
			alert("에러났습니다."+request.status + " \n error" + error);	
		}
								
	});
};

// ajax 대댓글 작성창
function rereply_comment(CMU_PK,CCM_PK,USR_ID){
	alert("댓글을 입력해주세요.");
	console.log("대댓글");
	
	var str ="";
	str += '<div class="container" style="margin-top:10px; padding-bottom: 10px;">'
	str += '<p class="rereply_ajax"><span class="req">*</span><strong>주의 :</strong> 댓글로 인해 타인의 기분을 상하게 하는 게시물의 내용은 삼가주시길바랍니다. <span class="req">*</span></p>'
	str += '<form name="recommnetform" id="recommnetform" action="cmu_commentsave.do" method="post">'
	str += '<div class="f-row">'
	str += '<input type="hidden" id="CMU_PK" name="CMU_PK" value="'+CMU_PK+'">'
	str += '<input type="hidden" id="USR_ID" name="USR_ID" value="'+USR_ID+'">'
	str += '<input type="hidden" id="CCM_REF" name="CCM_REF">'
	str += '<textarea id="CCM_CONTENT" name="CCM_CONTENT" placeholder="댓글을 작성해주세요."></textarea>'
	str += '</div>'
										
	str += '<div>'
	str += '<a class="reply-cmulink" onclick="fn_replyReplySave()">댓글 작성</a>'
	str += '<a class="reply-cmulink" onclick="rereply_update_cancel_btn(\''+CMU_PK+'\',\''+CCM_PK+'\',\''+USR_ID+'\')">취소</a>'
	str += '</div>'
	str += '</form>'
	str += '</div>';
	
	var replyEdit = '.rereply_ajax_'+CCM_PK;
	$(replyEdit).replaceWith(str);
	
};

// ajax 대댓글 작성(controller)
// ajax 타서 대댓글 쓰는데 이건 그냥 매퍼 정리하면 될 듯
