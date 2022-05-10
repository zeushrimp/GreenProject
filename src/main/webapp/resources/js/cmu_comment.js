// 댓글 이전코딩
//function fn_commentsubmit(){
//    if ($.trim($("#CCM_CONTENT").val()) == "") {
//        alert("글 내용을 입력해주세요.");
//        $("#CCM_CONTENT").focus();
//        return;
//    }
//    $("#cmu_commentsave").submit();   
//}
//
//// 댓글 삭제
//function fn_commentdelete(CCM_PK){
//    if (!confirm("삭제하시겠습니까?")) {
//        return;
//    }
//    var form = document.updateform;
//
//    form.action="cmu_replydelete.do";
//    form.CCM_PK.value=CCM_PK;
//    form.submit();   
//}
//	

// 댓글 기능
// ajax 구현
$(function(){
	
	$('#comment_btn').click(function(){
	
		var CMU_PK = $('#comment_form').children('input:eq(0)').val()
		var USR_ID = $('#comment_form').children('input:eq(1)').val()
		var CCM_CONTENT = $('#comment_form').children('textarea:eq(0)').val()
		
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
				alert("등록되었습니다.");
			},
			error : function(request, status, error){
				alert("code = " + request.status +" \n error = " + error);
			}
			
		})
	})
	
})

// 	CCM_PK
//CCM_CONTENT
//CCM_REG
//CCM_REF
//CCM_REF_STEP
//CCM_REF_LEVEL
//CCM_DEL
//USR_ID
//CMU_PK
function add_comment_List(dataMap){
	var str = "";
	usrId = dataMap['sess']
	data = dataMap['list']
	
	console.log(usrId);
	console.log(data);
	for ( key in data ){
		console.log(key)
			str += '<li class="comment depth-1">'
			str += '<div class="avatar"><a href="VgMpgMain.do"><img src="/resources/images/avatar.jpg" alt="" /></a></div>'
			str += '<div class="comment-box" style="width:100%; margin-left:'+30*data[key].CCM_REF_LEVEL+'px;">'
			str += '<div class="comment-author meta" style="display:inline-block;"> '
			str += '<strong>'+data[key].USR_ID+'</strong>'+data[key].CCM_REG
			str += '</div>'
			str += '<button class="comment-cmulink" class="rereplybutton" value="댓글">댓글</button>'
			if( usrId == data[key].USR_ID ){
				str += '<button class="comment-cmulink" class="rereplybutton" value="삭제">삭제</button>'
				str += '<button class="comment-cmulink" class="rereplybutton" value="수정">수정</button>'				
			}			
			str += '<div class="comment-text" id="reply_'+data[key].CCM_PK+'">'+data[key].CCM_CONTENT+'</div>'								    
			str += '</div>'
			str += '<div class="rereply_ajax">'
			str += '</div>'
			str += '</li>'
	}
		return str;
	}

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

function fn_replyReplySave(){
    var form = document.recommnetform;

    if (form.CCM_CONTENT.value=="") {
        alert("글 내용을 입력해주세요.");
        form.CCM_CONTENT.focus();
        return;
    }
   
    form.action="cmu_commentsave.do";
    form.submit();   
}

// ajax 카테고리
$(function(){
	$('.catebutton').click(function(e){
		
		var menuSelector = e.target.value;
		
		if( menuSelector == '전체'){
//			alert('전체');
		}else{
//			alert(menuSelector)
			cate_ajax(menuSelector);	
		}
	})
})

// ajax 카테고리
function cate_ajax(menuSelector){	
	$.ajax({
		type: 'post', 
		url: '/cmu/VgCmuList_ajax.do',
		data: {"CMU_CATE" : menuSelector}, // input 태그내의 값
		success: function(data){
//			alert("성공했습니다.");	
			var tag_String = create_cate_list(data);			
			
//			alert(tag_String);
			$('#listForm').html(tag_String) 
		},
		error: function(request,status,error){
			alert("에러났음"+request.status + " \n error" + error);	
		}		
	})	
}

// ajax 카테고리
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

// ajax 대댓글
$(document).on('click', '#rereplybutton', function(e){
		
		var replyClick = e.target.value;
		alert(replyClick);
		
		if(replyClick == '수정'){
			alert('수정');
			// 새로운 ajax 수정창
		}else if(replyClick == '삭제'){
			fn_commentdelete();				
		}else if(replyClick == '댓글'){
			var rereply_string= $('#recommnetform').serialize();
			alert(rereply_string);
			rereply_ajax(rereply_string);
			// 새로운 ajax 댓글창
		}
});

// 대댓글 취소
function fn_replyReplyCancel(){
		var url = "/cmu/VgCmuList.do?CMU_PK=";
		url = url + CMU_PK;
		location.href = url;
}

// ajax 대댓글 작성
function rereply_ajax(rereply_string){
	$.ajax({
		type: 'post', 
		url: '/cmu/VgCmuRereply_ajax.do',
		data: {"recommentform":rereply_string}, // input 태그내의 값
		success: function(data){
			alert("성공했습니다.");
			console.log(typeof data);                                           
			console.log(data);
			var str ="";
			str += '<div class="container" style="margin-top:10px; padding-bottom: 10px;">'
			str += '<p class="rereply_ajax"><span class="req">*</span><strong>주의 :</strong> 댓글로 인해 타인의 기분을 상하게 하는 게시물의 내용은 삼가주시길바랍니다. <span class="req">*</span></p>'
			str += '<form name="recommnetform" id="recommnetform" action="cmu_commentsave.do" method="post">'
			str += '<!-- 여기서 할 일, 아이디 세션 받고 게시물 번호 받고(히든) -->'
			str += '<div class="f-row">'
			str += '<!-- 게시글 번호 받음 -->'
			str += '<input type="hidden" id="CMU_PK" name="CMU_PK" value="'+data+'">'
			str += '<input type="hidden" id="USR_ID" name="USR_ID" value="'+data+'">'
			str += '<input type="hidden" id="CCM_REF" name="CCM_REF">'
			str += '<textarea id="CCM_CONTENT" name="CCM_CONTENT" placeholder="댓글을 작성해주세요."></textarea>'
			str += '</div>'
												
			str += '<div>'
			str += '<!-- 수정, 취소 -->'
			str += '<a class="reply-cmulink" onclick="fn_replyReplySave()">댓글 작성</a>'
			str += '<a class="reply-cmulink" onclick="fn_replyReplyCancel()">취소</a>'
			str += '</div>'
			str += '</form>'
			str += '</div>';
			$(".rereply_ajax").after(str);
				
		},
		error: function(request,status,error){
			alert("에러났음"+request.status + " \n error" + error);	
		}		
	})	
}
